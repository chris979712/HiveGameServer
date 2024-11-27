﻿using HiveGameService.Contracts;
using HiveGameService.UtilitiesService;
using System;
using System.Collections.Generic;
using System.ServiceModel;


namespace HiveGameService.Services
{
    public partial class HiveGameService : IUserSessionManager
    {
        private static readonly List<UserSession> _usersConnected = new List<UserSession>();
        public int ConnectToGame(UserSession user)
        {
            int resultConnection = Constants.ERROR_OPERATION;
            if (!_usersConnected.Contains(user))
            {
                _usersConnected.Add(user);
                UpdateFriendsListOfConectedFriends(user);
                resultConnection = Constants.SUCCES_OPERATION;
            }
            return resultConnection;
        }

        public int Disconnect(UserSession user, bool isInMatch)
        {
            int resultDisconnection;
            if (_usersConnected.Exists(userToDisconnect => userToDisconnect.username == user.username))
            {
                Profile userProfile = new Profile()
                {
                    username = user.username
                };
                _usersConnected.RemoveAll(userToDisconnect => userToDisconnect.username == user.username);
                UpdateFriendsListOfConectedFriends(user);
                DisconectPlayerFromChat(userProfile,user.codeMatch);
                LeavePlayerFromLobby(user, user.codeMatch, false);
                if (isInMatch)
                {
                    LeaveTheGame(user, user.codeMatch);
                    UpdateMinusUserReputation(user.username, 100);
                    UpdateLoserResultToPlayerLeaderBoard(user.idAccount);
                }
                else
                {
                    LeaveMatchFinished(user.codeMatch, user);
                }
                resultDisconnection = Constants.SUCCES_OPERATION;
            }
            else
            {
                resultDisconnection = Constants.NO_DATA_MATCHES;
            }
            return resultDisconnection;
        }

        public bool VerifyConnectivity(UserSession user)
        {
            bool resultVerification = false;
            if (_usersConnected.Contains(user))
            {
                resultVerification = true;
            }
            return resultVerification;
        }

        public void UpdateFriendsListOfConectedFriends(UserSession user)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            List<UserSession> connnectedFriends = ObtainFriendsList(user.idAccount);
            for(int connectedFriendsListIndex = 0; connectedFriendsListIndex < connnectedFriends.Count; connectedFriendsListIndex++)
            {
                try
                {
                    if (_friendsManagerCallbacks.ContainsKey(connnectedFriends[connectedFriendsListIndex]))
                    {
                        _friendsManagerCallbacks[connnectedFriends[connectedFriendsListIndex]].ObtainConnectedFriends(ObtainFriendsList(connnectedFriends[connectedFriendsListIndex].idAccount));
                    }
                }catch(CommunicationException communicationException)
                {
                    logger.LogError(communicationException);
                }
                catch(TimeoutException timeOutException)
                {
                    logger.LogError(timeOutException);  
                }
            }
        }
    }
}
