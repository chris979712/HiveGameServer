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
    public interface IMatchCreatorManager
    {
        [OperationContract]
        int CreateMatch(MatchCreator matchCreator);

        [OperationContract]
        int UpdateMatchState(MatchCreator matchCreator);

        [OperationContract]
        int VerifyExistingActiveMatch(MatchCreator matchCreator);

        [OperationContract]
        bool VerifyIfLobbyIsFull(string codeLobby);

        [OperationContract]
        bool VerifyExistingCode(string code);

        [OperationContract]
        string GenerateLobbyCode(string email);

    }

    [DataContract]
    public class MatchCreator
    {
        [DataMember]
        public int idCreatorAccount {  get; set; }

        [DataMember]
        public string codeMatch { get; set; }

        [DataMember]
        public string stateMatch { get; set; }

        [DataMember]
        public DateTime dateMatch { get; set; }

    }

}
