using System;
using System.Text;
using DataBaseManager.Operations;
using HiveGameService.Utilities;
using Xunit;


namespace TestServer
{
    public class UserOperationTest
    {

        private UserOperation operation = new UserOperation();

        [Fact]
        public void AddUserToDataBaseTestSuccess()
        {
            DataBaseManager.AccessAccount newAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                username = "Chris985",
                password = "123456",
                email = "chrisvasquez985@gmail.com",
                reputation = 100
            };
            DataBaseManager.Profile newProfileTest = new DataBaseManager.Profile()
            {
                nickname = "christolin",
                createdDate = DateTime.Now,
                imagePath = "images//imageProfile.png"
            };
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = operation.addUserToDataBase(newProfileTest, newAccessAccountTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void GetUserDataFromDataBaseTest()
        {
            UserData userExpected = new UserData();
            string username = "Chris985";
            string password = "654321";
            userExpected.username = "Chris985";
            userExpected.email = "vasquezChris984@gmail.com";
            userExpected.idProfile = 1;
            userExpected.idAccessAccount = 1;
            userExpected.createdDate = DateTime.Parse("2024-10-11");
            userExpected.nickname = "chrissss";
            userExpected.imagePath = "image2.png";
            userExpected.reputation = 100;
            userExpected.FK_IdAccount = 1;
            UserData userObtained = (UserData)operation.GetUserDataFromDataBase(username, password);
            Assert.Equal(userExpected, userObtained);
        }

        [Fact]
        public void UpdateLoginCredentialsToDataBaseTestSuccess()
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
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = operation.UpdateLoginCredentialsToDataBase(odlAccessAccountTest, updatedAccessAccountTest);
            Assert.Equal(resultExpected,resultObtained);
        }

        [Fact]
        public void UpdateProfileToDataBaseTestSuccess()
        {
            DataBaseManager.Profile newUpdatedProfile = new DataBaseManager.Profile()
            {
                nickname = "chrisss",
                imagePath = "image2.png"
            };
            string email = "vasquezchris984@gmail.com";
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = operation.UpdateProfileToDataBase(newUpdatedProfile, email);
            Assert.Equal(resultExpected,resultObtained);
        }

        [Fact]
        public void VerifyExistingAccessAccountIntoDataBaseTestSuccess()
        {
            string email = "vasquezChris984@gmail.com";
            string username = "Chris985";
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = operation.VerifyExistingAccessAccountIntoDataBase(email, username);
            Assert.Equal(resultExpected,resultObtained);
        }

        [Fact]
        public void VerifyCredentialsFromDataBaseTest()
        {
            string username = "Chris985";
            string password = "654321";
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, password);
            Assert.Equal(resultExpected,resultObtained);
        }
    }
}
