using System;
using System.Diagnostics.Contracts;
using System.Security.Cryptography;
using System.Text;
using DataBaseManager.Operations;
using HiveGameService.Utilities;
using Xunit;


namespace TestServer
{
    public class UserOperationTest
    {

        private UserOperation operation = new UserOperation();

        public static string hashToSHA1(string textToHash)
        {
            StringBuilder stringHashBuilder = new StringBuilder();
            byte[] inputBytes = Encoding.UTF8.GetBytes(textToHash);
            using (SHA1 sha1 = SHA1.Create())
            {
                byte[] hashBytes = sha1.ComputeHash(inputBytes);
                string hexaDecimalFormat = "x2";
                for (int indexBytes = 0; indexBytes < hashBytes.Length; indexBytes++)
                {
                    stringHashBuilder.Append(hashBytes[indexBytes].ToString(hexaDecimalFormat));
                }
            }
            return stringHashBuilder.ToString();
        }

        [Fact]
        public void AddUserToDataBaseTestSuccess()
        {
            string hashedPassword = hashToSHA1("chrisSiu12*");
            DataBaseManager.AccessAccount newAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                username = "Chris984",
                password = hashedPassword,
                email = "chrisvasquez985@gmail.com",
                reputation = 100
            };
            DataBaseManager.Profile newProfileTest = new DataBaseManager.Profile()
            {
                nickname = "christolin",
                createdDate = DateTime.Now,
                imagePath = "imageProfile.png",
                description = "Hola soy chris :D"
            };
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = operation.addUserToDataBase(newProfileTest, newAccessAccountTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void AddUserToDataBaseFailTestSuccess()
        {
            DataBaseManager.AccessAccount newAccessAcountEmpty = new DataBaseManager.AccessAccount();
            DataBaseManager.Profile newProfileEmpty = new DataBaseManager.Profile();
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.addUserToDataBase(newProfileEmpty, newAccessAcountEmpty);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void GetUserDataFromDataBaseTest()
        {
            UserData userExpected = new UserData();
            string username = "Chris985";
            string password = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92";
            userExpected.username = "Chris985";
            userExpected.email = "vasquezChris984@gmail.com";
            userExpected.idProfile = 1;
            userExpected.idAccessAccount = 1;
            userExpected.createdDate = DateTime.Parse("2024-10-12");
            userExpected.nickname = "chrisss";
            userExpected.imagePath = "image2.png";
            userExpected.reputation = 100;
            userExpected.FK_IdAccount = 1;
            userExpected.description = "Hola soy chris :D";
            UserData userObtained = (UserData)operation.GetUserDataFromDataBase(username, password);
            Assert.Equal(userExpected, userObtained);
        }

        [Fact]
        public void GetUserToDataBaseFailTest()
        {
            UserData userExpected = new UserData();
            string username = "Chris985";
            string password = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92";
            userExpected.idAccessAccount = Constants.ERROR_OPERATION;
            UserData userObtained = (UserData)operation.GetUserDataFromDataBase(username, password);
            Assert.Equal(userExpected.idAccessAccount, userObtained.idAccessAccount);
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
        public void UpdateLoginCredentialToDataBaseFailTestSuccess()
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
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.UpdateLoginCredentialsToDataBase(odlAccessAccountTest,updatedAccessAccountTest);
            Assert.Equal(resultExpected ,resultObtained);
        }

        [Fact]
        public void UpdateProfileToDataBaseTestSuccess()
        {
            DataBaseManager.Profile newUpdatedProfile = new DataBaseManager.Profile()
            {
                nickname = "chrisss",
                imagePath = "image2.png",
                description = "Si"
            };
            string email = "vasquezchris984@gmail.com";
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = operation.UpdateProfileToDataBase(newUpdatedProfile, email);
            Assert.Equal(resultExpected,resultObtained);
        }

        [Fact]
        public void UpdateProfileToDataBaseFailTestSucces()
        {
            DataBaseManager.Profile newUpdatedProfile = new DataBaseManager.Profile()
            {
                nickname = "chrisss",
                imagePath = "image2.png",
                description = "Si"
            };
            string email = "vasquezchris984@gmail.com";
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.UpdateProfileToDataBase(newUpdatedProfile, email);
            Assert.Equal(resultExpected, resultObtained);
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
        public void VerifyExistingAccessAccountIntoDataBaseFailTestSuccess()
        {
            string email = "vasquezChris984@gmail.com";
            string username = "Chris985";
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.VerifyExistingAccessAccountIntoDataBase(email, username);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyCredentialsFromDataBaseTestSuccess()
        {
            string username = "Chris985";
            string password = "654321";
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, password);
            Assert.Equal(resultExpected,resultObtained);
        }

        [Fact]
        public void VerifyCredentialsFromDataBaseFailTestSuccess()
        {
            string username = "Chris985";
            string password = "654321";
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, password);
            Assert.Equal(resultExpected, resultObtained);
        }
    }
}
