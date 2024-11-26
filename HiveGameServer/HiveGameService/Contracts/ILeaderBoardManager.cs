using System.Collections.Generic;
using System.Runtime.Serialization;
using System.ServiceModel;


namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface ILeaderBoardManager
    {
        [OperationContract]
        int UpdateWinnerResultToPlayerLeaderBoard(int idAccounr);

        [OperationContract]
        int UpdateLoserResultToPlayerLeaderBoard(int idAccount);

        [OperationContract]
        int UpdateDrawResultToPlayerLeaderBoard(int idAccount);

        [OperationContract]
        LeaderBoardPlayer GetPersonalLeaderBoard(int idAccount);

        [OperationContract]
        List<LeaderBoardPlayer> GetAllPlayersLeaderboards();
    }

    [DataContract]
    public class LeaderBoardPlayer
    {
        [DataMember]
        public int totalMatches;
        [DataMember] 
        public int totalDrawMatches;
        [DataMember]
        public int totalWonMatches;
        [DataMember] 
        public int totalLostMatches;
        [DataMember]
        public string username;
        [DataMember]
        public int idAccount;
        [DataMember]
        public string imageProfile;
    }

}
