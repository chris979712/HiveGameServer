﻿using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;


namespace HiveGameService.Services
{
    public partial class HiveGameService : IGameManager
    {

        private IGameManagerCallback _gameManagerCallback;
        private static readonly Dictionary<UserSession, IGameManagerCallback> _gameCallbacks = new Dictionary<UserSession, IGameManagerCallback>();
        private static readonly Dictionary<string, List<UserSession>> _gamePlayers = new Dictionary<string, List<UserSession>>();
        private static readonly Dictionary<string, List<PlayerSide>> _playersSide = new Dictionary<string, List<PlayerSide>>();
        private static readonly Dictionary<string, string> _turnsInMatch = new Dictionary<string, string>();
        private readonly Dictionary<string, IGameManagerCallback> _connectedPlayers = new Dictionary<string, IGameManagerCallback>();

        public void ConnectToGameBoard(UserSession session, string codeMatch)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                if (_lobbiesCallback.ContainsKey(session))
                {
                    _lobbiesCallback.Remove(session);
                    _chatCallBacks.Remove(session.username);
                    _lobbyPlayers[codeMatch].Remove(session);
                }
                _gameManagerCallback = OperationContext.Current.GetCallbackChannel<IGameManagerCallback>();
                if (!_gameCallbacks.ContainsKey(session))
                {
                    _gameCallbacks.Add(session, _gameManagerCallback);
                    if (!_gamePlayers.ContainsKey(codeMatch))
                    {
                        _gamePlayers[codeMatch] = new List<UserSession>();
                        _playersSide[codeMatch] = new List<PlayerSide>();
                    }
                    _gamePlayers[codeMatch].Add(session);
                    SetPlayersSide(session);
                    NotifyPlayersMatchJoin(codeMatch);
                    SetInitialTurn(session,codeMatch);
                }
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            }
        }

        private void SetInitialTurn(UserSession userSession, string codeMatch)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                if (!_turnsInMatch.ContainsKey(codeMatch))
                {
                    _turnsInMatch[codeMatch] = userSession.username;
                    _gameCallbacks[userSession].ReceiveTurns(true);
                }
                else
                {
                    _gameCallbacks[userSession].ReceiveTurns(false);
                }
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            }
        }

        public void LeaveTheGame(UserSession session, string codeMatch)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                if (_gameCallbacks.ContainsKey(session))
                {
                    if (_gamePlayers[codeMatch].Count==1)
                    {
                        _gamePlayers.Remove(codeMatch);
                        _gameCallbacks.Remove(session);
                        _turnsInMatch.Remove(codeMatch);
                    }
                    else
                    {
                        _gamePlayers[codeMatch].Remove(session);
                        _gameCallbacks.Remove(session);
                        NotifyPlayerUserLeftTheGame(codeMatch);
                    }
                }
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            }
        }

        private void NotifyPlayerUserLeftTheGame(string codeMatch)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            try
            {
                List<UserSession> usersInMatch = _gamePlayers[codeMatch];
                for(int indexUsersInGame  = 0; indexUsersInGame < usersInMatch.Count; indexUsersInGame++)
                {
                    UserSession userToNotify = usersInMatch[indexUsersInGame];
                    _gameCallbacks[userToNotify].ReceivePlayerHasLeftNotification(true);
                }
            }
            catch(CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
            }
            catch(TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            }
        }

        public void MovePiece(GamePice piece, UserSession session, string codeMatch)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                List<UserSession> usersInMatch = _gamePlayers[codeMatch].ToList();
                for(int indexLobbyCallbacks = 0; indexLobbyCallbacks < usersInMatch.Count; indexLobbyCallbacks++)
                {
                    if (!usersInMatch[indexLobbyCallbacks].Equals(session))
                    {
                        _gameCallbacks[usersInMatch[indexLobbyCallbacks]].ReceivePieceMoved(piece);
                    }

                }
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            }
        }

        public void SetTurns(UserSession session, string codeMatch)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                if (_turnsInMatch[codeMatch].Contains(session.username))
                {
                    string userTurnUsername = session.username;
                    List<UserSession> usersInMatch = _gamePlayers[codeMatch];
                    for (int indexPlayersInLobby = 0; indexPlayersInLobby < usersInMatch.Count; indexPlayersInLobby++)
                    {
                        if (!_turnsInMatch[codeMatch].Contains(usersInMatch[indexPlayersInLobby].username))
                        {
                            userTurnUsername = usersInMatch[indexPlayersInLobby].username;
                        }
                    }
                    _turnsInMatch[codeMatch] = userTurnUsername;
                    for (int indexPlayerLobbyCallbacks = 0; indexPlayerLobbyCallbacks < usersInMatch.Count; ++indexPlayerLobbyCallbacks)
                    {
                        if (_turnsInMatch[codeMatch].Contains(usersInMatch[indexPlayerLobbyCallbacks].username))
                        {
                            _gameCallbacks[usersInMatch[indexPlayerLobbyCallbacks]].ReceiveTurns(true);
                        }
                        else
                        {
                            _gameCallbacks[usersInMatch[indexPlayerLobbyCallbacks]].ReceiveTurns(false);
                        }  
                    }
                }
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            } 
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
                List<UserSession> firstUserToJoin = _gamePlayers[session.codeMatch];
                if (firstUserToJoin[0] == session)
                {
                    playerSide.playerOne = true;
                }
                else
                {
                    playerSide.playerTwo = true;
                }
                _gameCallbacks[session].ChargePlayerGameBoard(playerSide);
            }
            catch(CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            }
        }

        private void NotifyPlayersMatchJoin(string codeMatch)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            LoggerManager logger = new LoggerManager(this.GetType());
            List<UserSession> usersInMatch = _gamePlayers[codeMatch];
            for(int gamePlayersIndex = 0; gamePlayersIndex < usersInMatch.Count; gamePlayersIndex++)
            {
                try
                {
                    UserSession userToNotify = usersInMatch[gamePlayersIndex];
                    if (_gameCallbacks.ContainsKey(userToNotify))
                    {
                        _gameCallbacks[userToNotify].ReceivePlayersToMatch(usersInMatch);
                    }
                }
                catch (CommunicationException communicationException)
                {
                    logger.LogFatal(communicationException);
                }
                catch (TimeoutException timeoutException)
                {
                    logger.LogWarn(timeoutException);
                }
            }
        }

        public void FinishOfTheMatch(string codeMatch, string winner)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            LoggerManager logger = new LoggerManager(this.GetType());
            List<UserSession> usersInMatch = _gamePlayers[codeMatch];
            for(int gamePlayersIndex = 0;gamePlayersIndex < usersInMatch.Count;gamePlayersIndex++)
            {
                try
                {
                    UserSession userToNotify = usersInMatch[gamePlayersIndex];
                    if (_gameCallbacks.ContainsKey(userToNotify))
                    {
                        _gameCallbacks[userToNotify].ReceiveFinalMatchResult(winner);
                    }
                }
                catch (CommunicationException communicationException)
                {
                    logger.LogFatal(communicationException);
                }
                catch (TimeoutException timeoutException)
                {
                    logger.LogWarn(timeoutException);
                }
            }
        }

        public int LeaveMatchFinished(string codeMatch, UserSession session)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            LoggerManager logger = new LoggerManager(this.GetType());
            int disconnectionResult = Constants.ErrorOperation;
            try
            {
                if (_gameCallbacks.ContainsKey(session))
                {
                    if (_gamePlayers[codeMatch].Count == 1)
                    {
                        _gameCallbacks.Remove(session);
                        _gamePlayers.Remove(codeMatch);
                        disconnectionResult = Constants.SuccessOperation;
                    }
                    else
                    {
                        _gameCallbacks.Remove(session);
                        _gamePlayers[codeMatch].Remove(session);
                        disconnectionResult = Constants.SuccessOperation;
                    }
                }
                else
                {
                    disconnectionResult = Constants.NoDataMatches;
                }
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            }
            return disconnectionResult;
        }

        public bool CheckConnection(string username)
        {
            bool connection = true;
            LoggerManager logger = new LoggerManager(this.GetType());
            UserSession session = _gameCallbacks.Keys.Where(userSession => userSession.username == username).FirstOrDefault();
            try
            {
                _gameCallbacks[session].RecieveRequestPingFromOtherPlayer();
            }
            catch (CommunicationException communicationException)
            {
                logger.LogFatal(communicationException);
                connection = false;
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
                connection = false;
            }
            if(!connection)
            {
                NotifyPlayerDisconnected(username);
                DisconnectPlayerWhoLostConnection(session);
            }
            return connection;
        }

        private void DisconnectPlayerWhoLostConnection(UserSession session)
        {
            Profile userProfile = new Profile()
            {
                username = session.username
            };
            _usersConnected.RemoveAll(userToDisconnect => userToDisconnect.username == session.username);
            UpdateFriendsListOfConectedFriends(session);
            LeaveMatchFinished(session.codeMatch, session);
        } 

        public void NotifyPlayerDisconnected(string disconnectedUsername)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            foreach (var callback in _gameCallbacks)
            {
                string username = callback.Key.username;
                if (username != disconnectedUsername)
                {
                    try
                    {
                        callback.Value.PlayerDisconnected(disconnectedUsername);
                    }
                    catch (CommunicationException communicationException)
                    {
                        logger.LogFatal(communicationException);
                    }
                    catch (TimeoutException timeoutException)
                    {
                        logger.LogWarn(timeoutException);
                    }
                }     
            }
        }

        public bool CheckPersonalConnection()
        {
            return true;
        }
    }

    
}
