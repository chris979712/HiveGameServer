using System;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace HiveGameService.Contracts
{
    [ServiceContract]
    interface IUserManager
    {

        [OperationContract]
        int AddUser(Profile profile);

        [OperationContract]
        int UpdateLoginCredentials(Profile profile, Profile updatedProfile);

        [OperationContract]
        int UpdateProfile(Profile profile, string email);

        [OperationContract]
        int VerifyExistingAccesAccount(string email, string username);

        
    }

    [DataContract]
    public class Profile : AccesAccount
    {

        [DataMember]
        public int idProfile;
        [DataMember]
        public DateTime createdDate;
        [DataMember]
        public string imagePath;
        [DataMember]
        public string nickname;
        [DataMember]
        public int idAccount;

    }

    [DataContract]
    public class AccesAccount
    {

        [DataMember]
        public int idAccesAccount;
        [DataMember]
        public string username;
        [DataMember] 
        public string password;
        [DataMember]
        public string email;
        [DataMember]
        public int reputation;

    }
}
