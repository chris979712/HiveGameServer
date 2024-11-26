using System.Collections.Generic;
using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IFriendshipManager
    {
        [OperationContract]
        int DeleteFriend(Profile removingPlayer, Profile friendToRemove);

        [OperationContract]
        List<Profile> GetAllFriends(Profile player);

        [OperationContract]
        Profile GetFriendByUsername(Profile player, string username);
    }

}
