using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Contracts
{
    [ServiceContract]
    public interface IEmailVerificationManager
    {

        [OperationContract]
        int SendVerificationEmail(string emailToSend);

        [OperationContract]
        bool VerifyCodeVerification(UserVerificator userVerificator);
    }

    [DataContract]
    public class UserVerificator
    {
        [DataMember]
        public string email;
        [DataMember]
        public string code;
    }
}
