using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Utilities
{
    public class Enumerations
    {
        public enum FriendshipStates
        {
            Requested,
            Accepted,
            Declined,
            Eliminated,
            Blocked
        }

        public enum Match
        {
            Active,
            Cancelled,
            Finished
        }


    }
}
