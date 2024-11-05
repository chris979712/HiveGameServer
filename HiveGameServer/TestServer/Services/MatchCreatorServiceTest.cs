using HiveGameService.Services;
using Xunit;

namespace TestServer.Services
{
    public class MatchCreatorServiceTest
    {
        [Fact]
        public void VerifyExistingCodeTestSuccess()
        {
            HiveServerProxy.MatchCreatorManagerClient matchOperation = new HiveServerProxy.MatchCreatorManagerClient();
            string code = "793699";
            bool verificationResult = matchOperation.VerifyExistingCode(code);
            Assert.True(verificationResult);
        }

        [Fact]
        public void VerifyExistingCodeFailTestSuccess()
        {
           HiveServerProxy.MatchCreatorManagerClient matchOperation = new HiveServerProxy.MatchCreatorManagerClient();
            string code = "111111";
            bool verificationResult = matchOperation.VerifyExistingCode(code);
            Assert.False(verificationResult);
        }

        [Fact]
        public void GenerateLobbyCodeTestSuccess()
        {
            HiveServerProxy.MatchCreatorManagerClient matchOeration = new HiveServerProxy.MatchCreatorManagerClient();
            string email = "chrisvasquez985@gmail.com";
            string codeGenerated = matchOeration.GenerateLobbyCode(email);
            Assert.NotNull(codeGenerated);
        }
    }
}
