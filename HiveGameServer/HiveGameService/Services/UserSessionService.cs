﻿using HiveGameService.Contracts;
using HiveGameService.UtilitiesService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    public partial class HiveGameService : IUserSessionManager
    {
        private static readonly List<UserSession> usersConnected = new List<UserSession>();
        public int ConnectToGame(UserSession user)
        {
            int resultConnection = Constants.ERROR_OPERATION;
            if (!usersConnected.Contains(user))
            {
                usersConnected.Add(user);
                UpdateFriendsListOfConectedFriends(user);
                resultConnection = Constants.SUCCES_OPERATION;
            }
            return resultConnection;
        }

        public int Disconnect(UserSession user)
        {
            int resultDisconnection = Constants.ERROR_OPERATION;
            if (usersConnected.Contains(user))
            {
                Profile userProfile = new Profile()
                {
                    username = user.username
                };
                usersConnected.Remove(user);
                UpdateFriendsListOfConectedFriends(user);
                DisconectPlayerFromChat(userProfile);
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
            if (usersConnected.Contains(user))
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
                    if (friendsManagerCallbacks.ContainsKey(connnectedFriends[connectedFriendsListIndex]))
                    {
                        friendsManagerCallbacks[connnectedFriends[connectedFriendsListIndex]].ObtainConnectedFriends(ObtainFriendsList(connnectedFriends[connectedFriendsListIndex].idAccount));
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
