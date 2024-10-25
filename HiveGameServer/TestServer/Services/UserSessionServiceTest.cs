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
            string username = "Chris985";
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = userSessionManagerClient.ConnectToGame(username);
            Assert.Equal(resultExpected, resultObtained);
            userSessionManagerClient.Disconnect(username);
        }

        [Fact]
        public void ConnectToGameFailTestSuccess() 
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            string username = "Chris985";
            userSessionManagerClient.ConnectToGame(username);
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = userSessionManagerClient.ConnectToGame(username);
            Assert.Equal(resultExpected, resultObtained);
            userSessionManagerClient.Disconnect(username);
        }

        [Fact]
        public void DisconnectTestSuccess()
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            string username = "Chris985";
            userSessionManagerClient.ConnectToGame(username);
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = userSessionManagerClient.Disconnect(username);
            Assert.Equal(resultExpected , resultObtained);
        }

        [Fact]
        public void DisconnectFailTestSuccess()
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            string username = "Chris2500";
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = userSessionManagerClient.Disconnect(username);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyConnectivityTestSuccess()
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            string username = "Chris985";
            userSessionManagerClient.ConnectToGame(username);
            bool resultObtained = userSessionManagerClient.VerifyConnectivity(username);
            Assert.True(resultObtained);
            userSessionManagerClient.Disconnect(username);
        }

        [Fact]
        public void VerifyConnectivityFailTestSuccess()
        {
            HiveServerProxy.UserSessionManagerClient userSessionManagerClient = new HiveServerProxy.UserSessionManagerClient();
            string username = "Chris985";;
            bool resultObtained = userSessionManagerClient.VerifyConnectivity(username);
            Assert.False(resultObtained);
        }
    }
}
