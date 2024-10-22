using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBaseManager.Operations
{
    public class FriendshipOperation
    {
        public int DeleteFriendFromDataBase(AccessAccount removingPlayer, AccessAccount friendToRemove)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int deleteResult = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendship = dataBaseContext.Friendship.FirstOrDefault(friendship => ((friendship.FK_idPlayerOne == removingPlayer.idAccessAccount && friendship.idPlayerTwo == friendToRemove.idAccessAccount) ||
                        (friendship.FK_idPlayerOne == friendToRemove.idAccessAccount && friendship.idPlayerTwo == removingPlayer.idAccessAccount)) && friendship.state == Enumerations.FriendshipStates.Accepted.ToString());
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
            }
            catch (DbUpdateException dbException)
            {
                logger.LogError(dbException);
                deleteResult = Constants.ERROR_OPERATION;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                deleteResult = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                deleteResult = Constants.ERROR_OPERATION;
            }
            return deleteResult;
        }

        public List<Profile> GetAllFriendsFromDataBase(AccessAccount searcherPlayer)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            List<Profile> friendsListFounded = new List<Profile>();
            List<Friendship> friendShipsListFounded = new List<Friendship>();
            List<int> idFoundAccounts = new List<int>();
            Profile failedSearching = new Profile();
            failedSearching.idProfile = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    friendShipsListFounded = dataBaseContext.Friendship.Where(FriendShip => (FriendShip.FK_idPlayerOne == searcherPlayer.idAccessAccount ||
                    FriendShip.idPlayerTwo == searcherPlayer.idAccessAccount) && FriendShip.state == Enumerations.FriendshipStates.Accepted.ToString()).ToList();
                    for (int counterFriendshipListIndex = 0; counterFriendshipListIndex < friendShipsListFounded.Count; counterFriendshipListIndex++)
                    {
                        Friendship friendshipFound = friendShipsListFounded[counterFriendshipListIndex];
                        if (friendshipFound.idPlayerTwo != searcherPlayer.idAccessAccount)
                        {
                            idFoundAccounts.Add(friendshipFound.idPlayerTwo);
                        }
                        else if (friendshipFound.FK_idPlayerOne != searcherPlayer.idAccessAccount)
                        {
                            idFoundAccounts.Add(friendshipFound.FK_idPlayerOne);
                        }
                    }
                    for (int counterIdAccountListFound = 0; counterIdAccountListFound < idFoundAccounts.Count; counterIdAccountListFound++)
                    {
                        int idAccount = idFoundAccounts[counterIdAccountListFound];
                        Profile foundProfile = dataBaseContext.Profile.Where(profileFound => profileFound.FK_IdAccount == idAccount).FirstOrDefault();
                        friendsListFounded.Add(foundProfile);
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                friendsListFounded.Insert(0, failedSearching);
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                friendsListFounded.Insert(0, failedSearching);
            }
            return friendsListFounded;
        }

        public Profile GetFriendByUsername(AccessAccount accessAccount, string username)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            Profile foundFriend = new Profile();
            foundFriend.idProfile = Constants.ERROR_OPERATION;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    Friendship friendshipFound = dataBaseContext.Friendship.Where(friendship => (friendship.FK_idPlayerOne == accessAccount.idAccessAccount
                    || accessAccount.idAccessAccount == friendship.idPlayerTwo) && friendship.state == Enumerations.FriendshipStates.Accepted.ToString()).
                    Join(dataBaseContext.AccessAccount, friendship => (friendship.FK_idPlayerOne == accessAccount.idAccessAccount ? friendship.idPlayerTwo : friendship.FK_idPlayerOne),
                    account => account.idAccessAccount, (friendship, account) => new { Friendship = friendship, AccessAccount = account }).Where(result => result.AccessAccount.username == username).
                    Select(result => result.Friendship).FirstOrDefault();
                    if (friendshipFound != null)
                    {
                        int idFriendAccount = (friendshipFound.FK_idPlayerOne == accessAccount.idAccessAccount ? friendshipFound.idPlayerTwo : friendshipFound.FK_idPlayerOne);
                        foundFriend = dataBaseContext.Profile.AsNoTracking().FirstOrDefault(account => account.FK_IdAccount == idFriendAccount);
                    }
                    else
                    {
                        foundFriend.idProfile = Constants.NO_DATA_MATCHES;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                foundFriend.idProfile = Constants.ERROR_OPERATION;
            }
            catch (EntityException entityException)
            {
                logger.LogError(entityException);
                foundFriend.idProfile = Constants.ERROR_OPERATION;
            }
            return foundFriend;
        }
    }
}
