using HiveGameService.Utilities;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.Data.Entity.Core;

namespace DataBaseManager.Operations
{
    public class UserOperation
    {
        public int addUserToDataBase(Profile profile, AccessAccount accessAccount)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int result = Constants.ErrorOperation;
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
                            result = Constants.SuccessOperation;
                        }
                        catch (DbUpdateException updateException)
                        {
                            logger.LogWarn(updateException);
                            dataBaseContextTransaction.Rollback();
                            result = Constants.ErrorOperation;
                        }
                        catch (SqlException sqlException)
                        {
                            logger.LogError(sqlException);
                            dataBaseContextTransaction.Rollback();
                            result = Constants.ErrorOperation;
                        }
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
            }
            return result;
        }


        public UserData GetUserProfileByUsername(string username)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            UserData userFound = new UserData();
            userFound.idProfile = Constants.ErrorOperation;
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
                        userFound.idProfile = Constants.NoDataMatches;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                userFound.idProfile = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                userFound.idProfile = Constants.ErrorOperation;
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
                        dataObtained.idAccessAccount = Constants.NoDataMatches;
                    }
                }
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                dataObtained.idAccessAccount = Constants.ErrorOperation;
            }
            catch(EntityException entityException)
            {
                logger.LogFatal(entityException);
                dataObtained.idAccessAccount = Constants.ErrorOperation;
            }
            return dataObtained;
        }

        public int UpdatePlusPlayerReputationToDataBase(string username, int reputation)
        {
            int updateResult = Constants.ErrorOperation;
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
                        updateResult = Constants.SuccessOperation;
                    }
                    else
                    {
                        updateResult = Constants.NoDataMatches;
                    }
                }
            }
            catch (DbUpdateException updateException)
            {
                logger.LogWarn(updateException);
                updateResult = Constants.ErrorOperation;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                updateResult = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                updateResult = Constants.ErrorOperation;
            }
            return updateResult;
        }

        public int UpdateMinusPlayerReputationToDataBase(string username, int reputation)
        {
            int updateResult = Constants.ErrorOperation;
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
                        updateResult = Constants.SuccessOperation;
                    }
                    else
                    {
                        updateResult = Constants.NoDataMatches;
                    }
                }
            }
            catch (DbUpdateException updateException)
            {
                logger.LogWarn(updateException);
                updateResult = Constants.ErrorOperation;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                updateResult = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                updateResult = Constants.ErrorOperation;
            }
            return updateResult;
        }

        public int UpdateLoginCredentialsToDataBase(AccessAccount oldAccessAccount, AccessAccount updatedAccessAccount)
        {
            int updatedResult = Constants.ErrorOperation;
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
                            updatedResult = Constants.SuccessOperation;
                        }
                        else
                        {
                            updatedResult = 0;
                        }
                    }
                    catch (DbUpdateException updateException)
                    {
                        logger.LogWarn(updateException);
                        updatedResult = Constants.ErrorOperation;
                    }
                    catch (SqlException sqlException)
                    {
                        logger.LogError(sqlException);
                        updatedResult = Constants.ErrorOperation;
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
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
                                    updateResult = Constants.SuccessOperation;
                                }
                                else
                                {
                                    updateResult = Constants.NoDataMatches;
                                }
                            }
                            else
                            { 
                                updateResult = Constants.NoDataMatches;
                            }
                        }
                        catch (DbUpdateException updateException)
                        {
                            logger.LogWarn(updateException);
                            dataBaseContextTransaction.Rollback();
                            updateResult = Constants.ErrorOperation;
                        }
                        catch (SqlException sqlException)
                        {
                            logger.LogError(sqlException);
                            dataBaseContextTransaction.Rollback();
                            updateResult = Constants.ErrorOperation;
                        }
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
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
                    var existingAccount = dataBaseContext.AccessAccount.FirstOrDefault(accessAccount => accessAccount.email == email || accessAccount.username == username);
                    if (existingAccount != null)
                    {
                        verificationResult = Constants.DataMatches;
                    }
                    else
                    {
                        verificationResult = Constants.NoDataMatches;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                verificationResult = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                verificationResult = Constants.ErrorOperation;
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
                        verificationResult = Constants.DataMatches;
                    }
                    else
                    {
                        verificationResult = Constants.NoDataMatches;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                verificationResult = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                verificationResult = Constants.ErrorOperation;
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
                        verificationResult = Constants.DataMatches;
                    }
                    else
                    {
                        verificationResult = Constants.NoDataMatches;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                verificationResult = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                verificationResult = Constants.ErrorOperation;
            }
            return verificationResult;
        }

    }
}
