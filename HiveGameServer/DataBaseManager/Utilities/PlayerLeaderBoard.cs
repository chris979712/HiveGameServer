using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBaseManager.Utilities
{
    public class PlayerLeaderBoard
    {
        public int totalMatches {  get; set; }

        public int wonMatches { get; set; }

        public int lostMatches { get; set; }

        public int drawMatches { get; set; }

        public string username { get; set; }

        public int idAccount { get; set; }

        public string imageProfile { get; set; }

        public override bool Equals(Object obj)
        {
            if(obj is PlayerLeaderBoard other)
            {
                return totalMatches == other.totalMatches && wonMatches == other.wonMatches 
                    && lostMatches == other.lostMatches && drawMatches == other.drawMatches 
                    && drawMatches == other.drawMatches && username.Equals(other.username) 
                    && idAccount == other.idAccount && imageProfile.Equals(other.imageProfile);
            }
            return false;
        }
    }
}
