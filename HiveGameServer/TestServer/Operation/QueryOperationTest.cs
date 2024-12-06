using DataBaseManager;
using DataBaseManager.Operations;
using DataBaseManager.Utilities;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;
using Xunit;

namespace TestServer.Operation
{
    public class QueryOperationTest : IClassFixture<DatabaseFixtureQuery>
    {
        private UserOperation operation = new UserOperation();
        private FriendshipOperation friendshipOperation = new FriendshipOperation();
        private FriendRequestOperation friendRequestOperation = new FriendRequestOperation();

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
        public void GetUserProfileByUsernameTestSuccess()
        {
            string username = "Chris985";
            UserData userDataExpected = new UserData()
            {
                idProfile = 1,
                idAccessAccount = 1,
                FK_IdAccount = 1,
                imagePath = "images/Avatars/Avatar2.png",
                username = "Chris985",
                nickname = "chrisss",
                email = "vasquezChris984@gmail.com",
                reputation = 100,
            };
            UserData userDataObtained = operation.GetUserProfileByUsername(username);
            Assert.Equal(userDataExpected.username, userDataObtained.username);
        }

        [Fact]
        public void GetUserProfileByUsernameFailTestSuccess()
        {
            string username = "ElComandante777";
            UserData userDataExpected = new UserData()
            {
                idProfile = 0,
            };
            UserData userDataObtained = operation.GetUserProfileByUsername(username);
            Assert.Equal(userDataExpected.idProfile, userDataObtained.idProfile);
        }


        [Fact]
        public void GetUserDataFromDataBaseTestSuccess()
        {
            UserData userExpected = new UserData();
            string username = "Chris985";
            string hashedPassword = hashToSHA2("chrisSiu12*");
            userExpected.username = "Chris985";
            userExpected.email = "vasquezChris984@gmail.com";
            userExpected.idProfile = 1;
            userExpected.idAccessAccount = 1;
            userExpected.createdDate = DateTime.Parse("2024-12-05");
            userExpected.nickname = "chrisss";
            userExpected.imagePath = "images/Avatars/Avatar2.png";
            userExpected.reputation = 100;
            userExpected.FK_IdAccount = 1;
            userExpected.description = "Si";
            UserData userObtained = operation.GetUserDataFromDataBase(username, hashedPassword);
            Assert.Equal(userExpected.username, userObtained.username);
        }

        [Fact]
        public void GetUserDataFromDataBaseFailTestSuccess()
        {
            UserData userExpected = new UserData()
            {
                idAccessAccount = 0
            };
            string username = "ElComandante777";
            string hashedPassword = hashToSHA2("chrisSiu12*");
            UserData userObtained = operation.GetUserDataFromDataBase(username, hashedPassword);
            Assert.Equal(userExpected.idAccessAccount, userObtained.idAccessAccount);
        }

