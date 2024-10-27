using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using DataBaseManager.Operations;
using DataBaseManager.Utilities;
using HiveGameService.Utilities;
using Xunit;

namespace TestServer.Operation
{
    public class LeaderBoardOperationTest
    {

        [Fact]
        public void GetAllPlayersLeaderboardsFromDataBaseTestSuccess()
        {
            List<PlayerLeaderBoard> leaderBoardsExpected = new List<PlayerLeaderBoard>();
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            PlayerLeaderBoard playerLeaderBoardExpectedOne = new PlayerLeaderBoard()
            {
                wonMatches = 0,
                lostMatches = 0,
                drawMatches = 0,
                totalMatches = 0,
                idAccount = 1,
                username = "Chris984",
                imageProfile = "/Images/Avatars/Avatar5.png"
            };
            PlayerLeaderBoard playerLeaderBoardExpectedTwo = new PlayerLeaderBoard()
            {
                wonMatches = 0,
                lostMatches = 0,
                drawMatches = 0,
                totalMatches = 0,
                idAccount = 2,
                username = "Juan007",
                imageProfile = "/Images/Avatars/Avatar1.png"
            };
            leaderBoardsExpected.Add(playerLeaderBoardExpectedOne);
            leaderBoardsExpected.Add(playerLeaderBoardExpectedTwo);
            List<PlayerLeaderBoard> leaderBoardsPlayer = leaderBoardOperation.GetAllPlayersLeaderboardsFromDataBase();
            Assert.Equal(leaderBoardsPlayer, leaderBoardsExpected);
        }

        [Fact]
        public void GetAllPlayersLeaderboardsFromDataBaseExceptionTestSucces()
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
            int idAccount = 20;
            PlayerLeaderBoard leaderBoardExpected = new PlayerLeaderBoard()
            {
                idAccount = Constants.NO_DATA_MATCHES
            };
            PlayerLeaderBoard leaderBoardObtained = leaderBoardOperation.GetPersonalLeaderBoard(idAccount);
            Assert.Equal(leaderBoardExpected.idAccount, leaderBoardObtained.idAccount);
        }

        [Fact]
        public void GetPersonalLeaderBoardExceptionTestSucces()
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
            int idAccount = 20;
            int expectedResult = Constants.NO_DATA_MATCHES;
            int obtainedResult = leaderBoardOperation.UpdateDrawResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);   
        }

        [Fact]
        public void UpdateDrawResultToPlayerLeaderBoardToDataBaseExceptionTestSuccess()
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
            int idAccount = 20;
            int expectedResult = Constants.NO_DATA_MATCHES;
            int obtainedResult = leaderBoardOperation.UpdateWinnerResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }

        [Fact]
        public void UpdateWinnerResultToPlayerLeaderBoardToDataBaseExceptionTestSuccess()
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
            int idAccount = 20;
            int expectedResult = Constants.NO_DATA_MATCHES;
            int obtainedResult = leaderBoardOperation.UpdateLoserResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }

        [Fact]
        public void UpdateLoserResultToPlayerLeaderBoardToDataBaseExceptionTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            int expectedResult = -1;
            int obtainedResult = leaderBoardOperation.UpdateLoserResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult,obtainedResult);
        }
    }
}
