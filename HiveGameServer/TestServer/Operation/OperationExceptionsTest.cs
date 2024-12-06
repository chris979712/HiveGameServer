using DataBaseManager;
using DataBaseManager.Operations;
using DataBaseManager.Utilities;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using Xunit;

namespace TestServer.Operation
{
    public class OperationExceptionsTest
    {
        private UserOperation operation = new UserOperation();
        private FriendshipOperation friendshipOperation = new FriendshipOperation();
        private FriendRequestOperation friendRequestOperation = new FriendRequestOperation();

        [Fact]
        public void AddUserToDataBaseExceptionTestSuccess()
        {
            DataBaseManager.AccessAccount newAccessAcountEmpty = new DataBaseManager.AccessAccount();
            DataBaseManager.Profile newProfileEmpty = new DataBaseManager.Profile();
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = operation.addUserToDataBase(newProfileEmpty, newAccessAcountEmpty);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void GetUserProfileByUsernameExceptionSuccess()
        {
            string username = "Chris985";
            UserData userDataExpected = new UserData()
            {
                idProfile = -1
            };
            UserData userDataObtained = operation.GetUserProfileByUsername(username);
            Assert.Equal(userDataExpected, userDataObtained);
        }

        [Fact]
        public void GetUserToDataBaseExceptionTestSuccess()
        {
            UserData userExpected = new UserData();
            string username = "Chris985";
            string password = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92";
            userExpected.idAccessAccount = Constants.ErrorOperation;
            UserData userObtained = (UserData)operation.GetUserDataFromDataBase(username, password);
            Assert.Equal(userExpected.idAccessAccount, userObtained.idAccessAccount);
        }


        [Fact]
        public void UpdateLoginCredentialToDataBaseExceptionTestSuccess()
        {
            DataBaseManager.AccessAccount odlAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                email = "chrisvasquez985@gmail.com",
                password = "123456"
            };
            DataBaseManager.AccessAccount updatedAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                email = "vasquezChris984@gmail.com",
                password = "123456"
            };
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = operation.UpdateLoginCredentialsToDataBase(odlAccessAccountTest, updatedAccessAccountTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdatePlayerMinusReputationToDataBaseExceptionTestSuccess()
        {
            string username = "Chris985";
            int reputation = 50;
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = operation.UpdateMinusPlayerReputationToDataBase(username, reputation);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdatePlayerPlusReputationToDataBaseExceptionTestSuccess()
        {
            string username = "Chris985";
            int reputation = 50;
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = operation.UpdatePlusPlayerReputationToDataBase(username, reputation);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void UpdateProfileToDataBaseExceptionTestSucces()
        {
            DataBaseManager.Profile newUpdatedProfile = new DataBaseManager.Profile()
            {
                FK_IdAccount = 1,
                nickname = "chrisss",
                imagePath = "/Images/Avatars/Avatar2.png",
                description = "Si"
            };
            string email = "vasquezchris984@gmail.com";
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = operation.UpdateProfileToDataBase(newUpdatedProfile, email);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingAccessAccountIntoDataBaseExceptionTestSuccess()
        {
            string email = "vasquezChris984@gmail.com";
            string username = "Chris985";
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = operation.VerifyExistingAccessAccountIntoDataBase(email, username);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyCredentialsFromDataBaseExceptionTestSuccess()
        {
            string username = "Chris985";
            string email = "chrisvasquez985@gmail.com";
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, email);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyPasswordCredentialsFromDataBaseExceptionTestSuccess()
        {
            string username = "Chris985";
            string password = "654321";
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, password);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void RegisterMatchToDataBaseExceptionTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "654321",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = matchToCreateOperationTest.RegisterMatchToDataBase(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void ModifyMatchStateExceptionTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "125673",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Finished.ToString(),
            };
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = matchToCreateOperationTest.ModifyMatchState(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingActiveMatchExceptionTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "654321",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = matchToCreateOperationTest.VerifyExistingActiveMatch(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyMatchCreatorExceptionTestSuccess()
        {
            MatchOperation matchOperation = new MatchOperation();
            Match matchToFind = new Match()
            {
                code = "111111",
                FK_IdAccount = 1
            };
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = matchOperation.VerifyMatchCreator(matchToFind);
            Assert.Equal(resultExpected, resultObtained);
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
            leaderBoardsExpected.Add(playerLeaderBoardExpectedOne);
            List<PlayerLeaderBoard> leaderBoardsObtained = leaderBoardOperation.GetAllPlayersLeaderboardsFromDataBase();
            Assert.Equal(leaderBoardsObtained[0].idAccount, leaderBoardsExpected[0].idAccount);
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
            Assert.Equal(playerLeaderBoard.idAccount, playerLeaderBoardExpected.idAccount);
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
        public void UpdateWinnerResultToPlayerLeaderBoardToDataBaseExceptionTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            int expectedResult = -1;
            int obtainedResult = leaderBoardOperation.UpdateWinnerResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }

        [Fact]
        public void UpdateLoserResultToPlayerLeaderBoardToDataBaseExceptionTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            int expectedResult = -1;
            int obtainedResult = leaderBoardOperation.UpdateLoserResultToPlayerLeaderBoardToDataBase(idAccount);
            Assert.Equal(expectedResult, obtainedResult);
        }

        [Fact]
        public void GetFriendByUsernameExceptionTestSuccess()
        {
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            Profile profileErrorTest = new Profile()
            {
                idProfile = Constants.ErrorOperation
            };
            string username = "Chris985";
            Profile profileObtained = friendshipOperation.GetFriendByUsername(accountTest, username);
            Assert.Equal(profileErrorTest.FK_IdAccount, profileObtained.FK_IdAccount);
        }

        [Fact]
        public void CreateFriendRequestToDataBaseExceptionTestSuccess()
        {
            AccessAccount accountPlayerTest = new AccessAccount()
            {
                idAccessAccount = 1
            };
            AccessAccount receiverPlaterTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = friendRequestOperation.CreateFriendRequestToDataBase(accountPlayerTest, receiverPlaterTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void GetFriendRequestsFromDataBaseExceptionTestSuccess()
        {
            List<Profile> friendsRequestListExpected = new List<Profile>();
            Profile profileObtainedTest = new Profile()
            {
                idProfile = -1
            };
            Profile searcherPlayerTest = new Profile()
            {
                FK_IdAccount = 2
            };
            friendsRequestListExpected.Add(profileObtainedTest);
            List<Profile> friendRequestListObtained = friendRequestOperation.GetFriendRequestsFromDataBase(searcherPlayerTest);
            Assert.Equal(friendsRequestListExpected[0].idProfile, friendRequestListObtained[0].idProfile);
        }

        [Fact]
        public void AcceptFriendRequestInToDataBaseExceptionTestSuccess()
        {
            AccessAccount playerOne = new AccessAccount()
            {
                idAccessAccount = 2
            };
            AccessAccount playerTwo = new AccessAccount()
            {
                idAccessAccount = 3
            };
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = friendRequestOperation.AcceptFriendRequestInToDataBase(playerOne, playerTwo);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void DeclineFriendRequestToDataBaseExceptionTestSuccess()
        {
            AccessAccount playerOne = new AccessAccount()
            {
                idAccessAccount = 2
            };
            AccessAccount playerTwo = new AccessAccount()
            {
                idAccessAccount = 3
            };
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = friendRequestOperation.DeclineFriendRequestToDataBase(playerOne, playerTwo);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingFriendRequestInToDataBaseExceptionTestSuccess()
        {
            AccessAccount playerOne = new AccessAccount()
            {
                idAccessAccount = 2
            };
            AccessAccount playerTwo = new AccessAccount()
            {
                idAccessAccount = 1
            };
            int resultExpected = Constants.ErrorOperation;
            int resultObtained = friendRequestOperation.VerifyExistingFriendRequestInToDataBase(playerOne, playerTwo);
            Assert.Equal(resultExpected, resultObtained);
        }
    }
}
