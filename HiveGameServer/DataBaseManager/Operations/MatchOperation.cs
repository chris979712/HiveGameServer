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
            int insertionResult = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    dataBaseContext.Match.Add(match);
                    dataBaseContext.SaveChanges();
                    insertionResult = Constants.SUCCES_OPERATION;
                }
            }
            catch(DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
            }catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
            }
            return insertionResult;
        }

        public int ModifyMatchState(Match match)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int modificationResult = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var matchToChange = dataBaseContext.Match.Where(matchFound => matchFound.FK_IdAccount == match.FK_IdAccount && matchFound.code == match.code).FirstOrDefault();
                    if (matchToChange != null)
                    {
                        matchToChange.state = match.state;
                        dataBaseContext.SaveChanges();
                        modificationResult = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        modificationResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
            }
            return modificationResult;
        }

        public int VerifyExistingActiveMatch(Match match)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int verificationResult = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var matchToChange = dataBaseContext.Match.Where(matchFound => matchFound.state == Enumerations.Match.Active.ToString() && matchFound.code == match.code).FirstOrDefault();
                    if (matchToChange != null)
                    {
                        verificationResult = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        verificationResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
            }
            return verificationResult;
        }

        public int VerifyMatchCreator(Match match)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int verificationResult = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    var matchFound = dataBaseContext.Match.Where(dataBaseMatch => dataBaseMatch.FK_IdAccount == match.FK_IdAccount 
                    && dataBaseMatch.code == match.code).FirstOrDefault();
                    if(matchFound != null)
                    {
                        verificationResult = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        verificationResult= Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                verificationResult = Constants.ERROR_OPERATION;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                verificationResult = Constants.ERROR_OPERATION;
            }
            return verificationResult;
        }
    }
}
