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
            List<Profile> expectedProfiles = new List<Profile>();
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            Profile profileObtainedTest = new Profile()
            {
                nickname = "chrisss",
                imagePath = "image2.png",
                createdDate = DateTime.Parse("2024-10-11"),
                idProfile = 1,
                FK_IdAccount = 1
            };
            Profile profileObtainedTwoTest = new Profile()
            {
                nickname = "oscarin",
                imagePath = " ",
                createdDate = DateTime.Parse("2024-10-11"),
                idProfile = 3,
                FK_IdAccount = 3,
                description = "Hola soy chris :D"
            };
            expectedProfiles.Add(profileObtainedTest);
            expectedProfiles.Add(profileObtainedTwoTest);
            List<Profile> profilesObtained = friendshipOperation.GetAllFriendsFromDataBase(accountTest);
            Assert.Equal(expectedProfiles, profilesObtained);
        }

        [Fact]
        public void GetAllFriendsFromDataBaseFailTestSuccess()
        {
            List<Profile> expectedProfiles = new List<Profile>();
            AccessAccount accountTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            Profile profileErrorTest = new Profile()
            {
                idProfile = Constants.ERROR_OPERATION
            };
            expectedProfiles.Add(profileErrorTest);
            List<Profile> profilesObtained = friendshipOperation.GetAllFriendsFromDataBase(accountTest);
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
                nickname = "chrisss",
                imagePath = "image2.png",
                createdDate = DateTime.Parse("2024-10-11"),
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
                idAccessAccount = 2
            };
            AccessAccount accountTestTwo = new AccessAccount()
            {
                idAccessAccount = 3
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
