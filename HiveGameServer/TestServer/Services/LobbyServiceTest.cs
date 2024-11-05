using System;
using System.ServiceModel;
using System.Threading.Tasks;
using HiveGameService.Contracts;
using TestServer.HiveServerProxy;
using Xunit;
using HiveGameService.Utilities;
using System.Linq;

namespace TestServer.Services
{
    public class LobbyManagerClientCallback : HiveServerProxy.ILobbyManagerCallback
    {
        public bool receivedKickNotificationVerificator {get; set;}
        public bool receivePlayersToLobbyVerificator {get; set;}
        public int receiveNumberOfLobbyPlayersToLobby { get; set;}

        public void ReceiveKickedNotification()
        {
            receivedKickNotificationVerificator = true;
            Console.WriteLine("Notification received");
        }

        public void ReceivePlayersToLobby(UserSession[] user)
        {
            receivePlayersToLobbyVerificator = true;
            Console.WriteLine("Players received");
        }
    }
    public class LobbyServiceTest 
    {
        private static LobbyManagerClient lobbyProxy;
        private static LobbyManagerClientCallback lobbyManagerClientCallback;

        public LobbyServiceTest()
        {
            lobbyManagerClientCallback = new LobbyManagerClientCallback();
            lobbyProxy = new LobbyManagerClient(new InstanceContext(lobbyManagerClientCallback));
            lobbyManagerClientCallback.receivedKickNotificationVerificator = false;
            lobbyManagerClientCallback.receivePlayersToLobbyVerificator = false;
        }

        [Fact]
        public async void ConnectToLobbyTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "987512";
            lobbyProxy.ConnectToLobby(userSession, codeLobbyTest);
            await Task.Delay(5000);
            lobbyProxy.LeavePlayerFromLobby(userSession, codeLobbyTest, false);
            Assert.True(lobbyManagerClientCallback.receivePlayersToLobbyVerificator);
        }

        [Fact]
        public async void LeavePlayerFromLobbyTestSuccess()
        {
            UserSession userSessionOne = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "987512";
            lobbyProxy.ConnectToLobby(userSessionOne, codeLobbyTest);
            lobbyProxy.LeavePlayerFromLobby(userSessionOne, codeLobbyTest, false);
            await Task.Delay(1000);
            Assert.True(lobbyManagerClientCallback.receivePlayersToLobbyVerificator);
        }

        [Fact]
        public async void LeavePlayerFromLobbyFailTestSuccess()
        {
            UserSession userSessionOne = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "987512";
            lobbyProxy.LeavePlayerFromLobby(userSessionOne, codeLobbyTest, false);
            await Task.Delay(1000);
            Assert.False(lobbyManagerClientCallback.receivePlayersToLobbyVerificator);
        }

    }
}
