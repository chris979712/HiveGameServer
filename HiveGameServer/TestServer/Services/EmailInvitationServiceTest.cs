using HiveGameService.Contracts;
using HiveGameService.Utilities;
using Xunit;

namespace TestServer.Services
{
    public class EmailInvitationServiceTest
    {

        [Fact]
        public void SendEmailInvitationTestSuccess()
        {
            HiveServerProxy.EmailInvitationManagerClient emailInvitationManagerClient = new HiveServerProxy.EmailInvitationManagerClient();
            UserVerificator userVerificator = new UserVerificator()
            {
                email = "cumplidonegrete14@gmail.com",
                code = "793699"
            };
            int invitationSendResult = emailInvitationManagerClient.SendEmailInvitation(userVerificator);
            int invitationResultExpected = Constants.ERROR_OPERATION;
            Assert.Equal(invitationResultExpected, invitationSendResult);
        }

        [Fact]
        public void SendEmailInvitationFailTestSuccess()
        {
            HiveServerProxy.EmailInvitationManagerClient emailInvitationManagerClient = new HiveServerProxy.EmailInvitationManagerClient();
            UserVerificator userVerificator = new UserVerificator()
            {
                email = " "
            };
            int invitationSendResult = emailInvitationManagerClient.SendEmailInvitation(userVerificator);
            int invitationResultExpected = Constants.ERROR_OPERATION;
            Assert.Equal(invitationResultExpected, invitationSendResult);   
        }

    }
}
