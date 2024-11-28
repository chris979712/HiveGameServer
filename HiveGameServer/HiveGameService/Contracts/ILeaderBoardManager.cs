using System.Collections.Generic;
using System.Runtime.Serialization;
using System.ServiceModel;


namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface ILeaderBoardManager
    {
        /// <summary>
        /// Update the win result leaderboard of a player
        /// </summary>
        /// <param name="idAccounr">Contains the id of the player to update</param>
        /// <returns>Returns 1 if the modification was successfull</returns>
        [OperationContract]
        int UpdateWinnerResultToPlayerLeaderBoard(int idAccounr);

        /// <summary>
        /// Update the lose result leaderboard of a player
        /// </summary>
        /// <param name="idAccount">Contains the id of the player to update</param>
        /// <returns>Returns 1 if the modification was successfull</returns>
        [OperationContract]
        int UpdateLoserResultToPlayerLeaderBoard(int idAccount);

        /// <summary>
        /// Update the drwaw result leaderboard of a player
        /// </summary>
        /// <param name="idAccount">Contains the id of the player to update</param>
        /// <returns>Returns 1 if the modification was successfull</returns>
        [OperationContract]
        int UpdateDrawResultToPlayerLeaderBoard(int idAccount);

        /// <summary>
        /// Get the personal leaderboard of a player
        /// </summary>
        /// <param name="idAccount">Contains the id of the player to get the leaderboard</param>
        /// <returns>Returns the leaderboard obtained</returns>
        [OperationContract]
        LeaderBoardPlayer GetPersonalLeaderBoard(int idAccount);

        /// <summary>
        /// Get all the leaderboards from the database
        /// </summary>
        /// <returns>List of all the leaderboard obtained</returns>
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