        [Fact]
        public void VerifyExistingAccessAccountIntoDataBaseTestSuccess()
        {
            string email = "vasquezChris984@gmail.com";
            string username = "Chris985";
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = operation.VerifyExistingAccessAccountIntoDataBase(email, username);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingAccessAccountIntoDataBaseFailTestSuccess()
        {
            string email = "elcomandantesiu777@gmail.com";
            string username = "ElComandante777";
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = operation.VerifyExistingAccessAccountIntoDataBase(email, username);
            Assert.Equal(resultExpected, resultObtained);
        }


        [Fact]
        public void VerifyCredentialsFromDataBaseTestSuccess()
        {
            string username = "Christo9999";
            string email = "vasquezChris984@gmail.com";
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, email);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyCredentialsFromDataBaseFailTestSuccess()
        {
            string email = "elcomandantesiu777@gmail.com";
            string username = "ElComandante777";
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, email);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyPasswordCredentialsFromDataBaseTestSuccess()
        {
            string username = "Chris985";
            string password = hashToSHA2("chrisSiu12*");
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = operation.VerifyPasswordCredentialsFromDataBase(username, password);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyPasswordCredentialsFromDataBaseFailTestSuccess()
        {
            string username = "ElComandante777";
            string password = hashToSHA2("chrisSiu13*");
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = operation.VerifyPasswordCredentialsFromDataBase(username, password);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingActiveMatchTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "123456",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = matchToCreateOperationTest.VerifyExistingActiveMatch(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingActiveMatchFailTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "654321",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = matchToCreateOperationTest.VerifyExistingActiveMatch(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyMatchCreatorTestSuccess()
        {
            MatchOperation matchOperation = new MatchOperation();
            Match matchToFind = new Match()
            {
                code = "123456",
                FK_IdAccount = 1
            };
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = matchOperation.VerifyMatchCreator(matchToFind);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyMatchCreatorFailTestSuccess()
        {
            MatchOperation matchOperation = new MatchOperation();
            Match matchToFind = new Match()
            {
                code = "111111",
                FK_IdAccount = 1
            };
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = matchOperation.VerifyMatchCreator(matchToFind);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void GetAllPlayersLeaderboardsFromDataBaseTestSuccess()
        {
            List<PlayerLeaderBoard> leaderBoardsExpected = new List<PlayerLeaderBoard>();
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            PlayerLeaderBoard playerLeaderBoardExpectedOne = new PlayerLeaderBoard()
            {
                wonMatches = 1,
                lostMatches = 1,
                drawMatches = 1,
                totalMatches = 3,
                idAccount = 1,
                username = "Chris985",
                imageProfile = "/Images/Avatars/Avatar2.png"
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
            PlayerLeaderBoard playerLeaderBoardExpectedThree = new PlayerLeaderBoard()
            {
                wonMatches = 0,
                lostMatches = 0,
                drawMatches = 0,
                totalMatches = 0,
                idAccount = 3,
                username = "Oscar777",
                imageProfile = "/Images/Avatars/Avatar1.png"
            };
            leaderBoardsExpected.Add(playerLeaderBoardExpectedOne);
            leaderBoardsExpected.Add(playerLeaderBoardExpectedTwo);
            leaderBoardsExpected.Add(playerLeaderBoardExpectedThree);
            List<PlayerLeaderBoard> leaderBoardsPlayer = leaderBoardOperation.GetAllPlayersLeaderboardsFromDataBase();
            Assert.Equal(leaderBoardsPlayer, leaderBoardsExpected);
        }

        [Fact]
        public void GetPersonalLeaderBoardTestSuccess()
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int idAccount = 1;
            PlayerLeaderBoard playerLeaderBoardExpected = new PlayerLeaderBoard()
            {
                wonMatches = 1,
                lostMatches = 1,
                drawMatches = 1,
                totalMatches = 3,
                idAccount = 1,
                username = "Chris985"
            };
            PlayerLeaderBoard leaderBoardExpected = playerLeaderBoardExpected;
            PlayerLeaderBoard playerLeaderBoard = leaderBoardOperation.GetPersonalLeaderBoard(idAccount);
            Assert.Equal(playerLeaderBoardExpected, playerLeaderBoard);
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
        public void GetAllFriendsFromDataBaseTestSuccess()
        {
            List<UserData> expectedProfiles = new List<UserData>();
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            UserData profileObtainedTest = new UserData()
            {
                nickname = "Chris985",
                imagePath = "/Images/Avatars/Avatar2.png",
                createdDate = DateTime.Parse("2024-12-05"),
                idProfile = 1,
                idAccessAccount = 1,
                description = "Si",
                username = "chrisss",
                email = "vasquezChris984@gmail.com",
                reputation = 100
            };
            expectedProfiles.Add(profileObtainedTest);
            List<UserData> profilesObtained = friendshipOperation.GetAllFriendsFromDataBase(accountTest);
            Assert.Equal(profilesObtained[0].idProfile, expectedProfiles[0].idProfile);
        }

        [Fact]
        public void GetAllFriendsFromDataBaseFailTestSuccess()
        {
            List<UserData> expectedProfiles = new List<UserData>();
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 23
            };
            UserData profileErrorTest = new UserData()
            {
                idProfile = Constants.ERROR_OPERATION
            };
            expectedProfiles.Add(profileErrorTest);
            List<UserData> profilesObtained = friendshipOperation.GetAllFriendsFromDataBase(accountTest);
            Assert.True(profilesObtained.Count==0);
        }

        [Fact]
        public void GetFriendByUsernameTestSuccess()
        {
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            Profile profileExpected = new Profile()
            {
                nickname = "Chris985",
                imagePath = "/Images/Avatars/Avatar2.png",
                createdDate = DateTime.Parse("2024-12-05"),
                idProfile = 1,
                FK_IdAccount = 1,
                description = "Si"
            };
            string username = "Chris985";
            Profile profileObtained = friendshipOperation.GetFriendByUsername(accountTest, username);
            Assert.Equal(profileExpected.FK_IdAccount, profileObtained.FK_IdAccount);
        }

        [Fact]
        public void GetFriendByUsernameFailTestSuccess()
        {
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            Profile profileExpected = new Profile()
            {
                idProfile = 0
            };
            string username = "ElComandante777";
            Profile profileObtained = friendshipOperation.GetFriendByUsername(accountTest, username);
            Assert.Equal(profileExpected.FK_IdAccount, profileObtained.FK_IdAccount);
        }

        [Fact]
        public void GetFriendRequestsFromDataBaseTest()
        {
            List<Profile> friendsRequestListExpected = new List<Profile>();
            Profile profileObtainedTest = new Profile()
            {
                nickname = "juan",
                imagePath = "/Images/Avatars/Avatar1.png",
                createdDate = DateTime.Parse("2024-12-05"),
                idProfile = 3,
                FK_IdAccount = 3
            };
            Profile profileObtainedTwoTest = new Profile()
            {
                nickname = "chrisss",
                imagePath = "/Images/Avatars/Avatar2.png",
                createdDate = DateTime.Parse("2024-12-05"),
                idProfile = 1,
                FK_IdAccount = 1
            };
            Profile searcherPlayerTest = new Profile()
            {
                FK_IdAccount = 2
            };
            friendsRequestListExpected.Add(profileObtainedTest);
            friendsRequestListExpected.Add(profileObtainedTwoTest);
            List<Profile> friendRequestListObtained = friendRequestOperation.GetFriendRequestsFromDataBase(searcherPlayerTest);
            Assert.Equal(friendsRequestListExpected.Count,friendRequestListObtained.Count);
        }

        [Fact]
        public void VerifyExistingFriendRequestInToDataBaseTestSuccess()
        {
            AccessAccount playerOne = new AccessAccount()
            {
                idAccessAccount = 2
            };
            AccessAccount playerTwo = new AccessAccount()
            {
                idAccessAccount = 3
            };
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = friendRequestOperation.VerifyExistingFriendRequestInToDataBase(playerOne, playerTwo);
            Assert.Equal(resultExpected, resultObtained);
        }
    }

    public class DatabaseFixtureQuery : IDisposable
    {
        private FriendRequestOperation operation = new FriendRequestOperation();
        public DatabaseFixtureQuery()
        {
            /*AccessAccount accountPlayerReciver = new AccessAccount()
            {
                idAccessAccount = 2
            };
            AccessAccount receiverPlaterSenderOne = new AccessAccount()
            {
                idAccessAccount = 3
            };
            AccessAccount receiverPlaterSenderTwo = new AccessAccount()
            {
                idAccessAccount = 1
            };
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "123456",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            matchToCreateOperationTest.RegisterMatchToDataBase(matchToCreateTest);
            operation.CreateFriendRequestToDataBase(receiverPlaterSenderOne, accountPlayerReciver);
            operation.CreateFriendRequestToDataBase(receiverPlaterSenderTwo, accountPlayerReciver);
            */
        }

        public void Dispose()
        {
            Console.WriteLine("All test executed");
        }
    }
}
