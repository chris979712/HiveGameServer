﻿using System;
using System.Collections.Generic;
using System.Text;
using DataBaseManager;
using DataBaseManager.Operations;
using HiveGameService.Utilities;
using Xunit;

namespace TestServer
{
    public class FriendRequestOperationTest
    {
        private FriendRequestOperation operation = new FriendRequestOperation();

        [Fact]
        public void CreateFriendRequestToDataBasetTestSuccess()
        {
            AccessAccount accountPlayerTest = new AccessAccount()
            {
                idAccessAccount = 1
            };
            AccessAccount receiverPlaterTest = new AccessAccount()
            {
                idAccessAccount = 2
            };
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = operation.CreateFriendRequestToDataBase(accountPlayerTest, receiverPlaterTest);
            Assert.Equal(resultExpected, resultObtained);
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
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.CreateFriendRequestToDataBase(accountPlayerTest, receiverPlaterTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void GetFriendRequestsFromDataBaseTest()
        {
            List<Profile> friendsRequestListExpected = new List<Profile>();
            Profile profileObtainedTest = new Profile()
            {
                nickname = "Chris984",
                imagePath = "/Images/Avatars/Avatar1.png",
                createdDate = DateTime.Parse("2024-10-23"),
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
            Profile searcherPlayerTest = new Profile()
            {
                FK_IdAccount = 2
            };
            friendsRequestListExpected.Add(profileObtainedTest);
            friendsRequestListExpected.Add(profileObtainedTwoTest);
            List<Profile> friendRequestListObtained = operation.GetFriendRequestsFromDataBase(searcherPlayerTest);
            Assert.Equal(friendsRequestListExpected, friendRequestListObtained);
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
            List<Profile> friendRequestListObtained = operation.GetFriendRequestsFromDataBase(searcherPlayerTest);
            Assert.Equal(friendsRequestListExpected[0].idProfile, friendRequestListObtained[0].idProfile);
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
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = operation.AcceptFriendRequestInToDataBase(responderPlayer, answererPlayer);
            Assert.Equal(resultExpected, resultObtained);
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
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.AcceptFriendRequestInToDataBase(playerOne, playerTwo);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void DeclineFriendRequestToDataBaseTestSuccess()
        {
            AccessAccount playerOne = new AccessAccount()
            {
                idAccessAccount = 2
            };
            AccessAccount playerTwo = new AccessAccount()
            {
                idAccessAccount = 3
            };
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = operation.DeclineFriendRequestToDataBase(playerOne, playerTwo);
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
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.DeclineFriendRequestToDataBase(playerOne, playerTwo);
            Assert.Equal(resultExpected , resultObtained);
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
                idAccessAccount = 1
            };
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = operation.VerifyExistingFriendRequestInToDataBase(playerOne,playerTwo);
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
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.VerifyExistingFriendRequestInToDataBase(playerOne, playerTwo);
            Assert.Equal(resultExpected, resultObtained);
        }
    }
}
