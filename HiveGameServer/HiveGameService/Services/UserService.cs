using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System.Linq;
using System.Data.SqlClient;
using DataBaseManager;
using System.Text;
using System.Data.Entity.Infrastructure;
using DataBaseManager.Operations;

namespace HiveGameService.Services
{
    public partial class HiveGameService : IUserManager
    {

        public int AddUser(Contracts.Profile profile)
        {
            UserOperations operations = new UserOperations();
            DataBaseManager.AccessAccount newAccount = new DataBaseManager.AccessAccount()
            {
                password = Encoding.UTF8.GetBytes(profile.password),
                username = profile.username,
                email = profile.email,
                reputation = 100
            };
            DataBaseManager.Profile newProfile = new DataBaseManager.Profile() { 
                nickname = profile.nickname,
                createdDate = profile.createdDate,
                imagePath = profile.imagePath,
            };
            int insertionResult = operations.addUserToDataBase(newProfile,newAccount);
            return insertionResult;
        }

        public int UpdateLoginCredentials(Contracts.AccessAccount oldCredentials, Contracts.AccessAccount newCredentials)
        {
            UserOperations operations = new UserOperations();
            DataBaseManager.AccessAccount oldUpdatedAccessAccount = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = oldCredentials.idAccesAccount,
                password = Encoding.UTF8.GetBytes(oldCredentials.password),
                email = oldCredentials.email
            };
            DataBaseManager.AccessAccount updatedAccesAccount = new DataBaseManager.AccessAccount() 
            { 
                idAccessAccount = newCredentials.idAccesAccount,
                password = Encoding.UTF8.GetBytes(newCredentials.password),
                email = newCredentials.email
            };
            int updatedResult = operations.updateLoginCredentialsToDataBase(oldUpdatedAccessAccount, updatedAccesAccount);
            return updatedResult;
        }

        public int UpdateProfile(Contracts.Profile profile, string email)
        {
            UserOperations operations = new UserOperations();
            DataBaseManager.AccessAccount accessAccount = new DataBaseManager.AccessAccount()
            {
                email = email
            };
            DataBaseManager.Profile profileToUpdate = new DataBaseManager.Profile()
            {
                nickname = profile.nickname,
                imagePath = profile.imagePath,
            };
            int updateResult = operations.updateProfileToDataBase(profileToUpdate,accessAccount, email);
            return updateResult;
        }

        public int VerifyExistingAccesAccount(string email, string username)
        {
            UserOperations operations = new UserOperations();
            int verificationResult = operations.verifyExistingAccessAccountIntoDataBase(email,username);
            return verificationResult;
        }
    }
}
