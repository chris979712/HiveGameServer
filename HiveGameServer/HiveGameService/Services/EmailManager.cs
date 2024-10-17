using HiveGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    public class EmailManager : IEmailService
    {
        private static readonly Dictionary<string, string> codeVerificationAccesAccountRegistration = new Dictionary<string, string>();
        

    }
}
