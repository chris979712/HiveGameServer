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
                nickname = "Chris984",
                createdDate = DateTime.Now,
                imagePath = "/Images/Avatars/Avatar1.png",
                description = "Hola soy chris :D"
            };
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = operation.addUserToDataBase(newProfileTest, newAccessAccountTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void AddUserToDataBaseExceptionTestSuccess()
        {
            DataBaseManager.AccessAccount newAccessAcountEmpty = new DataBaseManager.AccessAccount();
            DataBaseManager.Profile newProfileEmpty = new DataBaseManager.Profile();
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.addUserToDataBase(newProfileEmpty, newAccessAcountEmpty);
            Assert.Equal(resultExpected, resultObtained);
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
                imagePath = "images/Avatars/Avatar1.png",
                username = "Chris985",
                nickname = "christolin"
            };
            UserData userDataObtained = operation.GetUserProfileByUsername(username);
            Assert.Equal(userDataExpected, userDataObtained);
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
            Assert.Equal(userDataExpected.idProfile,userDataObtained.idProfile);    
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
        public void GetUserDataFromDataBaseTestSuccess()
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
            UserData userObtained = operation.GetUserDataFromDataBase(username, password);
            Assert.Equal(userExpected, userObtained);
        }

        [Fact]
        public void GetUserDataFromDataBaseFailTestSuccess()
        {
            UserData userExpected = new UserData() 
            {
                idAccessAccount = 0
            };
            string username = "ElComandante777";
            string password = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92";
            UserData userObtained = operation.GetUserDataFromDataBase(username,password);   
            Assert.Equal(userExpected.idAccessAccount, userObtained.idAccessAccount);
        }

        [Fact]
        public void GetUserToDataBaseExceptionTestSuccess()
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
                password = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92"
            };
            DataBaseManager.AccessAccount updatedAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                email = "vasquezChris984@gmail.com",
                password = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92"
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
                email = "elcomandantesiu777@gmail.com",
                password = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92"
            };
            DataBaseManager.AccessAccount updatedAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                email = "777elcomandantesiu@gmail.com",
                password = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92"
            };
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = operation.UpdateLoginCredentialsToDataBase(odlAccessAccountTest, updatedAccessAccountTest);
            Assert.Equal(resultExpected ,resultObtained);
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
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.UpdateLoginCredentialsToDataBase(odlAccessAccountTest,updatedAccessAccountTest);
            Assert.Equal(resultExpected ,resultObtained);
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
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = userOperation.UpdateProfileToDataBase(newUpdatedProfile, email);
            Assert.Equal(resultExpected,resultObtained);
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
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = userOperation.UpdateProfileToDataBase(newUpdatedProfile, email);
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
            string email = "elcomandantesiu777@gmail.com";
            string username = "ElComandante777";
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = operation.VerifyExistingAccessAccountIntoDataBase(email, username);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingAccessAccountIntoDataBaseExceptionTestSuccess()
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
            string username = "Christo9999";
            string email = "chrivasquez2500@gmail.com";
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, email);
            Assert.Equal(resultExpected,resultObtained);
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
        public void VerifyCredentialsFromDataBaseExceptionTestSuccess()
        {
            string username = "Chris985";
            string email = "chrisvasquez985@gmail.com";
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, email);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyPasswordCredentialsFromDataBaseTestSuccess()
        {
            string username = "Chris985";
            string password = "654321";
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, password);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyPasswordCredentialsFromDataBaseFailTestSuccess()
        {
            string username = "ElComandante777";
            string password = "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92";
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, password);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyPasswordCredentialsFromDataBaseExceptionTestSuccess()
        {
            string username = "Chris985";
            string password = "654321";
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = operation.VerifyCredentialsFromDataBase(username, password);
            Assert.Equal(resultExpected, resultObtained);
        }
    }
}
