using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IEmailInvitationManager
    {
        [OperationContract]
        int SendEmailInvitation(UserVerificator verificator);
    }

}
