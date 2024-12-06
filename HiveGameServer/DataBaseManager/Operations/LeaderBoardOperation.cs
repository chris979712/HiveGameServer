using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Data.Entity;
using System.Linq;
using System.Data.Entity.Core;
using DataBaseManager.Utilities;

namespace DataBaseManager.Operations
{
    public class LeaderBoardOperation
    {
        public List<PlayerLeaderBoard> GetAllPlayersLeaderboardsFromDataBase()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            List<PlayerLeaderBoard> leaderBoardsListObtained = new List<PlayerLeaderBoard>();
            PlayerLeaderBoard playerLeaderBoardFailedOperation = new PlayerLeaderBoard();
            playerLeaderBoardFailedOperation.idAccount = Constants.ErrorOperation;
            try
            {
                using (var databaseContext = new HiveEntityDataModel())
                {
                    var leaderBoardsListObtainedFromDataBase = databaseContext.Leaderboard.Join(databaseContext.AccessAccount,
                        leaderBoard => leaderBoard.FK_IdAccount, account => account.idAccessAccount, (leaderBoard, account) => new { 
                            Leaderboard = leaderBoard,
                            AccessAccount = account
                        }).Join(databaseContext.Profile, result => result.AccessAccount.idAccessAccount, profile => profile.FK_IdAccount,
                        (result,profile) => new { 
                            result.Leaderboard,
                            result.AccessAccount,
                            Profile = profile
                        }).ToList();
                    for(int leaderBoardsListIndex = 0; leaderBoardsListIndex < leaderBoardsListObtainedFromDataBase.Count; leaderBoardsListIndex++)
                    {
                        PlayerLeaderBoard playerLeaderBoardFound = new PlayerLeaderBoard();
                        playerLeaderBoardFound.idAccount = leaderBoardsListObtainedFromDataBase[leaderBoardsListIndex].AccessAccount.idAccessAccount;
                        playerLeaderBoardFound.username = leaderBoardsListObtainedFromDataBase[leaderBoardsListIndex].AccessAccount.username;
                        playerLeaderBoardFound.lostMatches = leaderBoardsListObtainedFromDataBase[leaderBoardsListIndex].Leaderboard.lostMatches;
                        playerLeaderBoardFound.wonMatches = leaderBoardsListObtainedFromDataBase[leaderBoardsListIndex].Leaderboard.wonMatches;
                        playerLeaderBoardFound.drawMatches = leaderBoardsListObtainedFromDataBase[leaderBoardsListIndex].Leaderboard.drawMatches;
                        playerLeaderBoardFound.totalMatches = leaderBoardsListObtainedFromDataBase[leaderBoardsListIndex].Leaderboard.totalOfMatches;
                        playerLeaderBoardFound.imageProfile = leaderBoardsListObtainedFromDataBase[leaderBoardsListIndex].Profile.imagePath;
                        leaderBoardsListObtained.Add(playerLeaderBoardFound);
                    }
                }
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                leaderBoardsListObtained.Add(playerLeaderBoardFailedOperation);
            }catch(EntityException entityException)
            {
                logger.LogFatal(entityException);
                leaderBoardsListObtained.Add(playerLeaderBoardFailedOperation);
            }
            return leaderBoardsListObtained;
        }

