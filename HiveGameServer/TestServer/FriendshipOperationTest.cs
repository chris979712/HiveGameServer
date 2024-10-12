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
                FK_IdAccount = 3
            };
            expectedProfiles.Add(profileObtainedTest);
            expectedProfiles.Add(profileObtainedTwoTest);
            List<Profile> profilesObtained = friendshipOperation.GetAllFriendsFromDataBase(accountTest);
            Assert.Equal(expectedProfiles, profilesObtained);
        }

        [Fact]
        public void GetFriendByUsernameTestFailed()
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
                FK_IdAccount = 1
            };
            string username = "Chris985";
            Profile profileObtained = friendshipOperation.GetFriendByUsername(accountTest, username);
            Assert.Equal(profileExpected.FK_IdAccount, profileObtained.FK_IdAccount);
        }

        [Fact]
        public void DeleteFriendFromDataBaseTest()
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

    }
}
