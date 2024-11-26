using System.Runtime.Serialization;
using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IEmailVerificationManager
    {
        [OperationContract]
        int SendVerificationEmail(string emailToSend);

        [OperationContract]
        bool VerifyCodeVerification(UserVerificator userVerificator);

        [OperationContract]
        string GenerateVerificatonCode(string email);
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
