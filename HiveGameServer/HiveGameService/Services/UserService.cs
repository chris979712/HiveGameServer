using HiveGameService.Contracts;
using HiveGameService.UtilitiesService;
using System.Linq;
using System.Data.SqlClient;
using DataBaseManager;
using System.Text;
using System.Data.Entity.Infrastructure;
using DataBaseManager.Operations;
using System;

namespace HiveGameService.Services
{
    public partial class HiveGameService : IUserManager
    {

        public int AddUser(Contracts.Profile profile)
        {
            UserOperation operations = new UserOperation();
            DataBaseManager.AccessAccount newAccount = new DataBaseManager.AccessAccount()
            {
                password = profile.password,
                username = profile.username,
                email = profile.email,
                reputation = 100
            };
            DataBaseManager.Profile newProfile = new DataBaseManager.Profile() { 
                nickname = profile.nickname,
                createdDate = profile.createdDate,
                imagePath = profile.imagePath,
                description = profile.description,
            };
            int insertionResult = operations.addUserToDataBase(newProfile,newAccount);
            return insertionResult;
        }

        public Contracts.Profile GetUserProfileByUsername(string username)
        {
            UserOperation userOperation = new UserOperation();
            var userObtained = userOperation.GetUserProfileByUsername(username);
            Contracts.Profile profileObtained = new Contracts.Profile()
            {
                idAccesAccount = userObtained.idAccessAccount,
                username = userObtained.username,
                idProfile = userObtained.idProfile,
                idAccount = userObtained.FK_IdAccount,
                nickname = userObtained.nickname,
                imagePath = userObtained.imagePath,
                reputation = userObtained.reputation,
                email = userObtained.email
            };
            return profileObtained;
        }

        public Contracts.Profile GetUserProfile(string username, string password)
        {
            UserOperation operations = new UserOperation();
            Contracts.Profile profileObtained = new Contracts.Profile();
            Utilities.UserData profileFromDataBase = (Utilities.UserData)operations.GetUserDataFromDataBase(username, password);
            if(profileFromDataBase.idAccessAccount!=Constants.ERROR_OPERATION&& profileFromDataBase.idAccessAccount != Constants.ERROR_OPERATION)
            {
                profileObtained.idAccesAccount = profileFromDataBase.idAccessAccount;
                profileObtained.imagePath = profileFromDataBase.imagePath;
                profileObtained.nickname = profileFromDataBase.nickname;
                profileObtained.username = profileFromDataBase.username;
                profileObtained.email = profileFromDataBase.email;
                profileObtained.createdDate = profileFromDataBase.createdDate;
                profileObtained.reputation = profileFromDataBase.reputation;
                profileObtained.idAccount = profileFromDataBase.FK_IdAccount;
                profileObtained.idProfile = profileFromDataBase.idProfile;
                profileObtained.description = profileFromDataBase.description;
            }
            return profileObtained;
        }

        public int UpdateLoginCredentials(Contracts.AccessAccount oldCredentials, Contracts.AccessAccount newCredentials)
        {
            UserOperation operations = new UserOperation();
            DataBaseManager.AccessAccount oldUpdatedAccessAccount = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = oldCredentials.idAccesAccount,
                password = oldCredentials.password,
                email = oldCredentials.email
            };
            DataBaseManager.AccessAccount updatedAccesAccount = new DataBaseManager.AccessAccount() 
            { 
                idAccessAccount = newCredentials.idAccesAccount,
                password = newCredentials.password,
                email = newCredentials.email
            };
            int updatedResult = operations.UpdateLoginCredentialsToDataBase(oldUpdatedAccessAccount, updatedAccesAccount);
            return updatedResult;
        }

        public int UpdateProfile(Contracts.Profile profile, string email)
        {
            UserOperation operations = new UserOperation();
            DataBaseManager.Profile profileToUpdate = new DataBaseManager.Profile()
            {
                nickname = profile.nickname,
                imagePath = profile.imagePath,
                description = profile.description,
            };
            int updateResult = operations.UpdateProfileToDataBase(profileToUpdate, email);
            return updateResult;
        }

        public int VerifyExistingAccesAccount(string email, string username)
        {
            UserOperation operations = new UserOperation();
            int verificationResult = operations.VerifyExistingAccessAccountIntoDataBase(email,username);
            return verificationResult;
        }
        public int VerifyPasswordCredentials(string email, string password)
        {
            UserOperation operations = new UserOperation();
            int verificationResult = operations.VerifyPasswordCredentialsFromDataBase(email, password);
            return verificationResult;
        }

        public int VerifyCredentials(string username, string email)
        {
            UserOperation operations = new UserOperation();
            int verificationResult = operations.VerifyCredentialsFromDataBase(username, email);
            return verificationResult;
        }

        public int UpdatePlusUserReputation(string username, int reputation)
        {
            UserOperation operation = new UserOperation();
            int modificationResult = operation.UpdatePlusPlayerReputationToDataBase(username, reputation);
            return modificationResult;
        }

        public int UpdateMinusUserReputation(string username, int reputation)
        {
            UserOperation operation= new UserOperation();
            int modificationResult = operation.UpdateMinusPlayerReputationToDataBase(username,reputation);
            return modificationResult;
        }
    }
}
