using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Contracts
{
    [ServiceContract]
    public interface IUserSessionManager
    {
        [OperationContract]
        int ConnectToGame(string username);

        [OperationContract]
        int Disconnect(string username);

        [OperationContract]
        bool VerifyConnectivity(string username);
    }
}
