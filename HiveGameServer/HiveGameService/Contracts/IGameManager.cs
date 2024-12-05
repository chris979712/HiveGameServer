using System.Collections.Generic;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Windows;


namespace HiveGameService.Contracts
{

    [ServiceContract(CallbackContract = typeof(IGameManagerCallback))]
    interface IGameManager
    {

        /// <summary>
        /// Connects an user to the gameboard of the match
        /// </summary>
        /// <param name="session">Contains the data of the user who is going to join the gameboard</param>
        /// <param name="codeMatch">Contains the code of the match</param>
        [OperationContract(IsOneWay = true)]
        void ConnectToGameBoard(UserSession session, string codeMatch);

        /// <summary>
        /// Broadcast the finish of the match with the corresponding result
        /// </summary>
        /// <param name="codeMatch">Contains the code of the match to send the finish notification</param>
        /// <param name="winner">Contains the name of the winner</param>
        [OperationContract(IsOneWay = true)]
        void FinishOfTheMatch(string codeMatch, string winner);

        /// <summary>
        /// Broadcast the corresponding moved piece on the board
        /// </summary>
        /// <param name="piece">Contains the piece that was moved</param>
        /// <param name="session">Conatins the data of the user who moved the piece</param>
        /// <param name="codeMatch">Contains the code of the match</param>
        [OperationContract(IsOneWay = true)]
        void MovePiece(GamePice piece, UserSession session, string codeMatch);

        /// <summary>
        /// Set the initial and later turns
        /// </summary>
        /// <param name="session">Contains the data of the actual player with the turns</param>
        /// <param name="codeMatch">Contains the code of the match</param>
        [OperationContract(IsOneWay = true)]
        void SetTurns(UserSession session, string codeMatch);

        /// <summary>
        /// Let a user leave the match that is in progress
        /// </summary>
        /// <param name="session">Contains the data of the user who is going to leave</param>
        /// <param name="codeMatch">Contains the code of the match</param>
        [OperationContract(IsOneWay = true)]
        void LeaveTheGame(UserSession session, string codeMatch);

        /// <summary>
        /// Let a user leave the match when it's finished
        /// </summary>
        /// <param name="codeMatch">Contains the code of the match</param>
        /// <param name="session">Contains the data of the user who is going to leave</param>
        /// <returns></returns>
        [OperationContract]
        int LeaveMatchFinished(string codeMatch, UserSession session);

        /// <summary>
        /// Checks if the connection between the client and the server is active.
        /// </summary>
        /// <returns>
        /// Returns `true` if the server connection is successful.
        /// Returns `false` if any communication issue occurs.
        /// </returns>
        /// <remarks>
        /// This method is used by clients to "ping" the server and ensure the connection is still active. 
        /// It is particularly useful in real-time games to detect unexpected disconnections.
        /// </remarks>
        [OperationContract]
        bool CheckConnection();
    }

    [ServiceContract]
    public interface IGameManagerCallback
    {
        /// <summary>
        /// Charge the information of the user who joins the match
        /// </summary>
        /// <param name="side">Contains the side where the player is going to be</param>
        [OperationContract]
        void ChargePlayerGameBoard(PlayerSide side);

        /// <summary>
        /// Receives the corresponding moved piece in the board
        /// </summary>
        /// <param name="piece">Contains the piece that was moved</param>
        [OperationContract]
        void ReceivePieceMoved(GamePice piece);

        /// <summary>
        /// Receive the corresponding an actual turns
        /// </summary>
        /// <param name="isTurn">Contains if it's player turns or not</param>
        [OperationContract]
        void ReceiveTurns(bool isTurn);

        /// <summary>
        /// Receive the list of players connected to the gameboard
        /// </summary>
        /// <param name="userSession">Listo of players who are in the game</param>
        [OperationContract]
        void ReceivePlayersToMatch(List<UserSession> userSession);

        /// <summary>
        /// Receive the notification that a player left the game
        /// </summary>
        /// <param name="doPlayerLeftTheGame">Contains the bool with the result if it left</param>
        [OperationContract]
        void ReceivePlayerHasLeftNotification(bool doPlayerLeftTheGame);

        /// <summary>
        /// Receive the notification with the result of the winner
        /// </summary>
        /// <param name="winner">Contains the name of the winner</param>
        [OperationContract]
        void ReceiveFinalMatchResult(string winner);

    }

    [DataContract]
    public class PlayerSide
    {
        [DataMember]
        public string username { get; set; }

        [DataMember]
        public bool playerOne { get; set; }

        [DataMember]
        public bool playerTwo { get; set; }
    }

    [DataContract]
    public class GamePice
    {
        [DataMember]
        public Piece piece { get; set; }

        [DataMember]
        public string imagePath { get; set; }

        [DataMember]
        public int numberOfPiece { get; set; }

        [DataMember]
        public Point position { get; set; }

        [DataMember]
        public string playerName { get; set; }
    }

    [DataContract]
    public class Piece
    {
        [DataMember]
        public string name { get; set; }

        [DataMember]
        public string playerName { get; set; }

        [DataMember]
        public Point position { get; set; }
    }

}
