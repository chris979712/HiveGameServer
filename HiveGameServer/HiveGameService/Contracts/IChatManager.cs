using System.Collections.Generic;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace HiveGameService.Contracts
{

    [ServiceContract(CallbackContract = typeof(IChatManagerCallback))]
    public interface IChatManager
    {
        /// <summary>
        /// Connect a player to one chat lobby acording to its code.
        /// </summary>
        /// <param name="user">User to connect to chat</param>
        /// <param name="code">Lobby's code</param>
        [OperationContract(IsOneWay = true)]
        void ConnectToChatLobby(Profile user, string code);

        /// <summary>
        /// Let a player send a message to it corresponding lobby.
        /// </summary>
        /// <param name="message">Message that a user wants to send.</param>
        /// <param name="code">Code of the corresponding lobby to send the message.</param>

        [OperationContract(IsOneWay = true)]
        void SendMessages(Message message, string code);

        /// <summary>
        /// Disconnect a player from a lobby chat.
        /// </summary>
        /// <param name="user">User to disconnect from the chat</param>
        /// <param name="code">Code of the corresponding lobby to disconnect the player</param>
        /// <returns></returns>

        [OperationContract]
        int DisconectPlayerFromChat(Profile user, string code);
    }

    [ServiceContract]
    public interface IChatManagerCallback
    {

        /// <summary>
        /// Receives the message from the lobby
        /// </summary>
        /// <param name="messages">List of the messages from an specific lobby</param>
        [OperationContract]
        void ReceiveMessage(List<Message> messages);
    }

    [DataContract]
    public class Message
    {
        [DataMember(IsRequired = true)]
        public string username { get; set; }
        [DataMember(IsRequired = true)]
        public string text { get; set; }
    }

}