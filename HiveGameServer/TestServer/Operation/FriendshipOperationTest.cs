using System;
using System.Collections.Generic;
using System.Text;
using DataBaseManager;
using DataBaseManager.Operations;
using HiveGameService.Utilities;
using Xunit;


namespace TestServer
{
    public class FriendshipOperationTest
    {

        private FriendshipOperation friendshipOperation = new FriendshipOperation();


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
                nickname = "Chris984",
                imagePath = "/Images/Avatars/Avatar1.png",
                createdDate = DateTime.Parse("2024-10-23"),
                idProfile = 1,
                idAccessAccount = 1,
                description = "Hola soy chris :D",
                username = "Chris984",
                email = "chrisvasquez985@gmail.com",
                reputation = 100
            };
            expectedProfiles.Add(profileObtainedTest);
            List<UserData> profilesObtained = friendshipOperation.GetAllFriendsFromDataBase(accountTest);
            Assert.Equal(expectedProfiles, profilesObtained);
        }

        [Fact]
        public void GetAllFriendsFromDataBaseFailTestSuccess()
        {
            List<UserData> expectedProfiles = new List<UserData>();
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            UserData profileErrorTest = new UserData()
            {
                idProfile = Constants.ERROR_OPERATION
            };
            expectedProfiles.Add(profileErrorTest);
            List<UserData> profilesObtained = friendshipOperation.GetAllFriendsFromDataBase(accountTest);
            Assert.Equal(profilesObtained[0].idProfile, expectedProfiles[0].idProfile);
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
                nickname = "Chris984",
                imagePath = "/Images/Avatars/Avatar1.png",
                createdDate = DateTime.Parse("2024-10-23"),
                idProfile = 1,
                FK_IdAccount = 1,
                description = "Hola soy chris :D"
            };
            string username = "Chris984";
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
            Profile profileObtained = friendshipOperation.GetFriendByUsername(accountTest,username);
            Assert.Equal(profileExpected.FK_IdAccount, profileObtained.FK_IdAccount);
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
                idProfile = Constants.ERROR_OPERATION
            };
            string username = "Chris985";
            Profile profileObtained = friendshipOperation.GetFriendByUsername(accountTest, username);
            Assert.Equal(profileErrorTest.FK_IdAccount, profileObtained.FK_IdAccount);
        }

        [Fact]
        public void DeleteFriendFromDataBaseTestSuccess()
        {
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 1
            };
            AccessAccount accountTestTwo = new AccessAccount()
            {
                idAccessAccount = 2
            };
            int expectedResult = Constants.SUCCES_OPERATION;
            int obtainedResult = friendshipOperation.DeleteFriendFromDataBase(accountTest, accountTestTwo);
            Assert.Equal(expectedResult, obtainedResult);

        }

        [Fact]
        public void DeleteFriendFromDataBaseFailTestSuccess()
        {
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            AccessAccount accountTestTwo = new AccessAccount()
            {
                idAccessAccount = 3
            };
            int expectedResult = Constants.ERROR_OPERATION;
            int obtainedResult = friendshipOperation.DeleteFriendFromDataBase(accountTest, accountTestTwo);
            Assert.Equal(expectedResult, obtainedResult);
        }

    }
}