        public PlayerLeaderBoard GetPersonalLeaderBoard(int leaderBoardId)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            PlayerLeaderBoard playerLaderBoard = new PlayerLeaderBoard();
            playerLaderBoard.idAccount = Constants.ErrorOperation;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    var playerLeaderBoardObtained = dataBaseContext.Leaderboard.Where(leaderBoard => leaderBoard.FK_IdAccount == leaderBoardId).Join(
                        dataBaseContext.AccessAccount, leaderBoard => leaderBoard.FK_IdAccount, account => account.idAccessAccount, (leaderboard, account) =>
                        new { Leaderboard = leaderboard, AccessAccount = account }).FirstOrDefault();
                    if(playerLeaderBoardObtained != null)
                    {
                        playerLaderBoard.totalMatches = playerLeaderBoardObtained.Leaderboard.totalOfMatches;
                        playerLaderBoard.wonMatches = playerLeaderBoardObtained.Leaderboard.wonMatches;
                        playerLaderBoard.lostMatches = playerLeaderBoardObtained.Leaderboard.lostMatches;
                        playerLaderBoard.drawMatches = playerLeaderBoardObtained.Leaderboard.drawMatches;
                        playerLaderBoard.username = playerLeaderBoardObtained.AccessAccount.username;
                        playerLaderBoard.idAccount = playerLeaderBoardObtained.AccessAccount.idAccessAccount;
                    }
                    else
                    {
                        playerLaderBoard.idAccount = Constants.NoDataMatches;
                    }
                }
            }catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                playerLaderBoard.idAccount = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                playerLaderBoard.idAccount = Constants.ErrorOperation;
            }
            return playerLaderBoard;
        }

        public int UpdateDrawResultToPlayerLeaderBoardToDataBase(int idAccount)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int resultUpdate = Constants.ErrorOperation;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    var leaderBoard = dataBaseContext.Leaderboard.Where(leaderBoardDataBase => leaderBoardDataBase.FK_IdAccount == idAccount).FirstOrDefault();
                    if (leaderBoard != null)
                    {
                        leaderBoard.drawMatches += 1;
                        leaderBoard.totalOfMatches += 1;
                        dataBaseContext.SaveChanges();
                        resultUpdate = Constants.SuccessOperation;
                    }
                    else
                    {
                        resultUpdate = Constants.NoDataMatches;
                    }
                }

            }catch(DbUpdateException dbUpdateException)
            {
                logger.LogWarn(dbUpdateException);
                resultUpdate = Constants.ErrorOperation;
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                resultUpdate = Constants.ErrorOperation;
            }
            catch(EntityException entityException)
            {
                logger.LogFatal(entityException);
                resultUpdate = Constants.ErrorOperation;
            }
            return resultUpdate;
        }

        public int UpdateWinnerResultToPlayerLeaderBoardToDataBase(int idAccount)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int resultUpdate = Constants.ErrorOperation;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var leaderBoard = dataBaseContext.Leaderboard.Where(leaderBoardDataBase => leaderBoardDataBase.FK_IdAccount == idAccount).FirstOrDefault();
                    if (leaderBoard != null)
                    {
                        leaderBoard.wonMatches += 1;
                        leaderBoard.totalOfMatches += 1;
                        dataBaseContext.SaveChanges();
                        resultUpdate = Constants.SuccessOperation;
                    }
                    else
                    {
                        resultUpdate = Constants.NoDataMatches;
                    }
                }
            }
            catch (DbUpdateException dbUpdateException)
            {
                logger.LogWarn(dbUpdateException);
                resultUpdate = Constants.ErrorOperation;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                resultUpdate = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                resultUpdate = Constants.ErrorOperation;
            }
            return resultUpdate;
        }

        public int UpdateLoserResultToPlayerLeaderBoardToDataBase(int idAccount)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int resultUpdate = Constants.ErrorOperation;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var leaderBoard = dataBaseContext.Leaderboard.Where(leaderBoardDataBase => leaderBoardDataBase.FK_IdAccount == idAccount).FirstOrDefault();
                    if (leaderBoard != null)
                    {
                        leaderBoard.lostMatches += 1;
                        leaderBoard.totalOfMatches += 1;
                        dataBaseContext.SaveChanges();
                        resultUpdate = Constants.SuccessOperation;
                    }
                    else
                    {
                        resultUpdate = Constants.NoDataMatches;
                    }
                }

            }
            catch (DbUpdateException dbUpdateException)
            {
                logger.LogWarn(dbUpdateException);
                resultUpdate = Constants.ErrorOperation;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                resultUpdate = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                resultUpdate = Constants.ErrorOperation;
            }
            return resultUpdate;
        }
    }
}
