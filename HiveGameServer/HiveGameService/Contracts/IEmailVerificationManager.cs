using System.Runtime.Serialization;
using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IEmailVerificationManager
    {
        /// <summary>
        /// Sends an email with a verification code 
        /// </summary>
        /// <param name="emailToSend">Contains the email address to send the message</param>
        /// <returns>Returns 1 if the email was succesfully sended</returns>
        [OperationContract]
        int SendVerificationEmail(string emailToSend);

        /// <summary>
        /// Verify if the code inserted is valid and from the user who typed it
        /// </summary>
        /// <param name="userVerificator">Contains the data of the user who typed the message</param>
        /// <returns>Return true if the code is valid</returns>

        [OperationContract]
        bool VerifyCodeVerification(UserVerificator userVerificator);

        /// <summary>
        /// Generates a verification code
        /// </summary>
        /// <param name="email">Contains the email of the person who solicited a verification code</param>
        /// <returns></returns>

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
