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
        void GetFriendsList(UserSession user);

        [OperationContract(IsOneWay = true)]
        void JoinAsConnectedFriend(UserSession user);

        [OperationContract]
        int DeleteUserAsConnectedFriend(UserSession username);
    }

    [ServiceContract]
    public interface IFriendsManagerCallback
    {
        [OperationContract]
        void ObtainConnectedFriends(List<UserSession> connectedFriends);
    }

}
