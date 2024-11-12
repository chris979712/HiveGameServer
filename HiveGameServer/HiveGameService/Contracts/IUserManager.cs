using System;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace HiveGameService.Contracts
{
    [ServiceContract]
    public interface IUserManager
    {

        [OperationContract]
        int AddUser(Profile profile);

        [OperationContract]
        Profile GetUserProfileByUsername(string username);

        [OperationContract]
        Profile GetUserProfile(string username, string password);

        [OperationContract]
        int UpdateLoginCredentials(AccessAccount profile, AccessAccount updatedProfile);

        [OperationContract]
        int UpdatePlusUserReputation(string username, int reputation);

        [OperationContract]
        int UpdateMinusUserReputation(string username, int reputation);

        [OperationContract]
        int UpdateProfile(Profile profile, string email);

        [OperationContract]
        int VerifyExistingAccesAccount(string email, string username);

        [OperationContract]
        int VerifyCredentials(string username, string email);

        [OperationContract]
        int VerifyPasswordCredentials(string email, string password);

    }

    [DataContract]
    public class Profile : AccessAccount
    {

        [DataMember]
        public int idProfile {  get; set; }
        [DataMember]
        public DateTime createdDate {  get; set; }
        [DataMember]
        public string imagePath {  get; set; }
        [DataMember]
        public string nickname {  get; set; }
        [DataMember]
        public int idAccount {  get; set; }
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
                    idAccount == other.idAccount && (description?.Equals(other.description) ?? other.description == null)&&
                    (email?.Equals(other.email)??other.email==null) && (imagePath?.Equals(other.imagePath) ?? other.imagePath == null);
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
        public int idAccesAccount {  get; set; }
        [DataMember]
        public string username {  get; set; }
        [DataMember] 
        public string password {  get; set; }
        [DataMember]
        public string email {  get; set; }
        [DataMember]
        public int reputation {  get; set; }

    }
}
