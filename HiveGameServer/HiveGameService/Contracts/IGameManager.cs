using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Windows;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IGameManagerCallback))]
    interface IGameManager
    {
        [OperationContract(IsOneWay = true)]
        void ConnectToGameBoard(UserSession session, string codeMatch);

        [OperationContract(IsOneWay = true)]
        void MovePiece(GamePice piece, UserSession session, string codeMatch);

        [OperationContract(IsOneWay = true)]
        void SetTurns(UserSession session, string codeMatch);

        [OperationContract(IsOneWay = true)]
        void LeaveTheGame(UserSession session, string codeMatch);
    }

    [ServiceContract]
    public interface IGameManagerCallback
    {
        [OperationContract]
        void ChargePlayerGameBoard(PlayerSide side);

        [OperationContract]
        void ReceivePieceMoved(GamePice piece);

        [OperationContract]
        void ReceiveTurns(bool isTurn);

        [OperationContract]
        void ReceivePlayersToMatch(List<UserSession> userSession);

        [OperationContract]
        void ReceivePlayerHasLeftNotification(bool doPlayerLeftTheGame);
    }

    [DataContract]
    public class PlayerSide
    {
        [DataMember]
        public string username {  get; set; }

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
        public Point position {  get; set; }
    }

    [DataContract]
    public class Piece
    {
        [DataMember]
        public string name { get; set; }

        [DataMember]
        public int count { get; set; }

        [DataMember]
        public Point position { get; set; }

    }
}
