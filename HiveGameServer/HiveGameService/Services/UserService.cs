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
            UserOperation operations = new UserOperation();
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
            UserOperation operations = new UserOperation();
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
            UserOperation operations = new UserOperation();
            DataBaseManager.Profile profileToUpdate = new DataBaseManager.Profile()
            {
                nickname = profile.nickname,
                imagePath = profile.imagePath,
            };
            int updateResult = operations.updateProfileToDataBase(profileToUpdate, email);
            return updateResult;
        }

        public int VerifyExistingAccesAccount(string email, string username)
        {
            UserOperation operations = new UserOperation();
            int verificationResult = operations.verifyExistingAccessAccountIntoDataBase(email,username);
            return verificationResult;
        }
    }
}
