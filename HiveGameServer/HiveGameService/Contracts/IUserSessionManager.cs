using System.Runtime.Serialization;
using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IUserSessionManager
    {
        /// <summary>
        /// Connects a player to the game
        /// </summary>
        /// <param name="user">Contains the data of the user to connect</param>
        /// <returns>Returns 1 if the connection was succesfull</returns>
        [OperationContract]
        int ConnectToGame(UserSession user);

        /// <summary>
        /// Disconnect a player from the game
        /// </summary>
        /// <param name="user">Contains the data with the user to add</param>
        /// <param name="isInMatch">Contains a boolean if the match is finished or no</param>
        /// <returns>Return 1 if the disconnection was successfull</returns>
        [OperationContract]
        int Disconnect(UserSession user, bool isInMatch);

        /// <summary>
        /// Verify if a user is connected in the game
        /// </summary>
        /// <param name="user">Contains the data of the user to check if it is connected</param>
        /// <returns>Return true if the user is connected</returns>
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
            if (obj is UserSession other)
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
