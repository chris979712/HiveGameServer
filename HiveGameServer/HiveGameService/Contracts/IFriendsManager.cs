using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IFriendsManagerCallback))]
    public interface IFriendsManager
    {
        [OperationContract(IsOneWay = true)]
        void GetFriendsList(Profile player);

        [OperationContract(IsOneWay = true)]
        void JoinAsConnectedFriend(string username);

        [OperationContract]
        int DeleteUserAsConnectedFriend(string username);
    }

    [ServiceContract]
    public interface IFriendsManagerCallback
    {
        [OperationContract]
        void ObtainConnectedFriends(List<string> connectedFriends);
    }
}
