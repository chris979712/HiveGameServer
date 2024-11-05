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
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = userSessionManagerClient.ConnectToGame(userSessionTest);
            Assert.Equal(resultExpected, resultObtained);
            userSessionManagerClient.Disconnect(userSessionTest);
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
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = userSessionManagerClient.ConnectToGame(userSessionTest);
            Assert.Equal(resultExpected, resultObtained);
            userSessionManagerClient.Disconnect(userSessionTest);
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
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = userSessionManagerClient.Disconnect(userSessionTest);
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
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = userSessionManagerClient.Disconnect(userSessionTest);
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
            userSessionManagerClient.Disconnect(userSessionTest);
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
