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
        private static ObservableCollection<Profile> users = new ObservableCollection<Profile>();

        public void ConnectToChatLobby(Profile user, string code)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            HostBehaviorManager.ChangeModeToReentrant();
            chatManagerCallback = OperationContext.Current.GetCallbackChannel<IChatManagerCallback>();
            chatCallBacks.Add(user.username, chatManagerCallback);
            users.Add(user);
            var callbackList = chatCallBacks?.ToArray();
            try
            {
                for(int callBackListIndex = 0; callBackListIndex < callbackList.Length; callBackListIndex++)
                {
                    callbackList[callBackListIndex].Value.UserConnected(users);
                }
            }catch(CommunicationException communicationException)
            {
                logger.LogError(communicationException);   
            }catch(TimeoutException timeoutException)
            {
                logger.LogError(timeoutException);
            }
            showNewMessageConversation(code);
        }

        public void SendMessages(Message message, string code)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            messagesFromLobby[code].Add(message);
            showNewMessageConversation(code);
        }

        public void showNewMessageConversation(string code)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            var usersList = users?.ToArray();
            for(int usersIndex = 0; usersIndex < usersList.Length; usersIndex++)
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

        public ObservableCollection<Profile> GetConnectedUsers()
        {
            return users;
        }

        public int DisconectPlayerFromChat(Profile user)
        {
            int disconectionResult = Constants.ERROR_OPERATION;
            if (chatCallBacks.ContainsKey(user.username))
            {
                chatCallBacks.Remove(user.username);
                disconectionResult = Constants.SUCCES_OPERATION;
            }
            return disconectionResult;
        }
    }
}
