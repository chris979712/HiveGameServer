using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace TestServer.Services
{
    public class UserSessionServiceTest
    {

        [Fact]
        public void ConnectToGameTestSuccess()
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            UserSession userSessionTest = new UserSession()
            {
                username = "userSessionTest",
                idAccount = 1,
                codeMatch = "000000"
            };
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = userSessionManagerClient.ConnectToGame(userSessionTest);
            Assert.Equal(resultExpected, resultObtained);
            userSessionManagerClient.Disconnect(userSessionTest, false);
        }

        [Fact]
        public void ConnectToGameFailTestSuccess() 
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            UserSession userSessionTest = new UserSession()
            {
                username = "userSessionTest",
                idAccount = 1,
                codeMatch = "000000"
            };
            userSessionManagerClient.ConnectToGame(userSessionTest);
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = userSessionManagerClient.ConnectToGame(userSessionTest);
            Assert.Equal(resultExpected, resultObtained);
            userSessionManagerClient.Disconnect(userSessionTest, false);
        }

        [Fact]
        public void DisconnectTestSuccess()
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            UserSession userSessionTest = new UserSession()
            {
                username = "userSessionTest",
                idAccount = 1,
                codeMatch = "000000"
            };
            userSessionManagerClient.ConnectToGame(userSessionTest);
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = userSessionManagerClient.Disconnect(userSessionTest, false);
            Assert.Equal(resultExpected , resultObtained);
        }

        [Fact]
        public void DisconnectFailTestSuccess()
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            UserSession userSessionTest = new UserSession()
            {
                username = "userSessionTest",
                idAccount = 1,
                codeMatch = "000000"
            };
            int resultExpected = Constants.NoDataMatches;
            int resultObtained = userSessionManagerClient.Disconnect(userSessionTest, false);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyConnectivityTestSuccess()
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            UserSession userSessionTest = new UserSession()
            {
                username = "userSessionTest",
                idAccount = 1,
                codeMatch = "000000"
            };
            userSessionManagerClient.ConnectToGame(userSessionTest);
            bool resultObtained = userSessionManagerClient.VerifyConnectivity(userSessionTest);
            Assert.True(resultObtained);
            userSessionManagerClient.Disconnect(userSessionTest, false);
        }

        [Fact]
        public void VerifyConnectivityFailTestSuccess()
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            UserSession userSessionTest = new UserSession()
            {
                username = "userSessionTest",
                idAccount = 1,
                codeMatch = "000000"
            };
            bool resultObtained = userSessionManagerClient.VerifyConnectivity(userSessionTest);
            Assert.False(resultObtained);
        }
    }
}
