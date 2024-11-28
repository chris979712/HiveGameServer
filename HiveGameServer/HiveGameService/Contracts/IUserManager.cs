using System;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IUserManager
    {
        /// <summary>
        /// Obtains a user profile by his username
        /// </summary>
        /// <param name="profile">Contains the data of the profile to add</param>
        /// <returns>Returns 1 if the insertion was succesfull</returns>
        [OperationContract]
        int AddUser(Profile profile);

        /// <summary>
        /// Obtains a user profile by his username
        /// </summary>
        /// <param name="username">Contains the username to seach</param>
        /// <returns>Returns the profile of the user searched</returns>
        [OperationContract]
        Profile GetUserProfileByUsername(string username);

        /// <summary>
        /// Obtains the user profile by his credentials
        /// </summary>
        /// <param name="username">Contains the username of the player</param>
        /// <param name="password">Contains the password of the player</param>
        /// <returns>Returns the profile obtained</returns>
        [OperationContract]
        Profile GetUserProfile(string username, string password);

        /// <summary>
        /// Updates login credentials of a player
        /// </summary>
        /// <param name="oldAccessProfile">Contains the old data of the player to update</param>
        /// <param name="newAccessProfile">Contains the new data of the player to update</param>
        /// <returns>Returns 1 if the modification was succesfull</returns>
        [OperationContract]
        int UpdateLoginCredentials(AccessAccount oldAccessProfile, AccessAccount newAccessProfile);

        /// <summary>
        /// Updates the reputation of the player
        /// </summary>
        /// <param name="username">Contains the username of the player</param>
        /// <param name="reputation">Contains the amount of reputation to add</param>
        /// <returns>Returns 1 if the modification was succesfull</returns>
        [OperationContract]
        int UpdatePlusUserReputation(string username, int reputation);

        /// <summary>
        /// Updates the reputation of the player
        /// </summary>
        /// <param name="username">Contains the username of the player</param>
        /// <param name="reputation">Contains the amount of reputation to quit</param>
        /// <returns>Returns 1 if the modification was succesfull</returns>
        [OperationContract]
        int UpdateMinusUserReputation(string username, int reputation);

        /// <summary>
        /// Updates the profile from one player
        /// </summary>
        /// <param name="profile">Contains the new data of the player to update</param>
        /// <param name="email">Contains the email of the player to update</param>
        /// <returns>Returns 1 if the modification was succesfull</returns>
        [OperationContract]
        int UpdateProfile(Profile profile, string email);

        /// <summary>
        /// Verifies if there is an existing account
        /// </summary>
        /// <param name="email">Contains the email of a player</param>
        /// <param name="username">Contains the username of a player</param>
        /// <returns>Returns 1 if the account exist</returns>
        [OperationContract]
        int VerifyExistingAccesAccount(string email, string username);

        /// <summary>
        /// Verify if the credentials of one player are correct
        /// </summary>
        /// <param name="username">Contains the username of the player</param>
        /// <param name="email">Contains the email of a player</param>
        /// <returns>Return 1 if the credentials are correct</returns>
        [OperationContract]
        int VerifyCredentials(string username, string email);

        /// <summary>
        /// Verify if the access passwords are correct
        /// </summary>
        /// <param name="email">Contains the email of a playe</param>
        /// <param name="password">Contains the password of a player</param>
        /// <returns>Return 1 if the credentials are correct</returns>
        [OperationContract]
        int VerifyPasswordCredentials(string email, string password);
    }

    [DataContract]
    public class Profile : AccessAccount
    {
        [DataMember]
        public int idProfile { get; set; }
        [DataMember]
        public DateTime createdDate { get; set; }
        [DataMember]
        public string imagePath { get; set; }
        [DataMember]
        public string nickname { get; set; }
        [DataMember]
        public int idAccount { get; set; }
        [DataMember]
        public string description { get; set; }

        public override bool Equals(object obj)
        {
            bool comparation = false;
            if (obj is Profile other)
            {
                comparation = (username?.Equals(other.username) ?? other.username == null) &&
                    (nickname?.Equals(other.nickname) ?? other.nickname == null) &&
                    idAccesAccount == other.idAccesAccount && idProfile == other.idProfile &&
                    idAccount == other.idAccount && (description?.Equals(other.description) ?? other.description == null) &&
                    (email?.Equals(other.email) ?? other.email == null) && (imagePath?.Equals(other.imagePath) ?? other.imagePath == null);
            }
            return comparation;
        }

        public override int GetHashCode()
        {
            int hashUsername = username?.GetHashCode() ?? 0;
            int hashNickname = nickname?.GetHashCode() ?? 0;
            int hashIdProfile = idProfile.GetHashCode();
            int hashIdAccount = idAccount.GetHashCode();
            int hashIdAccesAccount = idAccesAccount.GetHashCode();
            int hashDescription = description?.GetHashCode() ?? 0;
            int hashEmail = email?.GetHashCode() ?? 0;
            int hashImagePath = imagePath?.GetHashCode() ?? 0;
            return hashUsername ^ hashNickname ^ hashIdProfile ^ hashIdAccount ^ hashIdAccesAccount ^ hashDescription ^
                hashEmail ^ hashImagePath;
        }
    }

    [DataContract]
    public class AccessAccount
    {
        [DataMember]
        public int idAccesAccount { get; set; }
        [DataMember]
        public string username { get; set; }
        [DataMember]
        public string password { get; set; }
        [DataMember]
        public string email { get; set; }
        [DataMember]
        public int reputation { get; set; }
    }

}
