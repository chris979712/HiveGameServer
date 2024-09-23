using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBaseManager
{
    public partial class Friendship
    {
        public int idFriendship; { get; set; }
        public int idPlayerTwo; { get; set; }
        public int idPlayerOne; { get; set; }
        public string state; { get; set; }
    }
}
