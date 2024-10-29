using HiveGameService.Contracts;
using HiveGameService.Utilities;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    
    public partial class HiveGameService : IFriendsManager
    {
        private IFriendsManagerCallback friendsManagerCallback;
        private static readonly Dictionary<string, IFriendsManagerCallback> friendsManagerCallbacks = new Dictionary<string, IFriendsManagerCallback>();

        public void GetFriendsList(Profile profile)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            friendsManagerCallback = OperationContext.Current.GetCallbackChannel<IFriendsManagerCallback>();
            LoggerManager logger = new LoggerManager(this.GetType());
            List<string> friendsConnected = ObtainFriendsList(profile.idAccesAccount);
            try
            {
                OperationContext.Current.GetCallbackChannel<IFriendsManagerCallback>().ObtainConnectedFriends(friendsConnected);
            }catch(CommunicationException comunicationException)
            {
                logger.LogError(comunicationException);
            }catch(TimeoutException timeoutException)
            {
                logger.LogError(timeoutException);
            }
        }

        public void JoinAsConnectedFriend(string username)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            friendsManagerCallback = OperationContext.Current.GetCallbackChannel<IFriendsManagerCallback>();
            try
            {
                if (!friendsManagerCallbacks.ContainsKey(username))
                {
                    friendsManagerCallbacks.Add(username, friendsManagerCallback);
                }
            }
            catch (CommunicationException comunicationException)
            {
                logger.LogError(comunicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogError(timeoutException);
            }
        }

        private List<string> ObtainFriendsList(int idAccount)
        {
            Profile profilePlayer = new Profile() 
            {
                idAccesAccount = idAccount
            };
            List<Profile> listOFAllFriends = GetAllFriends(profilePlayer);
            List<string> friendsNameConnected = new List<string>();
            for (int indexFriendsList = 0; indexFriendsList < listOFAllFriends.Count; indexFriendsList++)
            {
                if (usersConnected.Contains(listOFAllFriends[indexFriendsList].username))
                {
                    string friendConnected = listOFAllFriends[indexFriendsList].username;
                    friendsNameConnected.Add(friendConnected);
                }
            }
            return friendsNameConnected;
        }

        public int DeleteUserAsConnectedFriend(string username)
        {
            int deleteResult = Constants.ERROR_OPERATION;
            if (friendsManagerCallbacks.ContainsKey(username))
            {
                friendsManagerCallbacks.Remove(username);
                deleteResult = Constants.SUCCES_OPERATION;
            }
            else
            {
                deleteResult = Constants.NO_DATA_MATCHES;
            }
            return deleteResult;
        }
    }
}
