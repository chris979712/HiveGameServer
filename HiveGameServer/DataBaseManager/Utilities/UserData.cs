using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Utilities
{
    public class UserData
    {

        public int idAccessAccount { get; set; }
        public string username { get; set; }
        public string email { get; set; }
        public int reputation { get; set; }
        public int idProfile { get; set; }
        public int FK_IdAccount { get; set; }
        public string nickname { get; set; }
        public string imagePath { get; set; }
        public DateTime createdDate { get; set; }

        public string description { get; set; }

        public override bool Equals(object obj)
        {
            if(obj is  UserData other)
            {
                return idAccessAccount == other.idAccessAccount &&
                    username == other.username && email == other.email &&
                    reputation == other.reputation && idProfile == other.idProfile &&
                    FK_IdAccount == other.FK_IdAccount && nickname == other.nickname &&
                    imagePath == other.imagePath && createdDate == other.createdDate &&
                    description == other.description;
            }
            return false;
        }

    }

}
