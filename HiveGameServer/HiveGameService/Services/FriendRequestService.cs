using DataBaseManager;
using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    partial class FriendRequestService : IFriendRequestManager
    {
        public int CreateFriendRequest(Contracts.Profile playerOne, Contracts.Profile playerTwo)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int creationResult = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                        var newFriendRequest = new DataBaseManager.Friendship
                        {
                            FK_idPlayerOne = playerOne.idAccount,
                            idPlayerTwo = playerTwo.idAccount,
                            state = Utilities.Enumerations.FriendshipStates.Requested.ToString()
                        };
                        dataBaseContext.Friendship.Add(newFriendRequest);
                        dataBaseContext.SaveChanges();
                        creationResult = Constants.SUCCES_OPERATION;
                }
            }catch (DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
                creationResult = Constants.ERROR_OPERATION;
            }
            catch (SqlException dbSqlException)
            {
                logger.LogError(dbSqlException);
                creationResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
            }
            return creationResult;
        }

        public List<Contracts.Profile> GetFriendRequests(Contracts.Profile player)
        {
            List<Contracts.Profile> friendRequestsList = new List<Contracts.Profile>();
            LoggerManager logger = new LoggerManager(this.GetType());
            Contracts.Profile errorAtDoingSearching = new Contracts.Profile();
            errorAtDoingSearching.idProfile = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    friendRequestsList = dataBaseContext.Friendship.Where(user => user.idPlayerTwo == player.idAccount)
                        .Join(dataBaseContext.Profile, user => user.idPlayerTwo, playerFound => playerFound.FK_IdAccount,
                        (user, playerFound) => new Contracts.Profile
                        {
                            idProfile = player.idProfile,
                            nickname = playerFound.nickname,
                            imagePath = playerFound.imagePath,
                            createdDate = playerFound.createdDate,
                        }).ToList();
                }
            }
            catch (SqlException sqlException)
            { 
                logger.LogError(sqlException);
                friendRequestsList.Insert(0,errorAtDoingSearching);
            }
            catch (EntityException exception)
            {
                logger.LogError(exception);
                friendRequestsList.Insert(0, errorAtDoingSearching);
            }
            return friendRequestsList;
        }

        public int AcceptFriendRequest(Contracts.Profile playerOne, Contracts.Profile playerTwo)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int responseResult = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendRequest = dataBaseContext.Friendship.FirstOrDefault(friendRequest => friendRequest.FK_idPlayerOne == playerOne.idAccount && friendRequest.idPlayerTwo == playerTwo.idAccount);
                    if (existingFriendRequest != null)
                    {
                        existingFriendRequest.state = Utilities.Enumerations.FriendshipStates.Accepted.ToString();
                        responseResult = dataBaseContext.SaveChanges();
                    }
                }
            }catch (DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
                responseResult = Constants.ERROR_OPERATION;
            }
            catch (SqlException sqlException) 
            {
                logger.LogError(sqlException);
                responseResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException exception)
            {
                logger.LogError(exception);
                responseResult = Constants.ERROR_OPERATION;
            }
            return responseResult;
        }

        public int DeclineFriendRequest(Contracts.Profile playerOne, Contracts.Profile playerTwo)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int responseResult = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendRequest = dataBaseContext.Friendship.FirstOrDefault(friendRequest => friendRequest.FK_idPlayerOne == playerOne.idAccount && friendRequest.idPlayerTwo == playerTwo.idAccount);
                    if (existingFriendRequest != null)
                    {
                        dataBaseContext.Friendship.Remove(existingFriendRequest);
                        responseResult = dataBaseContext.SaveChanges();
                    }
                }
            }catch (DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
                responseResult = Constants.ERROR_OPERATION;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                responseResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException exception)
            {
                logger.LogError(exception);
                responseResult = Constants.ERROR_OPERATION;
            }
            return responseResult;
        }

        public int VerifyFriendRequestRegistered(Contracts.Profile playerOne, Contracts.Profile playerTwo)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int responseResult = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendRequestRegistered = dataBaseContext.Friendship.FirstOrDefault(friendRequest => friendRequest.FK_idPlayerOne == playerOne.idAccount && friendRequest.idPlayerTwo == playerTwo.idAccount);
                    if (existingFriendRequestRegistered != null)
                    {
                        responseResult = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        responseResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }catch(DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
                responseResult = Constants.ERROR_OPERATION;
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                responseResult = Constants.ERROR_OPERATION;
            }catch(EntityException entityException)
            {
                logger.LogError(entityException);
                responseResult = Constants.ERROR_OPERATION;
            }
            return responseResult;

        }
    }
}
