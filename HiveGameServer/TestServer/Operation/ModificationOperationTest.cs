using DataBaseManager;
using DataBaseManager.Operations;
using HiveGameService.Utilities;
using System;
using System.Security.Cryptography;
using System.Text;
using Xunit;

namespace TestServer.Operation
{
    public class ModificationOperationTest
    {
        private UserOperation operation = new UserOperation();
        private FriendRequestOperation friendshipOperation = new FriendRequestOperation();
        public static string hashToSHA2(string textToHash)
        {
            StringBuilder stringHashBuilder = new StringBuilder();
            byte[] inputBytes = Encoding.UTF8.GetBytes(textToHash);
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] hashBytes = sha256.ComputeHash(inputBytes);
                string hexaDecimalFormat = "x2";

                for (int indexBytes = 0; indexBytes < hashBytes.Length; indexBytes++)
                {
                    stringHashBuilder.Append(hashBytes[indexBytes].ToString(hexaDecimalFormat));
                }

            }
            return stringHashBuilder.ToString();
        }

        [Fact]
        public void UpdateLoginCredentialsToDataBaseTestSuccess()
        {
            DataBaseManager.AccessAccount odlAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                email = "chrisvasquez985@gmail.com",
                password = hashToSHA2("chrisSiu12*")
            };
            DataBaseManager.AccessAccount updatedAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                email = "vasquezChris984@gmail.com",
                password = hashToSHA2("chrisSiu12*")
            };
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = operation.UpdateLoginCredentialsToDataBase(odlAccessAccountTest, updatedAccessAccountTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdateLoginCredentialToDataBaseFailTestSuccess()
        {
            DataBaseManager.AccessAccount odlAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                email = "elcomandantesiu777@gmail.com",
                password = hashToSHA2("chrisSiu12*")
            };
            DataBaseManager.AccessAccount updatedAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                email = "777elcomandantesiu@gmail.com",
                password = hashToSHA2("chrisSiu12*")
            };
            int resultExpected = Constants.NoDataMatches;
            int resultObtained = operation.UpdateLoginCredentialsToDataBase(odlAccessAccountTest, updatedAccessAccountTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdateProfileToDataBaseTestSuccess()
        {
            UserOperation userOperation = new UserOperation();
            DataBaseManager.Profile newUpdatedProfile = new DataBaseManager.Profile()
            {
                FK_IdAccount = 1,
                nickname = "chrisss",
                imagePath = "/Images/Avatars/Avatar2.png",
                description = "Si"
            };
            string email = "chrisvasquez985@gmail.com";
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = userOperation.UpdateProfileToDataBase(newUpdatedProfile, email);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdateProfileToDataBaseFailTestSuccess()
        {
            UserOperation userOperation = new UserOperation();
            DataBaseManager.Profile newUpdatedProfile = new DataBaseManager.Profile()
            {
                FK_IdAccount = 20,
                nickname = "Cristiano Ronaldo",
                imagePath = "/Images/Avatars/Avatar1.png",
                description = "Si"
            };
            string email = "elcomandantesiu777@gmail.com";
            int resultExpected = Constants.NoDataMatches;
            int resultObtained = userOperation.UpdateProfileToDataBase(newUpdatedProfile, email);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdatePlayerPlusReputationToDataBaseTestSuccess()
        {
            string username = "Chris985";
            int reputation = 50;
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = operation.UpdatePlusPlayerReputationToDataBase(username, reputation);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdatePlayerPlusReputationToDataBaseFailTestSuccess()
        {
            string username = "ElComandante00007";
            int reputation = 50;
            int resultExpected = Constants.NoDataMatches;
            int resultObtained = operation.UpdatePlusPlayerReputationToDataBase(username, reputation);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdatePlayerMinusReputationToDataBaseTestSuccess()
        {
            string username = "Chris985";
            int reputation = 50;
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = operation.UpdateMinusPlayerReputationToDataBase(username, reputation);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdatePlayerMinusReputationToDataBaseFailTestSuccess()
        {
            string username = "ElComandante00007";
            int reputation = 50;
            int resultExpected = Constants.NoDataMatches;
            int resultObtained = operation.UpdateMinusPlayerReputationToDataBase(username, reputation);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void AcceptFriendRequestInToDataBaseTest()
        {
            AccessAccount responderPlayer = new AccessAccount()
            {
                idAccessAccount = 2
            };
            AccessAccount answererPlayer = new AccessAccount()
            {
                idAccessAccount = 1
            };
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = friendshipOperation.AcceptFriendRequestInToDataBase(responderPlayer, answererPlayer);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void ModifyMatchStateTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "123456",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Cancelled.ToString(),
            };
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = matchToCreateOperationTest.ModifyMatchState(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void ModifyMatchStateFailTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "125643",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Cancelled.ToString(),
            };
            int resultExpected = Constants.NoDataMatches;
            int resultObtained = matchToCreateOperationTest.ModifyMatchState(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
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
            int expectedResult = Constants.NoDataMatches;
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
            int expectedResult = Constants.NoDataMatches;
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
            int expectedResult = Constants.NoDataMatches;
            int obtainedResult = leaderBoardOperation.UpdateLoserResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }
    }
}
