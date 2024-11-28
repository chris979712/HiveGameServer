using System.Collections.Generic;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace HiveGameService.Contracts
{

    [ServiceContract]
    public interface IFriendRequestManager
    {
        /// <summary>
        /// Creates an save a friend request generated
        /// </summary>
        /// <param name="playerOne">Contains the data of the person who create the friend request</param>
        /// <param name="playerTwo">Contains the data of the person who receives the friend request</param>
        /// <returns></returns>
        [OperationContract]
        int CreateFriendRequest(Profile playerOne, Profile playerTwo);

        /// <summary>
        /// Obtains the friend request of an specified user
        /// </summary>
        /// <param name="player">Contains the data of the user who wants to obains his friend request</param>
        /// <returns>Return the list of friend request obtained</returns>

        [OperationContract]
        List<Profile> GetFriendRequests(Profile player);

        /// <summary>
        /// Acept a friend request obtained
        /// </summary>
        /// <param name="playerOne">Contains the data of the person who answers the friend request</param>
        /// <param name="playerTwo">Contains the data of the person who will receive the answer</param>
        /// <returns>Returns 1 if the request was succesfully acepted</returns>

        [OperationContract]
        int AcceptFriendRequest(Profile playerOne, Profile playerTwo);

        /// <summary>
        /// Declines a friend request obtained
        /// </summary>
        /// <param name="playerOne">Contains the data of the person who answers the friend request</param>
        /// <param name="playerTwo">Contains the data of the person who will receive the answer</param>
        /// <returns>Returns 1 if the request was succesfully declined</returns>

        [OperationContract]
        int DeclineFriendRequest(Profile playerOne, Profile playerTwo);

        /// <summary>
        /// Verifies if there is an existing friend request
        /// </summary>
        /// <param name="playerOne">Contains the data of the person who wants to send a friend request</param>
        /// <param name="playerTwo">Contains the data of the person who was searched to add</param>
        /// <returns>Returns 1 if there is an existing friend request</returns>

        [OperationContract]
        int VerifyFriendRequestRegistered(Profile playerOne, Profile playerTwo);
    }

    [DataContract]
    public class FriendShip
    {
        [DataMember]
        public int idFriendRequest { get; set; }
        [DataMember]
        public int idPlayerOne { get; set; }
        [DataMember]
        public int idPlayerTwo { get; set; }
        [DataMember]
        public string state { get; set; }
    }

}
