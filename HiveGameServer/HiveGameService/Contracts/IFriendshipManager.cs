using System.Collections.Generic;
using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IFriendshipManager
    {
        /// <summary>
        /// Deletes a friend that is added
        /// </summary>
        /// <param name="removingPlayer">Contains the data of the person who is removing friends</param>
        /// <param name="friendToRemove">Contains the data of the person who is going to be removed</param>
        /// <returns>Returns 1 if the deletion is complete</returns>
        [OperationContract]
        int DeleteFriend(Profile removingPlayer, Profile friendToRemove);

        /// <summary>
        /// Obtains the list of all the friends of a person
        /// </summary>
        /// <param name="player">Contains the data of the person who wants to check his friends list</param>
        /// <returns>Return the list of friends added</returns>
        [OperationContract]
        List<Profile> GetAllFriends(Profile player);

        /// <summary>
        /// Obtains a friend added by it's username
        /// </summary>
        /// <param name="player">Contains the data of the person who is searching</param>
        /// <param name="username">Contains the username of the person to searched</param>
        /// <returns>Return the profile of the friend obtained</returns>
        [OperationContract]
        Profile GetFriendByUsername(Profile player, string username);
    }

}
