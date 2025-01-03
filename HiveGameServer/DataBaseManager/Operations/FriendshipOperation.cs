﻿using HiveGameService.Utilities;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;

namespace DataBaseManager.Operations
{
    public class FriendshipOperation
    {
        public int DeleteFriendFromDataBase(AccessAccount removingPlayer, AccessAccount friendToRemove)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int deleteResult = Constants.ErrorOperation;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    var existingFriendship = dataBaseContext.Friendship.FirstOrDefault(friendship => ((friendship.FK_idPlayerOne == removingPlayer.idAccessAccount && friendship.idPlayerTwo == friendToRemove.idAccessAccount) ||
                        (friendship.FK_idPlayerOne == friendToRemove.idAccessAccount && friendship.idPlayerTwo == removingPlayer.idAccessAccount)) && friendship.state == Enumerations.FriendshipStates.Accepted.ToString());
                    if (existingFriendship != null)
                    {
                        dataBaseContext.Friendship.Remove(existingFriendship);
                        dataBaseContext.SaveChanges();
                        deleteResult = Constants.SuccessOperation;
                    }
                    else
                    {
                        deleteResult = Constants.NoDataMatches;
                    }
                }
            }
            catch (DbUpdateException dbException)
            {
                logger.LogWarn(dbException);
                deleteResult = Constants.ErrorOperation;
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                deleteResult = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                deleteResult = Constants.ErrorOperation;
            }
            return deleteResult;
        }

        public List<UserData> GetAllFriendsFromDataBase(AccessAccount searcherPlayer)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            List<UserData> friendsData = new List<UserData>();
            List<int> idFoundAccounts = new List<int>();
            UserData failedSearching = new UserData();
            failedSearching.idProfile = Constants.ErrorOperation;
            try
            {
                using (var dataBaseContext = new HiveEntityDataModel())
                {
                    List<Friendship> friendShipsListFounded = dataBaseContext.Friendship.Where(FriendShip => (FriendShip.FK_idPlayerOne == searcherPlayer.idAccessAccount ||
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
                        var userDataFound = dataBaseContext.Profile.Where(profileFound => profileFound.FK_IdAccount == idAccount).Join(dataBaseContext.AccessAccount,
                            userProfile => userProfile.FK_IdAccount, userAccount => userAccount.idAccessAccount, (userProfile, userAccount) => new UserData { 
                                idAccessAccount = userAccount.idAccessAccount,
                                idProfile = userProfile.idProfile,
                                username = userAccount.username,
                                email = userAccount.email,
                                nickname = userProfile.nickname,
                                description = userProfile.description,
                                imagePath = userProfile.imagePath,
                                reputation = userAccount.reputation,
                                createdDate = userProfile.createdDate
                            }).FirstOrDefault();
                        friendsData.Add(userDataFound);
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                friendsData.Insert(0, failedSearching);
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                friendsData.Insert(0, failedSearching);
            }
            return friendsData;
        }

        public Profile GetFriendByUsername(AccessAccount accessAccount, string username)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            Profile foundFriend = new Profile();
            foundFriend.idProfile = Constants.ErrorOperation;
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
                        foundFriend.idProfile = Constants.NoDataMatches;
                    }
                }
            }
            catch (SqlException sqlException)
            {
                logger.LogError(sqlException);
                foundFriend.idProfile = Constants.ErrorOperation;
            }
            catch (EntityException entityException)
            {
                logger.LogFatal(entityException);
                foundFriend.idProfile = Constants.ErrorOperation;
            }
            return foundFriend;
        }
    }
}
