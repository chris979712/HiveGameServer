using HiveGameService.Contracts;
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
        private static readonly List<string> usersConnected = new List<string>();
        public int ConnectToGame(string username)
        {
            int resultConnection = Constants.ERROR_OPERATION;
            if (!usersConnected.Contains(username))
            {
                usersConnected.Add(username);
                resultConnection = Constants.SUCCES_OPERATION;
            }
            return resultConnection;
        }

        public int Disconnect(string username)
        {
            int resultDisconnection = Constants.ERROR_OPERATION;
            if (usersConnected.Contains(username))
            {
                usersConnected.Remove(username);
                UpdateFriendsListOfConectedFriends(username);
                resultDisconnection = Constants.SUCCES_OPERATION;
            }
            else
            {
                resultDisconnection = Constants.NO_DATA_MATCHES;
            }
            return resultDisconnection;
        }

        public bool VerifyConnectivity(string username)
        {
            bool resultVerification = false;
            if (usersConnected.Contains(username))
            {
                resultVerification = true;
            }
            return resultVerification;
        }

        public void UpdateFriendsListOfConectedFriends(string username)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            Profile userProfile = GetUserProfileByUsername(username);
            List<string> connnectedFriends = ObtainFriendsList(userProfile.idAccesAccount);
            for(int connectedFriendsListIndex = 0; connectedFriendsListIndex < connnectedFriends.Count; connectedFriendsListIndex++)
            {
                try
                {
                    if (friendsManagerCallbacks.ContainsKey(connnectedFriends[connectedFriendsListIndex]))
                    {
                        Profile friendProfile = GetUserProfileByUsername(connnectedFriends[connectedFriendsListIndex]);
                        friendsManagerCallbacks[connnectedFriends[connectedFriendsListIndex]].ObtainConnectedFriends(ObtainFriendsList(friendProfile.idAccesAccount));
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
