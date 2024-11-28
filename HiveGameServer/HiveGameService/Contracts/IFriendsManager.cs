using System.Collections.Generic;
using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract(CallbackContract = typeof(IFriendsManagerCallback))]
    public interface IFriendsManager
    {
        /// <summary>
        /// Obtains the list of friends that are online
        /// </summary>
        /// <param name="user">Contains the data of the user session</param>
        [OperationContract(IsOneWay = true)]
        void GetFriendsList(UserSession user);

        /// <summary>
        /// Connects an user and broadcast the message to his online friends
        /// </summary>
        /// <param name="user"></param>
        [OperationContract(IsOneWay = true)]
        void JoinAsConnectedFriend(UserSession user);

        /// <summary>
        /// Disconnects a user from friends connected and broadcast the message to his online friends
        /// </summary>
        /// <param name="username">Contains the data of the user to disconnect</param>
        /// <returns>returns 1 if the deletion was successfull</returns>
        [OperationContract]
        int DeleteUserAsConnectedFriend(UserSession user);
    }

    [ServiceContract]
    public interface IFriendsManagerCallback
    {
        /// <summary>
        /// Obtains the list of friends connected in the game
        /// </summary>
        /// <param name="connectedFriends">List of the friends connected in the game</param>
        [OperationContract]
        void ObtainConnectedFriends(List<UserSession> connectedFriends);
    }

}

