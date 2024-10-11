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
    public partial class HiveGameService : IFriendshipManager
    {
        public int DeleteFriend(Contracts.Profile removingPlayer, Contracts.Profile friendToRemove)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int deleteResult = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendship = dataBaseContext.Friendship.FirstOrDefault(friendship => ((friendship.FK_idPlayerOne == removingPlayer.idAccount && friendship.idPlayerTwo == friendToRemove.idAccount) ||
                        (friendship.FK_idPlayerOne == friendToRemove.idAccount && friendship.idPlayerTwo == removingPlayer.idAccount)) && friendship.state == Enumerations.FriendshipStates.Accepted.ToString());
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
            List<DataBaseManager.Friendship> friendShipsListFounded = new List<DataBaseManager.Friendship>();
            List<int> idFoundAccounts = new List<int>();   
            Contracts.Profile failedSearching = new Contracts.Profile();
            failedSearching.idProfile = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    friendShipsListFounded = dataBaseContext.Friendship.Where(FriendShip => (FriendShip.FK_idPlayerOne == player.idAccount ||
                    FriendShip.idPlayerTwo == player.idAccount) && FriendShip.state == Utilities.Enumerations.FriendshipStates.Accepted.ToString()).ToList();
                    for(int counterFriendshipListIndex = 0;counterFriendshipListIndex < friendShipsListFounded.Count;counterFriendshipListIndex++)
                    {
                        DataBaseManager.Friendship friendshipFound = friendShipsListFounded[counterFriendshipListIndex];
                        if (friendshipFound.idPlayerTwo != player.idAccount)
                        {
                            idFoundAccounts.Add(friendshipFound.idPlayerTwo);
                        }else if(friendshipFound.FK_idPlayerOne != player.idAccount)
                        {
                            idFoundAccounts.Add(friendshipFound.FK_idPlayerOne);
                        }
                    }
                    for(int counterIdAccountListFound = 0; counterIdAccountListFound < idFoundAccounts.Count; counterIdAccountListFound++) 
                    { 
                        Contracts.Profile foundProfile = (Contracts.Profile)dataBaseContext.Profile.Where(profileFound => profileFound.FK_IdAccount == idFoundAccounts[counterIdAccountListFound]);
                        friendsListFounded.Add(foundProfile);
                    }
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
            Contracts.Profile foundFriend = new Contracts.Profile();
            foundFriend.idAccesAccount = Utilities.Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    var acceptedFriendship = dataBaseContext.Friendship.Where(friendship => (friendship.FK_idPlayerOne == player.idAccount ||
                    friendship.idPlayerTwo == player.idAccount) && friendship.state == Utilities.Enumerations.FriendshipStates.Accepted.ToString()).Join(
                    dataBaseContext.AccessAccount, friendship => friendship.FK_idPlayerOne == player.idAccount
                    ?friendship.idPlayerTwo:friendship.FK_idPlayerOne, account => account.idAccessAccount,(friendship, accessAccount) => new { FriendShip = friendship,
                    AccessAccount = accessAccount}).FirstOrDefault(friendshipAndAccount => friendshipAndAccount.AccessAccount.username == username);
                    if(acceptedFriendship != null)
                    {
                        foundFriend = (Contracts.Profile)dataBaseContext.Profile.Where(profileFound => profileFound.FK_IdAccount == acceptedFriendship.AccessAccount.idAccessAccount);
                    }
                    else
                    {
                        foundFriend.idAccesAccount = Utilities.Constants.NO_DATA_MATCHES;
                    }

                }
            }catch(SqlException sqlException)
            {
                logger.LogError(sqlException);
                foundFriend.idProfile = Constants.ERROR_OPERATION;
            }catch(EntityException entityException)
            {
                logger.LogError(entityException);
                foundFriend.idProfile = Constants.ERROR_OPERATION;
            }
            return foundFriend;
        }
    }
}
