using HiveGameService.Contracts;
using HiveGameService.Utilities;
using Xunit;

namespace TestServer.Services
{
    public class EmailInvitationServiceTest
    {
        [Fact]
        public void GenerateLobbyCodeTestSuccess()
        {
            HiveServerProxy.EmailInvitationManagerClient emailInvitationManagerClient = new HiveServerProxy.EmailInvitationManagerClient();
            string email = "chrisvasquez985@gmail.com";
            string codeGenerated = emailInvitationManagerClient.GenerateLobbyCode(email);
            Assert.NotNull(codeGenerated);
        }

        [Fact]
        public void SendEmailInvitationTestSuccess()
        {
            HiveServerProxy.EmailInvitationManagerClient emailInvitationManagerClient = new HiveServerProxy.EmailInvitationManagerClient();
            UserVerificator userVerificator = new UserVerificator()
            {
                email = "chrivasquez2500@gmail.com",
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

        [Fact]
        public void VerifyExistingCodeTestSuccess()
        {
            HiveServerProxy.EmailInvitationManagerClient emailInvitationManagerClient = new HiveServerProxy.EmailInvitationManagerClient();
            string code = "793699";
            bool verificationResult = emailInvitationManagerClient.VerifyExistingCode(code);
            Assert.True(verificationResult);
        }

        [Fact]
        public void VerifyExistingCodeFailTestSuccess()
        {
            HiveServerProxy.EmailInvitationManagerClient emailInvitationManagerClient = new HiveServerProxy.EmailInvitationManagerClient();
            string code = "111111";
            bool verificationResult = emailInvitationManagerClient.VerifyExistingCode(code);
            Assert.False(verificationResult);
        }
    }
}
