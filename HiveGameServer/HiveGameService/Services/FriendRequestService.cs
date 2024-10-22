using DataBaseManager;
using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBaseManager.Operations;

namespace HiveGameService.Services
{
    public partial class HiveGameService : IFriendRequestManager
    {
        public int CreateFriendRequest(Contracts.Profile playerOne, Contracts.Profile playerTwo)
        {
            FriendRequestOperation friendRequestObtained = new FriendRequestOperation();
            DataBaseManager.AccessAccount senderPlayer = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = playerOne.idAccesAccount
            };
            DataBaseManager.AccessAccount receiverPlayer = new DataBaseManager.AccessAccount() 
            { 
                idAccessAccount = playerTwo.idAccesAccount
            };
            int creationResult = friendRequestObtained.CreateFriendRequestToDataBase(senderPlayer, receiverPlayer);
            return creationResult;
        }

        public List<Contracts.Profile> GetFriendRequests(Contracts.Profile player)
        { 
            FriendRequestOperation friendRequestOperation = new FriendRequestOperation();
            DataBaseManager.Profile searcherPlayer = new DataBaseManager.Profile()
            {
                FK_IdAccount = player.idAccesAccount
            };
            List<DataBaseManager.Profile> friendRequestsObtained = friendRequestOperation.GetFriendRequestsFromDataBase(searcherPlayer);
            List<Contracts.Profile> friendRequestList = new List<Contracts.Profile>();
            for (int friendRequestsObtainedIndex = 0;friendRequestsObtained.Count > friendRequestsObtainedIndex;friendRequestsObtainedIndex++)
            {
                Contracts.Profile friendRequestObtained = new Contracts.Profile() 
                {
                    nickname = friendRequestsObtained[friendRequestsObtainedIndex].nickname,
                    createdDate = friendRequestsObtained[friendRequestsObtainedIndex].createdDate,
                    imagePath = friendRequestsObtained[friendRequestsObtainedIndex].imagePath,
                    idProfile = friendRequestsObtained[friendRequestsObtainedIndex].idProfile,
                    idAccesAccount = friendRequestsObtained[friendRequestsObtainedIndex].FK_IdAccount
                };
                friendRequestList.Add(friendRequestObtained);
            }
            return friendRequestList;
        }

        public int AcceptFriendRequest(Contracts.Profile playerOne, Contracts.Profile playerTwo)
        {
            FriendRequestOperation friendRequestOperation = new FriendRequestOperation();
            DataBaseManager.AccessAccount askerPlayer = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = playerOne.idAccesAccount
            };
            DataBaseManager.AccessAccount answeredPlayer = new DataBaseManager.AccessAccount() 
            {
                idAccessAccount = playerTwo.idAccesAccount
            };
            int responseResult = friendRequestOperation.AcceptFriendRequestInToDataBase(askerPlayer, answeredPlayer);
            return responseResult;
        }

        public int DeclineFriendRequest(Contracts.Profile playerOne, Contracts.Profile playerTwo)
        {
            FriendRequestOperation friendRequestOperation = new FriendRequestOperation();
            DataBaseManager.AccessAccount askerPlayer = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = playerOne.idAccesAccount
            };
            DataBaseManager.AccessAccount answeredPlayer = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = playerTwo.idAccesAccount
            };
            int responseResult = friendRequestOperation.DeclineFriendRequestToDataBase(askerPlayer, answeredPlayer);
            return responseResult;
        }

        public int VerifyFriendRequestRegistered(Contracts.Profile playerOne, Contracts.Profile playerTwo)
        {
            FriendRequestOperation friendRequestOperation = new FriendRequestOperation();
            DataBaseManager.AccessAccount askerPlayer = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = playerOne.idAccesAccount
            };
            DataBaseManager.AccessAccount answeredPlayer = new DataBaseManager.AccessAccount()
            {
                idAccessAccount = playerTwo.idAccesAccount
            };
            int verifyResult = friendRequestOperation.VerifyExistingFriendRequestInToDataBase(askerPlayer, answeredPlayer); 
            return verifyResult;
        }
    }
}
