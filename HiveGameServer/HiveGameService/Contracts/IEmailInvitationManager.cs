using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Contracts
{
    [ServiceContract]
    public interface IEmailInvitationManager
    {
        [OperationContract]
        int SendEmailInvitation(UserVerificator verificator);
    }
}
