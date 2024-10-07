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
    internal class FriendshipService : IFriendshipManager
    {
        public int DeleteFriend(Contracts.Profile removingPlayer, Contracts.Profile friendToRemove)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int deleteResult = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendship = dataBaseContext.Friendship.FirstOrDefault(friendship => (friendship.FK_idPlayerOne == removingPlayer.idAccount && friendship.idPlayerTwo == friendToRemove.idAccount) ||
                        (friendship.FK_idPlayerOne == friendToRemove.idAccount && friendship.idPlayerTwo == removingPlayer.idAccount));
                    if (existingFriendship != null)
                    {
                        dataBaseContext.Friendship.Remove(existingFriendship);
                        deleteResult = Constants.SUCCES_OPERATION;
                    }
                    else
                    {
                        deleteResult = Constants.NO_DATA_MATCHES;
                    }
                }
            }catch(DbUpdateException dbException)
            {
                logger.LogError(dbException);
                deleteResult = Constants.ERROR_OPERATION;
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                deleteResult = Constants.ERROR_OPERATION;  
            }catch(EntityException entityException)
            {
                logger.LogError(entityException);
                deleteResult = Constants.ERROR_OPERATION;
            }
            return deleteResult;
        }

        public List<Contracts.Profile> GetAllFriends(Contracts.Profile player)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            List<Contracts.Profile> friendsListFounded = new List<Contracts.Profile>();
            Contracts.Profile failedSearching = new Contracts.Profile();
            failedSearching.idProfile = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    friendsListFounded = dataBaseContext.Friendship.Where(user => (user.FK_idPlayerOne == player.idAccount ||
                    user.idPlayerTwo == player.idAccount) && user.state == Utilities.Enumerations.FriendshipStates.Accepted.ToString())
                        .Select(friendship => friendship.FK_idPlayerOne == player.idProfile
                         ?dataBaseContext.AccesAccount.Where(account => account.idAccessAccount == friendship.idPlayerTwo).
                         Select(account => account.Profile).FirstOrDefault()
                         : dataBaseContext.AccesAccount.Where(account => account.idAccessAccount == friendship.FK_idPlayerOne).
                         Select(account => account.Profile).FirstOrDefault()
                    ).Where(profile => profile != null && profile.idProfile != player.idProfile).ToList();
                }
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                friendsListFounded.Insert(0, failedSearching);
            }catch(EntityException entityException)
            {
                logger.LogError(entityException);
                friendsListFounded.Insert(0, failedSearching);
            }
            return friendsListFounded;
        }

        public Contracts.Profile GetFriendByUsername(Contracts.Profile player, string username)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            Contracts.Profile foundedFriend = new Contracts.Profile();
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    
                }
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                foundedFriend.idProfile = Constants.ERROR_OPERATION;
            }catch(EntityException entityException)
            {
                logger.LogError(entityException);
                foundedFriend.idProfile = Constants.ERROR_OPERATION;
            }
            return foundedFriend;
        }
    }
}
