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
    public interface IFriendRequestManager
    {

        [OperationContract]
        int CreateFriendRequest(Profile playerOne, Profile playerTwo);
        [OperationContract]
        List<Profile> GetFriendRequests(Profile player);
        [OperationContract]
        int AcceptFriendRequest(Profile playerOne, Profile playerTwo);
        [OperationContract]
        int DeclineFriendRequest(Profile playerOne, Profile playerTwo);
        [OperationContract]
        int VerifyFriendRequestRegistered(Profile playerOne, Profile playerTwo);
        
    }

    [DataContract]
    public class FriendShip
    {
        [DataMember]
        public int idFriendRequest {  get; set; }
        [DataMember]
        public int idPlayerOne {  get; set; }
        [DataMember]
        public int idPlayerTwo { get; set; }
        [DataMember]
        public string state { get; set; }
    }
}
