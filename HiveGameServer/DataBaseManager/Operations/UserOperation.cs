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
                                imagePath = Constants.DEFAULT_IMAGE_PLAYER,
                                createdDate = profile.createdDate,
                                nickname = profile.nickname,
                                FK_IdAccount = lastIdAccountInserted
                            };
                            dataBaseContext.Profile.Add(newProfile);
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

        public int updateLoginCredentialsToDataBase(AccessAccount oldAccessAccount, AccessAccount updatedAccessAccount)
        {
            int updatedResult = -1;
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

        public int updateProfileToDataBase(Profile profile, string email)
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
                            var existingProfile = dataBaseContext.Profile.FirstOrDefault(profileDataBase => profileDataBase.FK_IdAccount == existingAccessAccount.idAccessAccount);
                            if (existingAccessAccount != null && existingProfile != null)
                            { 
                                existingProfile.nickname = profile.nickname;
                                existingProfile.imagePath = profile.imagePath;
                                dataBaseContext.SaveChanges();
                                dataBaseContextTransaction.Commit();
                                updateResult = Constants.SUCCES_OPERATION;
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

        public int verifyExistingAccessAccountIntoDataBase(string email, string username)
        {
            int verificationResult = -1;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingAccount = dataBaseContext.AccessAccount.FirstOrDefault(accessAccount => accessAccount.email == email || accessAccount.username == username);
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
     
    }
}
