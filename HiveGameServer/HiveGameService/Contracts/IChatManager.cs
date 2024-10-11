using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace HiveGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IChatManager))]
    interface IChatManager
    {
        [OperationContract(IsOneWay = true)]
        void SendMessages(Message message);
    }

    [ServiceContract]
    interface IChatManagerCallback
    {
        [OperationContract]
        void ReceiveMessage(Message message);
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
