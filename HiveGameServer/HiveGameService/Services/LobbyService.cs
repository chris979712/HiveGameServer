using DataBaseManager;
using DataBaseManager.Operations;
using HiveGameService.Contracts;
using HiveGameService.Utilities;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    public partial class HiveGameService : ILobbyManager
    {
        private ILobbyManagerCallback lobbyManager;
        private static readonly Dictionary<string, string> lobbyCodes = new Dictionary<string, string>();
        private static readonly Dictionary<string, List<UserSession>> lobbyPlayers = new Dictionary<string, List<UserSession>>();
        private static readonly Dictionary<UserSession, ILobbyManagerCallback> lobbiesCallback = new Dictionary<UserSession, ILobbyManagerCallback>();

        public void ConnectToLobby(UserSession lobbyPlayer, string codeLobby)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                if (!lobbiesCallback.ContainsKey(lobbyPlayer))
                {
                    lobbyManager = OperationContext.Current.GetCallbackChannel<ILobbyManagerCallback>();
                    lobbiesCallback.Add(lobbyPlayer, lobbyManager);
                    if (!lobbyPlayers.ContainsKey(codeLobby))
                    {
                        lobbyPlayers[codeLobby] = new List<UserSession>();
                    }
                    lobbyPlayers[codeLobby].Add(lobbyPlayer);
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

        public void LeavePlayerFromLobby(UserSession lobbyPlayer, string codeLobby)
        {
           LoggerManager logger = new LoggerManager(this.GetType());
           HostBehaviorManager.ChangeModeToReentrant();
           try
           {
                if (lobbiesCallback.ContainsKey(lobbyPlayer))
                {
                    if (lobbyPlayers[codeLobby].Count == 1)
                    {
                        lobbyPlayers.Remove(codeLobby);
                        lobbiesCallback.Remove(lobbyPlayer);
                    }
                    else
                    {
                        lobbyPlayers[codeLobby].Remove(lobbyPlayer);
                        lobbiesCallback.Remove(lobbyPlayer);
                        NotifyPlayers(codeLobby);
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
            LoggerManager logger = new LoggerManager(this.GetType());
            List<UserSession> usersInLobby = lobbyPlayers[codeLobby];
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
                    if (lobbiesCallback.ContainsKey(userToNotify))
                    {
                        GameMatch gameMatch = new GameMatch(){
                            idAccount = userToNotify.idAccount,
                            code = codeLobby
                        };
                        int verifyIfHostleft = VerifyCreatorOfTheMatch(gameMatch);
                        if (verifyIfHostleft==Constants.NO_DATA_MATCHES && lobbyPlayers[codeLobby].Count==1)
                        {
                            lobbiesCallback[userToNotify].ReceivePlayersToLobby(hostHasLeft);
                        }
                        else
                        {
                            lobbiesCallback[userToNotify].ReceivePlayersToLobby(usersInLobby);
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
            MatchOperation matchOperation = new MatchOperation();
            Match matchToFind = new Match()
            {
                FK_IdAccount = match.idAccount,
                code = match.code,
            };
            int verificationResult = matchOperation.VerifyMatchCreator(matchToFind);
            return verificationResult;
        }

    }
}
