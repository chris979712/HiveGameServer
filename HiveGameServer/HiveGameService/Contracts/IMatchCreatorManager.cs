using System;
using System.Runtime.Serialization;
using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IMatchCreatorManager
    {
        /// <summary>
        /// Creates a match to register into the database
        /// </summary>
        /// <param name="matchCreator">Contains the data of the match</param>
        /// <returns>Returns 1 if the insertion was successfull</returns>
        [OperationContract]
        int CreateMatch(MatchCreator matchCreator);

        /// <summary>
        /// Updates the state of a match
        /// </summary>
        /// <param name="matchCreator">Contains the data of the match to update</param>
        /// <returns></returns>
        [OperationContract]
        int UpdateMatchState(MatchCreator matchCreator);

        /// <summary>
        /// Verify if there is an existing active match
        /// </summary>
        /// <param name="matchCreator">Contains the data of the match to check if it is active</param>
        /// <returns>Returns 1 if the match to search is active</returns>
        [OperationContract]
        int VerifyExistingActiveMatch(MatchCreator matchCreator);

        /// <summary>
        /// Verify if the match is full or not
        /// </summary>
        /// <param name="codeLobby">Contains the code of the lobby</param>
        /// <returns>Returns true if the match is fulll</returns>
        [OperationContract]
        bool VerifyIfLobbyIsFull(string codeLobby);

        /// <summary>
        /// Verify if the inserted code exists
        /// </summary>
        /// <param name="code">Contains the code of the match</param>
        /// <returns>Returns true if the inserted code exists</returns>
        [OperationContract]
        bool VerifyExistingCode(string code);

        /// <summary>
        /// Generates a lobby code 
        /// </summary>
        /// <param name="email">Contains the email of the player who is creating a match</param>
        /// <returns>Returns the code of the match</returns>
        [OperationContract]
        string GenerateLobbyCode(string email);
    }

    [DataContract]
    public class MatchCreator
    {
        [DataMember]
        public int idCreatorAccount { get; set; }

        [DataMember]
        public string codeMatch { get; set; }

        [DataMember]
        public string stateMatch { get; set; }

        [DataMember]
        public DateTime dateMatch { get; set; }

    }

}
