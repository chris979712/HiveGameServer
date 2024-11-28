using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IEmailInvitationManager
    {
        /// <summary>
        /// Sends an email with an invitation lobby code
        /// </summary>
        /// <param name="verificator">User with the data to send the email invitation</param>
        /// <returns>Returns 1 if the email invitation was succesfully sended</returns>
        [OperationContract]
        int SendEmailInvitation(UserVerificator verificator);
    }

}
