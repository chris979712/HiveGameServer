using HiveGameService.Utilities;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;

namespace DataBaseManager.Operations
{
    public class MatchOperation
    {

        public int RegisterMatchToDataBase(Match match)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int insertionResult = Constants.ErrorOperation;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    dataBaseContext.Match.Add(match);
                    dataBaseContext.SaveChanges();
                    insertionResult = Constants.SuccessOperation;
                }
            }
            catch(DbUpdateException dbUpdateException)
            {
                logger.LogWarn(dbUpdateException);
            }catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }catch(SqlException sqlException)
            {
                logger.LogFatal(sqlException);
            }
            return insertionResult;
        }

        public int ModifyMatchState(Match match)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int modificationResult = Constants.ErrorOperation;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var matchToChange = dataBaseContext.Match.Where(matchFound => matchFound.FK_IdAccount == match.FK_IdAccount && matchFound.code == match.code).FirstOrDefault();
                    if (matchToChange != null)
                    {
                        matchToChange.state = match.state;
                        dataBaseContext.SaveChanges();
                        modificationResult = Constants.SuccessOperation;
                    }
                    else
                    {
                        modificationResult = Constants.NoDataMatches;
                    }
                }
            }
            catch (DbUpdateException dbUpdateException)
            {
                logger.LogWarn(dbUpdateException);
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }
            catch (SqlException sqlException)
            {
                logger.LogFatal(sqlException);
            }
            return modificationResult;
        }

        public int VerifyExistingActiveMatch(Match match)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int verificationResult = Constants.ErrorOperation;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var matchToChange = dataBaseContext.Match.Where(matchFound => matchFound.state == Enumerations.Match.Active.ToString() && matchFound.code == match.code).FirstOrDefault();
                    if (matchToChange != null)
                    {
                        verificationResult = Constants.SuccessOperation;
                    }
                    else
                    {
                        verificationResult = Constants.NoDataMatches;
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }
            catch (SqlException sqlException)
            {
                logger.LogFatal(sqlException);
            }
            return verificationResult;
        }

        public int VerifyMatchCreator(Match match)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int verificationResult = Constants.ErrorOperation;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    var matchFound = dataBaseContext.Match.Where(dataBaseMatch => dataBaseMatch.FK_IdAccount == match.FK_IdAccount 
                    && dataBaseMatch.code == match.code).FirstOrDefault();
                    if(matchFound != null)
                    {
                        verificationResult = Constants.SuccessOperation;
                    }
                    else
                    {
                        verificationResult= Constants.NoDataMatches;
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                verificationResult = Constants.ErrorOperation;
            }
            catch (SqlException sqlException)
            {
                logger.LogFatal(sqlException);
                verificationResult = Constants.ErrorOperation;
            }
            return verificationResult;
        }
    }
}
