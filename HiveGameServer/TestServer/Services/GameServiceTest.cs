using HiveGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TestServer.HiveServerProxy;
using Xunit;

namespace TestServer.Services
{

    public class GameManagerClientCallback : HiveServerProxy.IGameManagerCallback
    {
        public bool receivedMatchStartNotification {  get; set; }
        public bool receivedPlayerHasJoined { get; set; }
        public bool receiveTurns {  get; set; }
        public bool receivePlayerHasLeftNotification {  get; set; }
        public bool receivePlayerSide {  get; set; }

        public void ChargePlayerGameBoard(PlayerSide side)
        {
            receivedMatchStartNotification = true;
        }

        public void ReceivePieceMoved(GamePice piece)
        {
            throw new NotImplementedException();
        }

        public void ReceivePlayerHasLeftNotification(bool doPlayerLeftTheGame)
        {
            Assert.True(doPlayerLeftTheGame);
        }

        public void ReceivePlayersToMatch(UserSession[] userSession)
        {
            receivedPlayerHasJoined = true;
        }

        public void ReceiveTurns(bool isTurn)
        {
            Assert.True(isTurn);
        }
    }

    public class GameServiceTest 
    {
        private static GameManagerClient GameManagerClient;
        private static GameManagerClientCallback gameManagerClientCallback;

        public GameServiceTest()
        {
            gameManagerClientCallback = new GameManagerClientCallback();
            GameManagerClient = new GameManagerClient(new System.ServiceModel.InstanceContext(gameManagerClientCallback));
            gameManagerClientCallback.receivedPlayerHasJoined = false;
            gameManagerClientCallback.receivePlayerSide = false;
            gameManagerClientCallback.receiveTurns = false;
            gameManagerClientCallback.receivedMatchStartNotification = false;
            gameManagerClientCallback.receivePlayerHasLeftNotification = false;
        }

        [Fact]
        public async void ConnectToGameBoardTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "987512";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(5000);
            GameManagerClient.LeaveTheGame(userSession,codeLobbyTest);
            Assert.True(gameManagerClientCallback.receivedPlayerHasJoined);
        }

        [Fact]
        public async void LeaveTheGameTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "987512";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(3000);
            GameManagerClient.LeaveTheGame(userSession, codeLobbyTest);
            await Task.Delay(2000);
        }

        [Fact]
        public async void SetInitialTurnTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "987512";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(5000);
            GameManagerClient.LeaveTheGame(userSession, codeLobbyTest);
        }

        [Fact]
        public async void SetPlayerSideTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "987512"
            };
            string codeLobbyTest = "987512";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(5000);
            GameManagerClient.LeaveTheGame(userSession, codeLobbyTest);
            Assert.True(gameManagerClientCallback.receivedMatchStartNotification);
        }

    }
}
