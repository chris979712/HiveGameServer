﻿using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.Core;
using System.Web.UI.WebControls.WebParts;
using DataBaseManager.Utilities;
using System.Security.Principal;

namespace DataBaseManager.Operations
{
    public class LeaderBoardOperation
    {
        public List<PlayerLeaderBoard> GetAllPlayersLeaderboardsFromDataBase()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            List<PlayerLeaderBoard> leaderBoardsListObtained = new List<PlayerLeaderBoard>();
            PlayerLeaderBoard playerLeaderBoardFailedOperation = new PlayerLeaderBoard();
            playerLeaderBoardFailedOperation.idAccount = Constants.ERROR_OPERATION;
            try
            {
                using (var databaseContext = new HiveEntityDataModel())
                {
                    var leaderBoardsListObtainedFromDataBase = databaseContext.Leaderboard.Join(databaseContext.AccessAccount,
                        leaderBoard => leaderBoard.FK_IdAccount, account => account.idAccessAccount, (leaderBoard, account) => new { 
                            Leaderboard = leaderBoard,
                            AccessAccount = account
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
                        leaderBoardsListObtained.Add(playerLeaderBoardFound);
                    }
                }
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                leaderBoardsListObtained.Add(playerLeaderBoardFailedOperation);
            }catch(EntityException entityException)
            {
                logger.LogError(entityException);
                leaderBoardsListObtained.Add(playerLeaderBoardFailedOperation);
            }
            return leaderBoardsListObtained;
        }

        public PlayerLeaderBoard GetPersonalLeaderBoard(int leaderBoardId)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            PlayerLeaderBoard playerLaderBoard = new PlayerLeaderBoard();
            playerLaderBoard.idAccount = Constants.ERROR_OPERATION;
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
                        playerLaderBoard.idAccount = Constants.NO_DATA_MATCHES;
                    }
                }
            }catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                playerLaderBoard.idAccount = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                playerLaderBoard.idAccount = Constants.ERROR_OPERATION;
            }
            return playerLaderBoard;
        }

        public int UpdateDrawResultToPlayerLeaderBoardToDataBase(int idAccount)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int resultUpdate = Constants.ERROR_OPERATION;
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
                        resultUpdate = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        resultUpdate = Constants.NO_DATA_MATCHES;
                    }
                }

            }catch(DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
                resultUpdate = Constants.ERROR_OPERATION;
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                resultUpdate = Constants.ERROR_OPERATION;
            }
            catch(EntityException entityException)
            {
                logger.LogError(entityException);
                resultUpdate = Constants.ERROR_OPERATION;
            }
            return resultUpdate;
        }

        public int UpdateWinnerResultToPlayerLeaderBoardToDataBase(int idAccount)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int resultUpdate = Constants.ERROR_OPERATION;
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
                        resultUpdate = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        resultUpdate = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
                resultUpdate = Constants.ERROR_OPERATION;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                resultUpdate = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                resultUpdate = Constants.ERROR_OPERATION;
            }
            return resultUpdate;
        }

        public int UpdateLoserResultToPlayerLeaderBoardToDataBase(int idAccount)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int resultUpdate = Constants.ERROR_OPERATION;
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
                        resultUpdate = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        resultUpdate = Constants.NO_DATA_MATCHES;
                    }
                }

            }
            catch (DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
                resultUpdate = Constants.ERROR_OPERATION;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                resultUpdate = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                resultUpdate = Constants.ERROR_OPERATION;
            }
            return resultUpdate;
        }
    }
}
