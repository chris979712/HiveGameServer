using DataBaseManager;
using DataBaseManager.Operations;
using HiveGameService.Utilities;
using System;
using System.Security.Cryptography;
using System.Text;
using Xunit;

namespace TestServer.Operation
{
    public class InsertionOperationTest : IClassFixture<DatabaseFixture>
    {
        private FriendRequestOperation operation = new FriendRequestOperation();

        [Fact]
        public void RegisterMatchToDataBaseTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "123456",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = matchToCreateOperationTest.RegisterMatchToDataBase(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

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
            int resultExpected = Constants.SuccessOperation;
            int resultObtained = operation.CreateFriendRequestToDataBase(accountPlayerTest, receiverPlaterTest);
            Assert.Equal(resultExpected, resultObtained);
        }

    }

    public class DatabaseFixture : IDisposable
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
        public DatabaseFixture()
        {
            string hashedPassword = hashToSHA2("chrisSiu12*");
            DataBaseManager.AccessAccount newAccessAccountSecond = new DataBaseManager.AccessAccount()
            {
                username = "Juan007",
                password = hashedPassword,
                email = "juannegrete@gmail.com",
                reputation = 100
            };
            DataBaseManager.Profile newProfileSecond = new DataBaseManager.Profile()
            {
                nickname = "juan",
                createdDate = DateTime.Now,
                imagePath = "/Images/Avatars/Avatar1.png",
                description = "Hola soy juan"
            };
            DataBaseManager.AccessAccount newAccessAccountThird = new DataBaseManager.AccessAccount()
            {
                username = "Oscar777",
                password = hashedPassword,
                email = "oscar777@gmail.com",
                reputation = 100
            };
            DataBaseManager.Profile newProfileThird = new DataBaseManager.Profile()
            {
                nickname = "oscarin",
                createdDate = DateTime.Now,
                imagePath = "/Images/Avatars/Avatar1.png",
                description = "Hola soy oscar"
            };
            operation.addUserToDataBase(newProfileSecond, newAccessAccountSecond);
            operation.addUserToDataBase(newProfileThird, newAccessAccountThird);
        }

        public void Dispose()
        {
            Console.WriteLine("All test executed");
        }
    } 
}
