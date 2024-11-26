using HiveGameService.Utilities;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;

namespace DataBaseManager.Operations
{
    public class FriendRequestOperation
    {
        public int CreateFriendRequestToDataBase(AccessAccount senderPlayer, AccessAccount receiverPlayer)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int creationResult = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var newFriendRequest = new DataBaseManager.Friendship
                    {
                        FK_idPlayerOne = senderPlayer.idAccessAccount,
                        idPlayerTwo = receiverPlayer.idAccessAccount,
                        state = Enumerations.FriendshipStates.Requested.ToString()
                    };
                    dataBaseContext.Friendship.Add(newFriendRequest);
                    dataBaseContext.SaveChanges();
                    creationResult = Constants.SUCCES_OPERATION;
                }
            }
            catch (DbUpdateException dbUpdateException)
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
                creationResult = Constants.ERROR_OPERATION;
            }
            return creationResult;
        }

        public List<Profile> GetFriendRequestsFromDataBase(Profile searcherPlayer)
        {
            List<Profile> friendRequestsList = new List<Profile>();
            LoggerManager logger = new LoggerManager(this.GetType());
            Profile errorAtDoingSearching = new Profile();
            errorAtDoingSearching.idProfile = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var friendRequests = dataBaseContext.Friendship
                        .Where(user => user.idPlayerTwo == searcherPlayer.FK_IdAccount &&
                            user.state == Enumerations.FriendshipStates.Requested.ToString())
                        .ToList(); 
                    friendRequestsList = friendRequests
                        .Join(dataBaseContext.Profile.ToList(), 
                        user => user.FK_idPlayerOne, playerFound => playerFound.FK_IdAccount,
                        (user, playerFound) => new Profile
                        {
                            FK_IdAccount = playerFound.FK_IdAccount, 
                            nickname = playerFound.nickname,
                            imagePath = playerFound.imagePath,
                            createdDate = playerFound.createdDate,
                            idProfile = playerFound.idProfile
                        }).ToList();
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                friendRequestsList.Insert(0, errorAtDoingSearching);
            }
            catch (EntityException exception)
            {
                logger.LogError(exception);
                friendRequestsList.Insert(0, errorAtDoingSearching);
            }
            return friendRequestsList;
        }

        public int AcceptFriendRequestInToDataBase(AccessAccount responderPlayer, AccessAccount answererPlayer)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int responseResult = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendRequest = dataBaseContext.Friendship.FirstOrDefault(friendRequest => friendRequest.FK_idPlayerOne == answererPlayer.idAccessAccount && friendRequest.idPlayerTwo == responderPlayer.idAccessAccount);
                    if (existingFriendRequest != null)
                    {
                        existingFriendRequest.state = Enumerations.FriendshipStates.Accepted.ToString();
                        responseResult = dataBaseContext.SaveChanges();
                    }
                }
            }
            catch (DbUpdateException dbUpdateException)
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

        public int DeclineFriendRequestToDataBase(AccessAccount responderPlayer, AccessAccount answererPlayer)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int responseResult = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendRequest = dataBaseContext.Friendship.FirstOrDefault(friendRequest => friendRequest.FK_idPlayerOne == answererPlayer.idAccessAccount && friendRequest.idPlayerTwo == responderPlayer.idAccessAccount);
                    if (existingFriendRequest != null)
                    {
                        dataBaseContext.Friendship.Remove(existingFriendRequest);
                        responseResult = dataBaseContext.SaveChanges();
                    }
                }
            }
            catch (DbUpdateException dbUpdateException)
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

        public int VerifyExistingFriendRequestInToDataBase(AccessAccount playerOne, AccessAccount playerTwo)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int verifyResult = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendRequestRegistered = dataBaseContext.Friendship.FirstOrDefault(friendRequest => (friendRequest.FK_idPlayerOne == playerOne.idAccessAccount &&
                    friendRequest.idPlayerTwo == playerTwo.idAccessAccount) || (friendRequest.FK_idPlayerOne == playerTwo.idAccessAccount && friendRequest.idPlayerTwo == playerOne.idAccessAccount));
                    if (existingFriendRequestRegistered != null)
                    {
                        verifyResult = Constants.DATA_MATCHES;
                    }
                    else
                    {
                        verifyResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (DbUpdateException dbUpdateException)
            {
                logger.LogError(dbUpdateException);
                verifyResult = Constants.ERROR_OPERATION;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                verifyResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                verifyResult = Constants.ERROR_OPERATION;
            }
            return verifyResult;
        }
    }
}
