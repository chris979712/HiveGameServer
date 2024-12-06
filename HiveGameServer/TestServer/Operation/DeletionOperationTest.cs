using DataBaseManager;
using DataBaseManager.Operations;
using HiveGameService.Utilities;
using Xunit;

namespace TestServer.Operation
{
    public class DeletionOperationTest
    {
        private FriendRequestOperation operation = new FriendRequestOperation();
        private FriendshipOperation friendshipOperation = new FriendshipOperation();

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
            int expectedResult = Constants.NO_DATA_MATCHES;
            int obtainedResult = friendshipOperation.DeleteFriendFromDataBase(accountTest, accountTestTwo);
            Assert.Equal(expectedResult, obtainedResult);
        }
    }
}
