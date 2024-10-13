using DataBaseManager;
using DataBaseManager.Operations;
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
            FriendshipOperation friendshipOperations = new FriendshipOperation();
            DataBaseManager.AccessAccount removingPlayerDataBase = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = removingPlayer.idAccesAccount
            };
            DataBaseManager.AccessAccount friendToRemoveDataBase = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = friendToRemove.idAccesAccount
            };
            int deleteResult = friendshipOperations.DeleteFriendFromDataBase(removingPlayerDataBase, friendToRemoveDataBase);
            return deleteResult;
        }

        public List<Contracts.Profile> GetAllFriends(Contracts.Profile player)
        {
            FriendshipOperation friendshipOperations = new FriendshipOperation();
            DataBaseManager.AccessAccount searcherPlayer = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = player.idAccesAccount
            };
            List<DataBaseManager.Profile> friendsObtainedFromDataBase = friendshipOperations.GetAllFriendsFromDataBase(searcherPlayer);
            List<Contracts.Profile> friendsObtained = new List<Contracts.Profile>();
            for(int friendsObtainedFromDataBaseIndex = 0; friendsObtainedFromDataBaseIndex < friendsObtainedFromDataBase.Count; friendsObtainedFromDataBaseIndex++)
            {
                Contracts.Profile friend = new Contracts.Profile() 
                {
                    nickname = friendsObtainedFromDataBase[friendsObtainedFromDataBaseIndex].nickname,
                    idProfile = friendsObtainedFromDataBase[friendsObtainedFromDataBaseIndex].idProfile,
                    imagePath = friendsObtainedFromDataBase[friendsObtainedFromDataBaseIndex].imagePath,
                    idAccount = friendsObtainedFromDataBase[friendsObtainedFromDataBaseIndex].FK_IdAccount
                };
                friendsObtained.Add(friend);
            }
            return friendsObtained;
        }

        public Contracts.Profile GetFriendByUsername(Contracts.Profile player, string username)
        {
            FriendshipOperation friendshipOperations = new FriendshipOperation();
            DataBaseManager.AccessAccount searcherPlayer = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = player.idAccesAccount
            };
            DataBaseManager.Profile friendObtainedFromDataBase = friendshipOperations.GetFriendByUsername(searcherPlayer, username);
            Contracts.Profile friendObtained = new Contracts.Profile()
            {
                idProfile = friendObtainedFromDataBase.idProfile,
                nickname = friendObtainedFromDataBase.nickname,
                imagePath = friendObtainedFromDataBase.imagePath,
                idAccount = friendObtainedFromDataBase.FK_IdAccount
            };
            return friendObtained;
        }
    }
}
