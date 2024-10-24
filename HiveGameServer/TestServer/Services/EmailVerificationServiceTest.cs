using System;
using System.Collections.Generic;
using System.Reflection;
using System.ServiceModel;
using HiveGameService.Contracts;
using HiveGameService.Services;
using HiveGameService.Utilities;
using Moq;
using Xunit;
using Xunit.Sdk;


namespace TestServer.Services
{
    public class EmailVerificationServiceTest : BeforeAfterTestAttribute
    {
        private readonly Mock<IEmailVerificationManager> emailManagerMock;
        private ServiceHost serviceHost;
        private HiveGameService.Services.HiveGameService emailVerificationService;

        public EmailVerificationServiceTest()
        {
            emailManagerMock = new Mock<IEmailVerificationManager>();
        }

        public override void Before(MethodInfo methodUnderTest)
        {
            serviceHost = new ServiceHost(typeof(HiveGameService.Services.HiveGameService));
            serviceHost.Open();
            Console.WriteLine("Testing");
            emailVerificationService = new HiveGameService.Services.HiveGameService();
        }

        [Fact]
        public void GenerateVerificationCodeTest()
        {
            string verificationCode = emailVerificationService.GenerateVerificatonCode();
            Assert.NotNull(verificationCode);
        }

        public override void After(MethodInfo methodUnderTest)
        {
            if(serviceHost != null)
            {
                serviceHost.Close();
                Console.WriteLine("Service disconnected");
            }
        }
    }
}
