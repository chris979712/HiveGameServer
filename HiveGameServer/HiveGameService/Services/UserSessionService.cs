using HiveGameService.Contracts;
using HiveGameService.UtilitiesService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    public partial class HiveGameService : IUserSessionManager
    {
        private static List<string> usersConnected = new List<string>();
        public int ConnectToGame(string username)
        {
            int resultConnection = Constants.ERROR_OPERATION;
            if (!usersConnected.Contains(username))
            {
                usersConnected.Add(username);
                resultConnection = Constants.SUCCES_OPERATION;
            }
            return resultConnection;
        }

        public int Disconnect(string username)
        {
            int resultDisconnection = Constants.ERROR_OPERATION;
            if (usersConnected.Contains(username))
            {
                usersConnected.Remove(username);
                resultDisconnection = Constants.SUCCES_OPERATION;
            }
            else
            {
                resultDisconnection = Constants.NO_DATA_MATCHES;
            }
            return resultDisconnection;
        }

        public bool VerifyConnectivity(string username)
        {
            bool resultVerification = false;
            if (usersConnected.Contains(username))
            {
                resultVerification = true;
            }
            return resultVerification;
        }
    }
}
