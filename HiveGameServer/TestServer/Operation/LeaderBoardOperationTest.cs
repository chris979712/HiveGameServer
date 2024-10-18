using System.Collections.Generic;
using DataBaseManager.Operations;
using DataBaseManager.Utilities;
using Xunit;

namespace TestServer.Operation
{
    public class LeaderBoardOperationTest
    {
        private LeaderBoardOperation operation = new LeaderBoardOperation();

        [Fact]
        public void GetAllPlayersLeaderboardsFromDataBaseTestSuccess()
        {
            List<PlayerLeaderBoard> leaderBoardsExpected = new List<PlayerLeaderBoard>();
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            PlayerLeaderBoard playerLeaderBoardExpectedOne = new PlayerLeaderBoard()
            {
                wonMatches = 4,
                lostMatches = 1,
                drawMatches = 4,
                totalMatches = 1,
                idAccount = 1,
                username = "Chris985"
            };
            PlayerLeaderBoard playerLeaderBoardExpectedTwo = new PlayerLeaderBoard()
            {
                wonMatches = 0,
                lostMatches = 0,
                drawMatches = 0,
                totalMatches = 0,
                idAccount = 1001,
                username = "Juan007"
            };
            leaderBoardsExpected.Add(playerLeaderBoardExpectedOne);
            leaderBoardsExpected.Add(playerLeaderBoardExpectedTwo);
            List<PlayerLeaderBoard> leaderBoardsPlayer = leaderBoardOperation.GetAllPlayersLeaderboardsFromDataBase();
            Assert.Equal(leaderBoardsPlayer, leaderBoardsExpected);
        }

        [Fact]
        public void GetAllPlayersLeaderboardsFromDataBaseFailTestSucces()
        {
            List<PlayerLeaderBoard> leaderBoardsExpected = new List<PlayerLeaderBoard>();
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            PlayerLeaderBoard playerLeaderBoardExpectedOne = new PlayerLeaderBoard()
            {
                idAccount = -1
            };
            leaderBoardsExpected[0] = playerLeaderBoardExpectedOne;
            List<PlayerLeaderBoard> leaderBoardsObtained = leaderBoardOperation.GetAllPlayersLeaderboardsFromDataBase();
            Assert.Equal(leaderBoardsObtained[0].idAccount, leaderBoardsExpected[0].idAccount);
        }

        [Fact]
        public void GetPersonalLeaderBoardTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            PlayerLeaderBoard playerLeaderBoardExpected = new PlayerLeaderBoard() 
            {
                wonMatches = 4,
                lostMatches = 1,
                drawMatches = 4,
                totalMatches = 1,
                idAccount = 1,
                username = "Chris985"
            };
            PlayerLeaderBoard playerLeaderBoard = leaderBoardOperation.GetPersonalLeaderBoard(idAccount);
            bool equalObjects = playerLeaderBoard.Equals(playerLeaderBoardExpected);
            Assert.True(equalObjects);
        }

        [Fact]
        public void GetPersonalLeaderBoardFailTestSucces()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            PlayerLeaderBoard playerLeaderBoardExpected = new PlayerLeaderBoard()
            {
                idAccount = -1
            };
            PlayerLeaderBoard playerLeaderBoard = leaderBoardOperation.GetPersonalLeaderBoard(idAccount);
            Assert.Equal(playerLeaderBoard.idAccount,playerLeaderBoardExpected.idAccount);
        }

        [Fact]
        public void UpdateDrawResultToPlayerLeaderBoardToDataBaseTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            int expectedResult = 1;
            int obtainedResult = leaderBoardOperation.UpdateDrawResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }

        [Fact]
        public void UpdateDrawResultToPlayerLeaderBoardToDataBaseFailTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            int expectedResult = -1;
            int obtainedResult = leaderBoardOperation.UpdateDrawResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }
        
        [Fact]
        public void UpdateWinnerResultToPlayerLeaderBoardToDataBaseTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            int expectedResult = 1;
            int obtainedResult = leaderBoardOperation.UpdateWinnerResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }

        [Fact]
        public void UpdateWinnerResultToPlayerLeaderBoardToDataBaseFailTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            int expectedResult = -1;
            int obtainedResult = leaderBoardOperation.UpdateWinnerResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }
        
        [Fact]
        public void UpdateLoserResultToPlayerLeaderBoardToDataBaseTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            int expectedResult = 1;
            int obtainedResult = leaderBoardOperation.UpdateLoserResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }

        [Fact]
        public void UpdateLoserResultToPlayerLeaderBoardToDataBaseFailTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            int expectedResult = -1;
            int obtainedResult = leaderBoardOperation.UpdateLoserResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult,obtainedResult);
        }
    }
}
