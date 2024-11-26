using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using System.Runtime.Serialization;

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
