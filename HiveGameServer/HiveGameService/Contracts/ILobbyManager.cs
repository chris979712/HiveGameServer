using System.Collections.Generic;
using System.Runtime.Serialization;
using System.ServiceModel;

namespace HiveGameService.Contracts
{

    [ServiceContract(CallbackContract = typeof(ILobbyManagerCallback))]
    interface ILobbyManager
    {
        /// <summary>
        /// Connects a player to a specific lobby
        /// </summary>
        /// <param name="lobbyPlayer">Contains the data of the player to join</param>
        /// <param name="codeLobby">Contains the lobby code</param>
        [OperationContract(IsOneWay = true)]
        void ConnectToLobby(UserSession lobbyPlayer, string codeLobby);

        /// <summary>
        /// Disconnect a player from an specifyc lobby
        /// </summary>
        /// <param name="lobbyPlayer">Contains the data of the user to disconnect</param>
        /// <param name="codeLobby">Contains the lobby code</param>
        /// <param name="isKicked">Contains if the player was kicked or not</param>
        [OperationContract(IsOneWay = true)]
        void LeavePlayerFromLobby(UserSession lobbyPlayer, string codeLobby, bool isKicked);

        /// <summary>
        /// Sends the notification that the match is about to start
        /// </summary>
        /// <param name="code">Contains the code of the lobby</param>
        [OperationContract(IsOneWay = true)]
        void StartMatch(string code);

        /// <summary>
        /// Verify if the player is the creator of the match
        /// </summary>
        /// <param name="match">Contains the data of the match</param>
        /// <returns>Returns 1 if the verification it's true</returns>
        [OperationContract]
        int VerifyCreatorOfTheMatch(GameMatch match);
    }

    [ServiceContract]
    public interface ILobbyManagerCallback
    {
        /// <summary>
        /// Receives the players to connect to the lobby
        /// </summary>
        /// <param name="user">Contains the list of users received</param>
        [OperationContract]
        void ReceivePlayersToLobby(List<UserSession> user);

        /// <summary>
        /// Receive the notification if the player was kicked from the lobby
        /// </summary>
        [OperationContract]
        void ReceiveKickedNotification();

        /// <summary>
        /// Receive the notification if the match is about to start
        /// </summary>
        [OperationContract]
        void ReceiveStartMatchNotification();
    }


    [DataContract]
    public class GameMatch
    {
        [DataMember]
        public string code { get; set; }

        [DataMember]
        public int idAccount { get; set; }
    }

}
