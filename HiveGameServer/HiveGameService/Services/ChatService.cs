using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.ServiceModel;


namespace HiveGameService.Services
{
    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class HiveGameService : IChatManager
    {

        private IChatManagerCallback _chatManagerCallback;
        private static readonly Dictionary<string, IChatManagerCallback> _chatCallBacks = new Dictionary<string, IChatManagerCallback>();
        private static readonly Dictionary<string, List<Message>> _messagesFromLobby = new Dictionary<string, List<Message>>();
        private static readonly Dictionary<string, List<Profile>> usersByLobby = new Dictionary<string, List<Profile>>();

        public void ConnectToChatLobby(Profile user, string code)
        {
            HostBehaviorManager.ChangeModeToReentrant();
            _chatManagerCallback = OperationContext.Current.GetCallbackChannel<IChatManagerCallback>();
            _chatCallBacks.Add(user.username, _chatManagerCallback);
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
            if (!_messagesFromLobby.ContainsKey(code))
            {
                _messagesFromLobby[code] = new List<Message>();
            }
            _messagesFromLobby[code].Add(message);
            showNewMessageConversation(code);
        }

        public void showNewMessageConversation(string code)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            List<Profile> usersList = usersByLobby[code];
            for(int usersIndex = 0; usersIndex < usersList.Count; usersIndex++)
            {
                if (_chatCallBacks.ContainsKey(usersList[usersIndex].username))
                {
                    try
                    {
                        _chatCallBacks[usersList[usersIndex].username].ReceiveMessage(ObtainMessagesFromAnSpecificLobby(code));
                    }
                    catch(CommunicationException communicationException)
                    {
                        logger.LogFatal(communicationException);
                    }catch(TimeoutException timeOutException)
                    {
                        logger.LogWarn(timeOutException);
                    }
                }
            }
        }

        public List<Message> ObtainMessagesFromAnSpecificLobby(string code)
        {
            if (!_messagesFromLobby.ContainsKey(code))
            {
                List<Message> messages = new List<Message>();
                _messagesFromLobby.Add(code, messages);
            }
            return _messagesFromLobby[code];
        }

        public int DisconectPlayerFromChat(Profile user, string code)
        {
            int disconectionResult = Constants.ErrorOperation;
            if (_chatCallBacks.ContainsKey(user.username))
            {

                _chatCallBacks.Remove(user.username);
                if (usersByLobby.ContainsKey(code))
                {
                    usersByLobby[code].RemoveAll(userToDisconnect => userToDisconnect.username == user.username);
                }
                disconectionResult = Constants.SuccessOperation;
            }
            return disconectionResult;
        }
    }
}
