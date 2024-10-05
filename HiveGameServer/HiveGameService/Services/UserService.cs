using System;
using System.Data;
using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System.Linq;
using System.Data.SqlClient;
using System.Data.Entity;
using DataBaseManager;
using System.Text;
using System.Data.Entity.Infrastructure;
using System.Linq.Expressions;
using System.Data.Entity.Core;
using HiveGameService.Utilities;

namespace HiveGameService.Services
{
    public partial class UserService : IUserManager
    {

        public int AddUser(Contracts.Profile profile)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int result = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    using (var dataBaseContextTransaction = dataBaseContext.Database.BeginTransaction())
                    {
                        try
                        {
                            var newAccessAccount = new DataBaseManager.AccesAccount
                            {
                                password = Encoding.UTF8.GetBytes(profile.password),
                                username = profile.username,
                                email = profile.email,
                                reputation = profile.reputation
                            };
                            dataBaseContext.AccesAccount.Add(newAccessAccount);
                            dataBaseContext.SaveChanges();
                            int lastIdAccountInserted = newAccessAccount.idAccessAccount;
                            var newProfile = new DataBaseManager.Profile
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
                        }catch(DbUpdateException updateException)
                        {
                            logger.LogError(updateException);
                            dataBaseContextTransaction.Rollback();
                            result = Constants.ERROR_OPERATION;
                        }catch(SqlException sqlException)
                        { 
                            logger.LogError(sqlException);
                            dataBaseContextTransaction.Rollback();
                            result = Constants.ERROR_OPERATION;
                        }
                    }
                }
            }catch(System.Data.EntityException entityException)
            {
                logger.LogError(entityException);  
            }
            return result;
        }

        public int UpdateLoginCredentials(Contracts.Profile profile, Contracts.Profile updatedProfile)
        {
            int updatedResult = -1;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    try
                    {
                        var existingAccessAccount = dataBaseContext.AccesAccount.FirstOrDefault(accessAccount => accessAccount.email == profile.email);
                        if (existingAccessAccount != null)
                        {
                            existingAccessAccount.email = updatedProfile.email;
                            existingAccessAccount.password = Encoding.UTF8.GetBytes(updatedProfile.password);
                            dataBaseContext.SaveChanges();
                            updatedResult = Constants.SUCCES_OPERATION;
                        }
                        else
                        {
                            updatedResult = 0;
                        }
                    }catch(DbUpdateException updateException)
                    {
                        logger.LogError(updateException);
                        updatedResult = Constants.ERROR_OPERATION;
                    }catch(SqlException sqlException)
                    {
                        logger.LogError(sqlException);
                        updatedResult = Constants.ERROR_OPERATION;
                    }
                }
            }catch(System.Data.EntityException entityException)
            {
                logger.LogError(entityException);
            }
            return updatedResult;
            
        }

        public int UpdateProfile(Contracts.Profile profile, string email)
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
                            var existingAccessAccount = dataBaseContext.AccesAccount.FirstOrDefault(accessAccount => accessAccount.email == email);
                            var existingProfile = dataBaseContext.Profile.FirstOrDefault(profileDataBase => profileDataBase.FK_IdAccount == profileDataBase.idAccesAccount);
                            if (existingAccessAccount != null && existingProfile != null)
                            {
                                existingAccessAccount.username = profile.email;
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
            }catch(System.Data.EntityException entityException)
            {
                logger.LogError(entityException);
            }
            return updateResult;
        }

        public int VerifyExistingAccesAccount(string email, string username)
        {
            int verificationResult = -1;
            LoggerManager logger = new LoggerManager(this.GetType());
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingAccount = dataBaseContext.AccesAccount.FirstOrDefault(accessAccount => accessAccount.email == email || accessAccount.username == username);
                    if (existingAccount != null)
                    {
                        verificationResult = Constants.NO_DATA_MATCHES;
                    }
                    else
                    {
                        verificationResult = Constants.DATA_MATCHES;
                    }
                }
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                verificationResult = Constants.ERROR_OPERATION;
            }catch(System.Data.EntityException entityException)
            {
                logger.LogError(entityException);
                verificationResult = Constants.ERROR_OPERATION;
            }
            return verificationResult;
        }
    }
}
