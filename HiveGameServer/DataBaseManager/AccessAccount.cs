﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBaseManager
{
    public partial class AccesAccount
    {

        public int idAccessAccount; { get; set; }
        public string username; { get; set; }
        public string password; { get; set; }
        public string email; { get; set; }
        public int reputation; { get; set; }

    }
}