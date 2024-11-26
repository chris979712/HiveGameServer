using System;
using System.ServiceModel;
using System.Threading.Tasks;
using HiveGameService.Contracts;
using TestServer.HiveServerProxy;
using Xunit;

namespace TestServer.Services
{
    public class LobbyManagerClientCallback : HiveServerProxy.ILobbyManagerCallback
    {
        public bool receivedKickNotificationVerificator {get; set;}
        public bool receivePlayersToLobbyVerificator {get; set;}
        public bool receiveStartMatchNotificationVerificator { get; set;}
        public int receiveNumberOfLobbyPlayersToLobby { get; set;}

        public void ReceiveKickedNotification()
        {
            receivedKickNotificationVerificator = true;
            Console.WriteLine("Notification received");
        }

        public void ReceivePlayersToLobby(UserSession[] user)
        {
            if (user[1].idAccount == -2)
            {
                UserSession[] userInLobbyTest = new UserSession[1];
                UserSession userSessionOne = new UserSession()
                {
                    username = null,
                    idAccount = -2,
                    codeMatch = null,
                };
                userInLobbyTest[0] = userSessionOne;
                Assert.Equal(userInLobbyTest, user);
            }
            else if(user.Length == 1)
            {
                UserSession[] userInLobbyTest = new UserSession[1];
                UserSession userSessionOne = new UserSession()
                {
                    username = "Chris984",
                    idAccount = 1,
                    codeMatch = "987512"
                };
                userInLobbyTest[0] = userSessionOne;
                Assert.Equal(userInLobbyTest, user);
            }
        }

        public void ReceiveStartMatchNotification()
        {
            receiveStartMatchNotificationVerificator = true;
            Console.WriteLine("Notification received");
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
            await Task.Delay(3000);
            lobbyProxy.LeavePlayerFromLobby(userSessionOne, codeLobbyTest, false);
            await Task.Delay(2000);
        }

        [Fact]
        public async void LeaveSecondPlayerInLobbyTestSuccess()
        {
            UserSession userSessionOne = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            UserSession userSessionTwo = new UserSession()
            {
                username = "Juan007",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "987512";
            lobbyProxy.ConnectToLobby(userSessionOne, codeLobbyTest);
            lobbyProxy.ConnectToLobby(userSessionTwo, codeLobbyTest);
            await Task.Delay(3000);
            lobbyProxy.LeavePlayerFromLobby(userSessionTwo, codeLobbyTest, false);
            await Task.Delay(2000);
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
            await Task.Delay(3000);
            Assert.False(lobbyManagerClientCallback.receivePlayersToLobbyVerificator);
        }

        [Fact]
        public async void StartMatchTestSuccess()
        {
            UserSession userSessionOne = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            UserSession userSessionTwo = new UserSession()
            {
                username = "Juan007",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "987512";
            lobbyProxy.ConnectToLobby(userSessionOne, codeLobbyTest);
            lobbyProxy.ConnectToLobby(userSessionTwo, codeLobbyTest);
            lobbyProxy.StartMatch(codeLobbyTest);
            await Task.Delay(5000);
            Assert.True(lobbyManagerClientCallback.receiveStartMatchNotificationVerificator);
        }

        [Fact]
        public async void StartMatchFailTestSuccess()
        {
            UserSession userSessionOne = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            UserSession userSessionTwo = new UserSession()
            {
                username = "Juan007",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "123456";
            lobbyProxy.ConnectToLobby(userSessionOne, codeLobbyTest);
            lobbyProxy.ConnectToLobby(userSessionTwo, codeLobbyTest);
            lobbyProxy.StartMatch(codeLobbyTest);
            await Task.Delay(5000);
            Assert.False(lobbyManagerClientCallback.receiveStartMatchNotificationVerificator);
        }

    }
}
