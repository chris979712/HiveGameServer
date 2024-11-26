using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.Core;
using System.Security.Cryptography;
using System.Security.Principal;

namespace DataBaseManager.Operations
{
    public class UserOperation
    {
        public int addUserToDataBase(Profile profile, AccessAccount accessAccount)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int result = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    using (var dataBaseContextTransaction = dataBaseContext.Database.BeginTransaction())
                    {
                        try
                        {
                            var newAccessAccount = new AccessAccount
                            {
                                password = accessAccount.password,
                                username = accessAccount.username,
                                email = accessAccount.email,
                                reputation = accessAccount.reputation
                            };
                            dataBaseContext.AccessAccount.Add(newAccessAccount);
                            dataBaseContext.SaveChanges();
                            int lastIdAccountInserted = newAccessAccount.idAccessAccount;
                            var newProfile = new Profile
                            {
                                imagePath = profile.imagePath,
                                createdDate = profile.createdDate,
                                nickname = profile.nickname,
                                FK_IdAccount = lastIdAccountInserted,
                                description = profile.description,
                            };
                            dataBaseContext.Profile.Add(newProfile);
                            dataBaseContext.SaveChanges();
                            var newLeaderboard = new Leaderboard
                            {
                                FK_IdAccount = lastIdAccountInserted,
                                totalOfMatches = 0,
                                drawMatches = 0,
                                wonMatches = 0,
                                lostMatches = 0
                            };
                            dataBaseContext.Leaderboard.Add(newLeaderboard);
                            dataBaseContext.SaveChanges();
                            dataBaseContextTransaction.Commit();
                            result = Constants.SUCCES_OPERATION;
                        }
                        catch (DbUpdateException updateException)
                        {
                            logger.LogError(updateException);
                            dataBaseContextTransaction.Rollback();
                            result = Constants.ERROR_OPERATION;
                        }
                        catch (SqlException sqlException)
                        {
                            logger.LogError(sqlException);
                            dataBaseContextTransaction.Rollback();
                            result = Constants.ERROR_OPERATION;
                        }
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }
            return result;
        }


