using DataBaseManager;
using DataBaseManager.Operations;
using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.ServiceModel;

namespace HiveGameService.Services
{
    public partial class HiveGameService : ILobbyManager
    {
        private ILobbyManagerCallback _lobbyManager;
        private static readonly Dictionary<string, string> _lobbyCodes = new Dictionary<string, string>();
        private static readonly Dictionary<string, List<UserSession>> _lobbyPlayers = new Dictionary<string, List<UserSession>>();
        private static readonly Dictionary<UserSession, ILobbyManagerCallback> _lobbiesCallback = new Dictionary<UserSession, ILobbyManagerCallback>();

        public void ConnectToLobby(UserSession lobbyPlayer, string codeLobby)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                if (!_lobbiesCallback.ContainsKey(lobbyPlayer))
                {
                    _lobbyManager = OperationContext.Current.GetCallbackChannel<ILobbyManagerCallback>();
                    _lobbiesCallback.Add(lobbyPlayer, _lobbyManager);
                    if (!_lobbyPlayers.ContainsKey(codeLobby))
                    {
                        _lobbyPlayers[codeLobby] = new List<UserSession>();
                    }
                    _lobbyPlayers[codeLobby].Add(lobbyPlayer);
                    NotifyPlayers(codeLobby);
                }
            }
            catch(CommunicationException communicationException)
            {
                logger.LogError(communicationException);
            }catch(TimeoutException timeoutException)
            {
                logger.LogError(timeoutException);
            }
        }

        public void LeavePlayerFromLobby(UserSession lobbyPlayer, string codeLobby, bool isKicked)
        {
           LoggerManager logger = new LoggerManager(this.GetType());
           HostBehaviorManager.ChangeModeToReentrant();
           try
           {
                if (_lobbiesCallback.ContainsKey(lobbyPlayer))
                {
                    if (isKicked)
                    {
                        _lobbiesCallback[lobbyPlayer].ReceiveKickedNotification();
                        _lobbyPlayers[codeLobby].Remove(lobbyPlayer);
                        _lobbiesCallback.Remove(lobbyPlayer);
                        NotifyPlayers(codeLobby);
                    }
                    else
                    {
                        if (_lobbyPlayers[codeLobby].Count == 1)
                        {
                            _lobbyPlayers.Remove(codeLobby);
                            _lobbiesCallback.Remove(lobbyPlayer);
                        }
                        else
                        {
                            _lobbyPlayers[codeLobby].Remove(lobbyPlayer);
                            _lobbiesCallback.Remove(lobbyPlayer);
                            NotifyPlayers(codeLobby);
                        }
                    }
                }
           }
           catch(CommunicationException communicationException)
           {
                logger.LogError(communicationException);
           }catch(TimeoutException timeoutException)
           {
                logger.LogError(timeoutException);
           }
        }

        private void NotifyPlayers(string codeLobby)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            LoggerManager logger = new LoggerManager(this.GetType());
            List<UserSession> usersInLobby = _lobbyPlayers[codeLobby];
            List<UserSession> hostHasLeft = new List<UserSession>();
            UserSession hostLeft = new UserSession()
            {
                idAccount = -2
            };
            hostHasLeft.Add(hostLeft);
            for(int usersInLobbyIndex= 0; usersInLobbyIndex < usersInLobby.Count; usersInLobbyIndex++)
            {
                try
                {
                    UserSession userToNotify = usersInLobby[usersInLobbyIndex];
                    if (_lobbiesCallback.ContainsKey(userToNotify))
                    {
                        GameMatch gameMatch = new GameMatch(){
                            idAccount = userToNotify.idAccount,
                            code = codeLobby
                        };
                        int verifyIfHostleft = VerifyCreatorOfTheMatch(gameMatch);
                        if (verifyIfHostleft==Constants.NO_DATA_MATCHES && _lobbyPlayers[codeLobby].Count==1)
                        {
                            _lobbiesCallback[userToNotify].ReceivePlayersToLobby(hostHasLeft);
                        }
                        else
                        {
                            _lobbiesCallback[userToNotify].ReceivePlayersToLobby(usersInLobby);
                        }
                    }
                }
                catch (CommunicationException communicationException)
                {
                    logger.LogError(communicationException);
                }
                catch (TimeoutException timeoutException)
                {
                    logger.LogError(timeoutException);
                }
            }
        }

        public int VerifyCreatorOfTheMatch(GameMatch match)
        {
            HostBehaviorManager.ChangeModeToSingle();
            MatchOperation matchOperation = new MatchOperation();
            Match matchToFind = new Match()
            {
                FK_IdAccount = match.idAccount,
                code = match.code,
            };
            int verificationResult = matchOperation.VerifyMatchCreator(matchToFind);
            return verificationResult;
        }

        public void StartMatch(string code)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            LoggerManager logger = new LoggerManager(this.GetType());
            if (_lobbyPlayers.ContainsKey(code))
            {
                List<UserSession> userInLobby = _lobbyPlayers[code];
                try
                {
                    UserSession userToNotify = userInLobby[1];
                    if (_lobbiesCallback.ContainsKey(userToNotify))
                    {
                        _lobbiesCallback[userToNotify].ReceiveStartMatchNotification();
                    }
                }
                catch (CommunicationException communicationException)
                {
                    logger.LogError(communicationException);
                }
                catch (TimeoutException timeoutException)
                {
                    logger.LogError(timeoutException);
                }
            }  
        }
    }
}
