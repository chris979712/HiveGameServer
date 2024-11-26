using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Contracts
{

    [ServiceContract(CallbackContract = typeof(ILobbyManagerCallback))]
    interface ILobbyManager
    {
        [OperationContract(IsOneWay = true)]
        void ConnectToLobby(UserSession lobbyPlayer, string codeLobby);

        [OperationContract(IsOneWay = true)]
        void LeavePlayerFromLobby(UserSession lobbyPlayer, string codeLobby, bool isKicked);

        [OperationContract(IsOneWay = true)]
        void StartMatch(string code);

        [OperationContract]
        int VerifyCreatorOfTheMatch(GameMatch match);
    }

    [ServiceContract]
    public interface ILobbyManagerCallback
    {
        [OperationContract]
        void ReceivePlayersToLobby(List<UserSession> user);

        [OperationContract]
        void ReceiveKickedNotification();

        [OperationContract]
        void ReceiveStartMatchNotification();
    }


    [DataContract]
    public class GameMatch
    {
        [DataMember]
        public string code { get; set; }

        [DataMember]
        public int idAccount { get; set; }
    }

}
