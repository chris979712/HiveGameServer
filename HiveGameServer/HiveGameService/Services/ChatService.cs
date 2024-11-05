using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class HiveGameService : IChatManager
    {

        private IChatManagerCallback chatManagerCallback;
        private static readonly Dictionary<string, IChatManagerCallback> chatCallBacks = new Dictionary<string, IChatManagerCallback>();
        private static readonly Dictionary<string, List<Message>> messagesFromLobby = new Dictionary<string, List<Message>>();
        private static readonly Dictionary<string, List<Profile>> usersByLobby = new Dictionary<string, List<Profile>>();

        public void ConnectToChatLobby(Profile user, string code)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            chatManagerCallback = OperationContext.Current.GetCallbackChannel<IChatManagerCallback>();
            chatCallBacks.Add(user.username, chatManagerCallback);
            if (!usersByLobby.ContainsKey(code))
            {
                usersByLobby[code] = new List<Profile>();
            }
            usersByLobby[code].Add(user);
            showNewMessageConversation(code);
        }

        public void SendMessages(Message message, string code)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            if (!messagesFromLobby.ContainsKey(code))
            {
                messagesFromLobby[code] = new List<Message>();
            }
            messagesFromLobby[code].Add(message);
            showNewMessageConversation(code);
        }

        public void showNewMessageConversation(string code)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            List<Profile> usersList = usersByLobby[code];
            for(int usersIndex = 0; usersIndex < usersList.Count; usersIndex++)
            {
                if (chatCallBacks.ContainsKey(usersList[usersIndex].username))
                {
                    try
                    {
                        chatCallBacks[usersList[usersIndex].username].ReceiveMessage(ObtainMessagesFromAnSpecificLobby(code));
                    }
                    catch(CommunicationException communicationException)
                    {
                        logger.LogError(communicationException);
                    }catch(TimeoutException timeOutException)
                    {
                        logger.LogError(timeOutException);
                    }
                }
            }
        }

        public List<Message> ObtainMessagesFromAnSpecificLobby(string code)
        {
            if (!messagesFromLobby.ContainsKey(code))
            {
                List<Message> messages = new List<Message>();
                messagesFromLobby.Add(code, messages);
            }
            return messagesFromLobby[code];
        }

        public int DisconectPlayerFromChat(Profile user, string code)
        {
            int disconectionResult = Constants.ERROR_OPERATION;
            if (chatCallBacks.ContainsKey(user.username))
            {

                chatCallBacks.Remove(user.username);
                if (usersByLobby.ContainsKey(code))
                {
                    usersByLobby[code].RemoveAll(userToDisconnect => userToDisconnect.username == user.username);
                }
                disconectionResult = Constants.SUCCES_OPERATION;
            }
            return disconectionResult;
        }
    }
}
