using HiveGameService.Contracts;
using HiveGameService.UtilitiesService;
using System;
using System.Windows;
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
        public bool receiveMatchResult { get; set; }

        public void ChargePlayerGameBoard(PlayerSide side)
        {
            receivedMatchStartNotification = true;
        }

        public void ReceiveFinalMatchResult(string winner)
        {
            if(winner == "Chris984")
            {
                receiveMatchResult = true;
            }
            else if(winner == "Draw")
            {
                receiveMatchResult = true;
            }
            Assert.True(receiveMatchResult);
        }

        public void ReceivePieceMoved(GamePice piece)
        {
            Assert.NotNull(piece);
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
            gameManagerClientCallback.receiveMatchResult = false;
        }

        [Fact]
        public async void ConnectToGameBoardTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "999888"
            };
            string codeLobbyTest = "999888";
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
                codeMatch = "786532"
            };
            string codeLobbyTest = "786532";
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
                codeMatch = "817293"
            };
            string codeLobbyTest = "817293";
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
                codeMatch = "654321"
            };
            string codeLobbyTest = "654321";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(5000);
            GameManagerClient.LeaveTheGame(userSession, codeLobbyTest);
            Assert.True(gameManagerClientCallback.receivedMatchStartNotification);
        }

        [Fact]
        public async void FinishOfTheMatchWinTestSuccess()
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
            GameManagerClient.FinishOfTheMatch(codeLobbyTest, "Chris984");
            await Task.Delay(3000);
            GameManagerClient.LeaveMatchFinished(codeLobbyTest, userSession);
        }

        [Fact]
        public async void FinishOfTheMatchDrawTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "123456"
            };
            string codeLobbyTest = "123456";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(3000);
            GameManagerClient.FinishOfTheMatch(codeLobbyTest, "Draw");
            await Task.Delay(3000);
            GameManagerClient.LeaveMatchFinished(codeLobbyTest, userSession);
        }

        [Fact]
        public async void LeaveMatchFinishedTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "123456"
            };
            string codeLobbyTest = "123456";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(3000);
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = GameManagerClient.LeaveMatchFinished(codeLobbyTest, userSession);
            Assert.Equal(resultExpected, resultObtained);
            GameManagerClient.LeaveMatchFinished(codeLobbyTest, userSession);
        }

        [Fact]
        public async void LeaveMatchFinishedCouldntFindUserSessionTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "328976"
            };
            UserSession userSessionTwo = new UserSession()
            {
                username = "Juan007",
                idAccount = 2,
                codeMatch = "328976"
            };
            string codeLobbyTest = "328976";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(3000);
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = GameManagerClient.LeaveMatchFinished(codeLobbyTest, userSessionTwo);
            Assert.Equal(resultExpected, resultObtained);
            GameManagerClient.LeaveMatchFinished(codeLobbyTest, userSession);
        }

        [Fact]
        public async void LeaveMatchFinishedExceptionTest()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "328976"
            };
            string codeLobbyTest = "328976";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(3000);
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = GameManagerClient.LeaveMatchFinished(codeLobbyTest, userSession);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public async void MovePieceTestSuccess()
        {
            UserSession userSession = new UserSession()
            {
                username = "Chris984",
                idAccount = 1,
                codeMatch = "549056"
            };
            Piece piece = new Piece()
            {
                name = "Beetle",
                playerName = "Chris984"
            };
            GamePice gamePiece = new GamePice()
            {
                playerName = "Chris984",
                numberOfPiece = 1,
                imagePath = "Image/Beetle.png",
                piece = piece
            };
            string codeLobbyTest = "549056";
            GameManagerClient.ConnectToGameBoard(userSession, codeLobbyTest);
            await Task.Delay(3000);
            GameManagerClient.MovePiece(gamePiece,userSession,codeLobbyTest);
            
        }

    }
}
