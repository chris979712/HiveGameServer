using HiveGameService.Contracts;
using HiveGameService.Utilities;
using Xunit;


namespace TestServer.Services
{
    public class EmailVerificationServiceTest 
    {

        [Fact]
        public void SendVerificationEmailTestSuccess()
        {
            HiveServerProxy.EmailVerificationManagerClient emailVerificationManagerClient = new HiveServerProxy.EmailVerificationManagerClient();
            string emailToSend = "cumplidonegrete14@gmail.com";
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = emailVerificationManagerClient.SendVerificationEmail(emailToSend);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void SendVerificationEmailFailTestSuccess()
        {
            HiveServerProxy.EmailVerificationManagerClient emailVerificationManagerClient = new HiveServerProxy.EmailVerificationManagerClient();
            string emailToSend = " ";
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = emailVerificationManagerClient.SendVerificationEmail(emailToSend);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void GenerateVerificationCodeTestSuccess()
        {
            HiveServerProxy.EmailVerificationManagerClient emailVerificationManagerClient = new HiveServerProxy.EmailVerificationManagerClient();
            string codeVerification = emailVerificationManagerClient.GenerateVerificatonCode("chrisvasquez985@gmail.com");
            Assert.NotNull(codeVerification);
        }

        [Fact]
        public void VerifyCodeVerificationTestSuccess()
        {
            HiveServerProxy.EmailVerificationManagerClient emailVerificationManagerClient = new HiveServerProxy.EmailVerificationManagerClient();
            UserVerificator userVerificatorTest = new UserVerificator()
            {
                email = "cumplidonegrete14@gmail.com",
                code = "267208"
            };
            bool resultObtained = emailVerificationManagerClient.VerifyCodeVerification(userVerificatorTest);
            Assert.True(resultObtained);
        }

        [Fact]
        public void VerifyCodeVerificationFailTestSuccess()
        {
            HiveServerProxy.EmailVerificationManagerClient emailVerificationManagerClient = new HiveServerProxy.EmailVerificationManagerClient();
            UserVerificator userVerificatorTest = new UserVerificator()
            {
                email = "cumplidonegrete14@gmail.com",
                code = "111111"
            };
            bool resultObtained = emailVerificationManagerClient.VerifyCodeVerification(userVerificatorTest);
            Assert.False(resultObtained);
        }
    }
}