        public UserData GetUserProfileByUsername(string username)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            UserData userFound = new UserData();
            userFound.idProfile = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContet = new HiveEntityDataModel())
                {
                    var userData = dataBaseContet.AccessAccount.Where(account => account.username == username).Join(dataBaseContet.Profile,
                        account => account.idAccessAccount, profile => profile.FK_IdAccount, (account, profile) => new UserData
                        {
                            idAccessAccount = account.idAccessAccount,
                            username = account.username,
                            idProfile = profile.idProfile,
                            FK_IdAccount = profile.FK_IdAccount,
                            nickname = profile.nickname,
                            imagePath = profile.imagePath,
                            email = account.email,
                            reputation = account.reputation
                        }).FirstOrDefault();
                    if (userData != null)
                    {
                        userFound = userData;
                    }
                    else
                    {
                        userFound.idProfile = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                userFound.idProfile = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                userFound.idProfile = Constants.ERROR_OPERATION;
            }
            return userFound;
        }

        public UserData GetUserDataFromDataBase(string username, string password)
        {
            UserData dataObtained = new UserData();
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var userData = dataBaseContext.AccessAccount.Where(account => account.username == username && account.password == password).Join(
                        dataBaseContext.Profile, account => account.idAccessAccount, profile => profile.FK_IdAccount, (account, profile) => new UserData
                        {
                            idAccessAccount = account.idAccessAccount,
                            username = account.username,
                            email = account.email,
                            reputation = account.reputation,
                            idProfile = profile.idProfile,
                            FK_IdAccount = profile.FK_IdAccount,
                            nickname = profile.nickname,
                            imagePath = profile.imagePath,
                            createdDate = profile.createdDate,
                            description = profile.description,
                        }).FirstOrDefault();
                    if(userData != null)
                    {
                        dataObtained = userData;
                    }
                    else
                    {
                        dataObtained.idAccessAccount = Constants.NO_DATA_MATCHES;
                    }
                }
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                dataObtained.idAccessAccount = Constants.ERROR_OPERATION;
            }
            catch(EntityException entityException)
            {
                logger.LogError(entityException);
                dataObtained.idAccessAccount = Constants.ERROR_OPERATION;
            }
            return dataObtained;
        }

        public int UpdatePlusPlayerReputationToDataBase(string username, int reputation)
        {
            int updateResult = Constants.ERROR_OPERATION;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using(var databaseContext = new HiveEntityDataModel())
                {
                    var existinAccount = databaseContext.AccessAccount.FirstOrDefault(user => user.username == username);
                    if (existinAccount != null)
                    {
                        existinAccount.reputation += reputation;
                        databaseContext.SaveChanges();
                        updateResult = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        updateResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (DbUpdateException updateException)
            {
                logger.LogError(updateException);
                updateResult = Constants.ERROR_OPERATION;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                updateResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                updateResult = Constants.ERROR_OPERATION;
            }
            return updateResult;
        }

        public int UpdateMinusPlayerReputationToDataBase(string username, int reputation)
        {
            int updateResult = Constants.ERROR_OPERATION;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using (var databaseContext = new HiveEntityDataModel())
                {
                    var existinAccount = databaseContext.AccessAccount.FirstOrDefault(user => user.username == username);
                    if (existinAccount != null)
                    {
                        existinAccount.reputation -= reputation;
                        databaseContext.SaveChanges();
                        updateResult = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        updateResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (DbUpdateException updateException)
            {
                logger.LogError(updateException);
                updateResult = Constants.ERROR_OPERATION;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                updateResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                updateResult = Constants.ERROR_OPERATION;
            }
            return updateResult;
        }

        public int UpdateLoginCredentialsToDataBase(AccessAccount oldAccessAccount, AccessAccount updatedAccessAccount)
        {
            int updatedResult = Constants.ERROR_OPERATION;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    try
                    {
                        var existingAccessAccount = dataBaseContext.AccessAccount.FirstOrDefault(accessAccount => accessAccount.email == oldAccessAccount.email);
                        if (existingAccessAccount != null)
                        {
                            existingAccessAccount.email = updatedAccessAccount.email;
                            existingAccessAccount.password = updatedAccessAccount.password;
                            dataBaseContext.SaveChanges();
                            updatedResult = Constants.SUCCES_OPERATION;
                        }
                        else
                        {
                            updatedResult = 0;
                        }
                    }
                    catch (DbUpdateException updateException)
                    {
                        logger.LogError(updateException);
                        updatedResult = Constants.ERROR_OPERATION;
                    }
                    catch (SqlException sqlException)
                    {
                        logger.LogError(sqlException);
                        updatedResult = Constants.ERROR_OPERATION;
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }
            return updatedResult;
        }

        public int UpdateProfileToDataBase(Profile profile, string email)
        {
            int updateResult = -1;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    using (var dataBaseContextTransaction = dataBaseContext.Database.BeginTransaction())
                    {
                        try
                        {
                            var existingAccessAccount = dataBaseContext.AccessAccount.FirstOrDefault(AccessAccount => AccessAccount.email == email);
                            if (existingAccessAccount != null)
                            {
                                var existingProfile = dataBaseContext.Profile.FirstOrDefault(profileDataBase => profileDataBase.FK_IdAccount == existingAccessAccount.idAccessAccount);
                                if (existingProfile != null)
                                {
                                    existingProfile.nickname = profile.nickname;
                                    existingProfile.imagePath = profile.imagePath;
                                    existingProfile.description = profile.description;
                                    dataBaseContext.SaveChanges();
                                    dataBaseContextTransaction.Commit();
                                    updateResult = Constants.SUCCES_OPERATION;
                                }
                                else
                                {
                                    updateResult = Constants.NO_DATA_MATCHES;
                                }
                            }
                            else
                            { 
                                updateResult = Constants.NO_DATA_MATCHES;
                            }
                        }
                        catch (DbUpdateException updateException)
                        {
                            logger.LogError(updateException);
                            dataBaseContextTransaction.Rollback();
                            updateResult = Constants.ERROR_OPERATION;
                        }
                        catch (SqlException sqlException)
                        {
                            logger.LogError(sqlException);
                            dataBaseContextTransaction.Rollback();
                            updateResult = Constants.ERROR_OPERATION;
                        }
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }
            return updateResult;
        }

        public int VerifyExistingAccessAccountIntoDataBase(string email, string username)
        {
            int verificationResult = -1;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingAccount = dataBaseContext.AccessAccount.FirstOrDefault(accessAccount => accessAccount.email == email && accessAccount.username == username);
                    if (existingAccount != null)
                    {
                        verificationResult = Constants.DATA_MATCHES;
                    }
                    else
                    {
                        verificationResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                verificationResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                verificationResult = Constants.ERROR_OPERATION;
            }
            return verificationResult;
        }

        public int VerifyCredentialsFromDataBase(string username, string email)
        {
            int verificationResult = -1;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingAccount = dataBaseContext.AccessAccount.Where(accessAccount => accessAccount.email == email).FirstOrDefault();
                    if (existingAccount != null && existingAccount.username != username)
                    {
                        verificationResult = Constants.DATA_MATCHES;
                    }
                    else
                    {
                        verificationResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                verificationResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                verificationResult = Constants.ERROR_OPERATION;
            }
            return verificationResult;
        }

        public int VerifyPasswordCredentialsFromDataBase(string username, string password)
        {
            int verificationResult = -1;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingAccount = dataBaseContext.AccessAccount.Where(accessAccount => accessAccount.username == username).FirstOrDefault();
                    if (existingAccount != null && existingAccount.password == password)
                    {
                        verificationResult = Constants.DATA_MATCHES;
                    }
                    else
                    {
                        verificationResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                verificationResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                verificationResult = Constants.ERROR_OPERATION;
            }
            return verificationResult;
        }

    }
}
