using HiveGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    internal class FriendshipService : IFriendshipManager
    {
        public int DeleteFriend(Profile removingPlayer, Profile friendToRemove)
        {
            throw new NotImplementedException();
        }

        public List<Profile> GetAllFriends(Profile player)
        {
            throw new NotImplementedException();
        }

        public Profile GetFriendByUsername(Profile player, string username)
        {
            throw new NotImplementedException();
        }
    }
}
