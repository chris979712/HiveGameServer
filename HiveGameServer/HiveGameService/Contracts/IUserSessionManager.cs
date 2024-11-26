using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Contracts
{
    [ServiceContract]
    public interface IUserSessionManager
    {
        [OperationContract]
        int ConnectToGame(UserSession user);

        [OperationContract]
        int Disconnect(UserSession user, bool isInMatch);

        [OperationContract]
        bool VerifyConnectivity(UserSession user);
    }

    [DataContract]
    public class UserSession
    {
        [DataMember]
        public string username { get; set; }

        [DataMember]
        public int idAccount { get; set; }

        [DataMember]
        public string codeMatch { get; set; }

        public override bool Equals(object obj)
        {
            bool comparation = false;
            if(obj is UserSession other)
            {
                comparation = username.Equals(other.username) &&
                    idAccount.Equals(other.idAccount) &&
                    (codeMatch?.Equals(other.codeMatch) ?? other.codeMatch == null); 
            }
            return comparation;
        }

        public override int GetHashCode()
        {
            int hashUsername = username?.GetHashCode() ?? 0;
            int hashIdAccount = idAccount.GetHashCode();
            int hashCodeMatch = codeMatch?.GetHashCode() ?? 0;
            return hashUsername ^ hashIdAccount ^ hashCodeMatch;
        }
    }
}
