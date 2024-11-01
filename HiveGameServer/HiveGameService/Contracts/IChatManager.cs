using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using System.Runtime.Serialization;
using System.Collections.ObjectModel;

namespace HiveGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IChatManagerCallback))]
    public interface IChatManager
    {
        [OperationContract(IsOneWay = true)]
        void ConnectToChatLobby(Profile user, string code);

        [OperationContract(IsOneWay = true)]
        void SendMessages(Message message, string code);

        [OperationContract]
        int DisconectPlayerFromChat(Profile user, string code);
    }

    [ServiceContract]
    public interface IChatManagerCallback
    {
        [OperationContract]
        void ReceiveMessage(List<Message> messages);
    }

    [DataContract]
    public class Message
    {
        [DataMember(IsRequired = true)]
        public string username { get; set; }
        [DataMember(IsRequired = true)]
        public string text { get; set; }
    }
}
