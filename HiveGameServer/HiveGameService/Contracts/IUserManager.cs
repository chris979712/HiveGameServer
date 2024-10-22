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
