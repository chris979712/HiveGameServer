using System;

namespace HiveGameService.UtilitiesService
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


    }

}
