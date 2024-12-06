using System;
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
        public void AddUserToDataBaseTestSuccess()
        {
            string hashedPassword = hashToSHA2("chrisSiu12*");
            DataBaseManager.AccessAccount newAccessAccountTest = new DataBaseManager.AccessAccount()
            {
                username = "Chris985",
                password = hashedPassword,
                email = "chrisvasquez985@gmail.com",
                reputation = 100
            };
            DataBaseManager.Profile newProfileTest = new DataBaseManager.Profile()
            {
                nickname = "christolin",
                createdDate = DateTime.Now,
                imagePath = "/Images/Avatars/Avatar1.png",
                description = "Hola soy chris :D"
            };
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = operation.addUserToDataBase(newProfileTest, newAccessAccountTest);
            Assert.Equal(resultExpected, resultObtained);
        }

    }
}
