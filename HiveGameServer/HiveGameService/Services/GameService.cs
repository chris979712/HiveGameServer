using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    public partial class HiveGameService : IGameManager
    {

        private IGameManagerCallback gameManagerCallback;
        private static readonly Dictionary<UserSession, IGameManagerCallback> gameCallbacks = new Dictionary<UserSession, IGameManagerCallback>();
        private static readonly Dictionary<string, List<UserSession>> gamePlayers = new Dictionary<string, List<UserSession>>();
        private static readonly Dictionary<string, List<PlayerSide>> playersSide = new Dictionary<string, List<PlayerSide>>();
        private static readonly Dictionary<string, string> turnsInMatch = new Dictionary<string, string>(); 

        public void ConnectToGameBoard(UserSession session, string codeMatch)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                if (lobbiesCallback.ContainsKey(session))
                {
                    lobbiesCallback.Remove(session);
                    chatCallBacks.Remove(session.username);
                    lobbyPlayers[codeMatch].Remove(session);
                }
                gameManagerCallback = OperationContext.Current.GetCallbackChannel<IGameManagerCallback>();
                if (!gameCallbacks.ContainsKey(session))
                {
                    gameCallbacks.Add(session,gameManagerCallback);
                    if (!gamePlayers.ContainsKey(codeMatch))
                    {
                        gamePlayers[codeMatch] = new List<UserSession>();
                        playersSide[codeMatch] = new List<PlayerSide>();
                    }
                    gamePlayers[codeMatch].Add(session);
                    SetPlayersSide(session);
                    NotifyPlayersMatchJoin(codeMatch);
                    SetInitialTurn(session,codeMatch);
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

        private void SetInitialTurn(UserSession userSession, string codeMatch)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                if (!turnsInMatch.ContainsKey(codeMatch))
                {
                    turnsInMatch[codeMatch] = userSession.username;
                    gameCallbacks[userSession].ReceiveTurns(true);
                }
                else
                {
                    gameCallbacks[userSession].ReceiveTurns(false);
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

        public void LeaveTheGame(UserSession session, string codeMatch)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                if (gameCallbacks.ContainsKey(session))
                {
                    if (gamePlayers[codeMatch].Count==1)
                    {
                        gamePlayers.Remove(codeMatch);
                        gameCallbacks.Remove(session);
                        turnsInMatch.Remove(codeMatch);
                    }
                    else
                    {
                        gamePlayers[codeMatch].Remove(session);
                        gameCallbacks.Remove(session);
                        NotifyPlayerUserLeftTheGame(codeMatch);
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

        private void NotifyPlayerUserLeftTheGame(string codeMatch)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                List<UserSession> usersInMatch = gamePlayers[codeMatch];
                for(int indexUsersInGame  = 0; indexUsersInGame < usersInMatch.Count; indexUsersInGame++)
                {
                    UserSession userToNotify = usersInMatch[indexUsersInGame];
                    gameCallbacks[userToNotify].ReceivePlayerHasLeftNotification(true);
                }
            }
            catch(CommunicationException communicationException)
            {
                logger.LogError(communicationException);
            }
            catch(TimeoutException timeoutException)
            {
                logger.LogError(timeoutException);
            }
        }

        public void MovePiece(GamePice piece, UserSession session, string codeMatch)
        {
            throw new NotImplementedException();
        }

        public void SetTurns(UserSession session, string codeMatch)
        {
            throw new NotImplementedException();
        }

        private void SetPlayersSide(UserSession session)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            LoggerManager logger = new LoggerManager(this.GetType());
            PlayerSide playerSide = new PlayerSide()
            {
                username = session.username,
                playerOne = false,
                playerTwo = false,
            };
            try
            {
                List<UserSession> firstUserToJoin = gamePlayers[session.codeMatch];
                if (firstUserToJoin[0] == session)
                {
                    playerSide.playerOne = true;
                }
                else
                {
                    playerSide.playerTwo = true;
                }
                gameCallbacks[session].ChargePlayerGameBoard(playerSide);
            }
            catch(CommunicationException communicationException)
            {
                logger.LogError(communicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogError(timeoutException);
            }
        }

        private void NotifyPlayersMatchJoin(string codeMatch)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            LoggerManager logger = new LoggerManager(this.GetType());
            List<UserSession> usersInMatch = gamePlayers[codeMatch];
            for(int gamePlayersIndex = 0; gamePlayersIndex < usersInMatch.Count; gamePlayersIndex++)
            {
                try
                {
                    UserSession userToNotify = usersInMatch[gamePlayersIndex];
                    if (gameCallbacks.ContainsKey(userToNotify))
                    {
                        gameCallbacks[userToNotify].ReceivePlayersToMatch(usersInMatch);
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
