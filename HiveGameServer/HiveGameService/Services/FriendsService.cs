using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.ServiceModel;


namespace HiveGameService.Services
{
    
    public partial class HiveGameService : IFriendsManager
    {
        private IFriendsManagerCallback _friendsManagerCallback;
        private static readonly Dictionary<UserSession, IFriendsManagerCallback> _friendsManagerCallbacks = new Dictionary<UserSession, IFriendsManagerCallback>();

        public void GetFriendsList(UserSession user)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            _friendsManagerCallback = OperationContext.Current.GetCallbackChannel<IFriendsManagerCallback>();
            LoggerManager logger = new LoggerManager(this.GetType());
            List<UserSession> friendsConnected = ObtainFriendsList(user.idAccount);
            try
            {
                OperationContext.Current.GetCallbackChannel<IFriendsManagerCallback>().ObtainConnectedFriends(friendsConnected);
            }catch(CommunicationException comunicationException)
            {
                logger.LogFatal(comunicationException);
            }catch(TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            }
        }

        public void JoinAsConnectedFriend(UserSession user)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            _friendsManagerCallback = OperationContext.Current.GetCallbackChannel<IFriendsManagerCallback>();
            try
            {
                if (!_friendsManagerCallbacks.ContainsKey(user))
                {
                    _friendsManagerCallbacks.Add(user, _friendsManagerCallback);
                }
            }
            catch (CommunicationException comunicationException)
            {
                logger.LogFatal(comunicationException);
            }
            catch (TimeoutException timeoutException)
            {
                logger.LogWarn(timeoutException);
            }
        }

        private List<UserSession> ObtainFriendsList(int idAccount)
        {
            Profile profilePlayer = new Profile() 
            {
                idAccesAccount = idAccount
            };
            List<Profile> listOFAllFriends = GetAllFriends(profilePlayer);
            List<UserSession> friendsConnected = new List<UserSession>();
            for (int indexFriendsList = 0; indexFriendsList < listOFAllFriends.Count; indexFriendsList++)
            {
                UserSession friendObtained = new UserSession()
                {
                    username = listOFAllFriends[indexFriendsList].username,
                    idAccount = listOFAllFriends[indexFriendsList].idAccount,
                };
                if (_usersConnected.Contains(friendObtained))
                {
                    UserSession friendConnected = new UserSession(){
                        username = listOFAllFriends[indexFriendsList].username,
                        idAccount = listOFAllFriends[indexFriendsList].idAccount,
                    };
                    friendsConnected.Add(friendConnected);
                }
            }
            return friendsConnected;
        }

        public int DeleteUserAsConnectedFriend(UserSession user)
        {
            int deleteResult = Constants.ErrorOperation;
            if (_friendsManagerCallbacks.ContainsKey(user))
            {
                _friendsManagerCallbacks.Remove(user);
                deleteResult = Constants.SuccessOperation;
            }
            else
            {
                deleteResult = Constants.NoDataMatches;
            }
            return deleteResult;
        }
    }
}
