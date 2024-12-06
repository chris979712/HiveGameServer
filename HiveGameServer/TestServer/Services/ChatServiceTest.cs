using System;
using System.ServiceModel;
using System.Threading.Tasks;
using HiveGameService.Contracts;
using TestServer.HiveServerProxy;
using Xunit;
using HiveGameService.Utilities;

namespace TestServer.Services
{
    public class ChatManagerClientCallback : HiveServerProxy.IChatManagerCallback
    {
        public bool messageReceived {  get; set; }
        public void ReceiveMessage(Message[] messages)
        {
            messageReceived = true;
            Console.WriteLine("Messages received");
        }

    }

    public class ChatServiceTest
    {
        private static ChatManagerClient chatProxy;
        private static ChatManagerClientCallback ChatManagerClientCallback;
        public ChatServiceTest()
        {
            ChatManagerClientCallback = new ChatManagerClientCallback();
            chatProxy = new ChatManagerClient(new InstanceContext(ChatManagerClientCallback));
            ChatManagerClientCallback.messageReceived = false;
        }

        [Fact]
        public async void ConnectToChatLobbyTestSuccess()
        {
            HiveGameService.Contracts.Profile userToAddTest = new HiveGameService.Contracts.Profile()
            {
                username = "Chris985"
            };
            string codeLobby = "123456";
            chatProxy.ConnectToChatLobby(userToAddTest, codeLobby);
            await Task.Delay(5000);
            chatProxy.DisconectPlayerFromChat(userToAddTest, codeLobby);
            Assert.True(ChatManagerClientCallback.messageReceived);
        }

        [Fact]
        public async void SendMessagesTestSuccess()
        {
            string codeLobby = "123456";
            HiveGameService.Contracts.Profile profileToAdd = new HiveGameService.Contracts.Profile()
            {
                username = "Chris985"
            };
            chatProxy.ConnectToChatLobby(profileToAdd, codeLobby);
            Message message = new Message()
            {
                username = "Chris985",
                text = "Hi, this is a test"
            };
            chatProxy.SendMessages(message, codeLobby);
            await Task.Delay(5000);
            chatProxy.DisconectPlayerFromChat(profileToAdd, codeLobby);
            Assert.True(ChatManagerClientCallback.messageReceived);
        }

        [Fact]
        public void DisconnectPlayerFromChatTestSuccess()
        {
            HiveGameService.Contracts.Profile userTest = new HiveGameService.Contracts.Profile()
            {
                username = "Chris985"
            };
            string codeLobby = "123456";
            chatProxy.ConnectToChatLobby(userTest, codeLobby);
            int resultObtained = chatProxy.DisconectPlayerFromChat(userTest, codeLobby);
            int resultExpected = Constants.SuccessOperation;
            Assert.Equal(resultObtained, resultExpected);
        }

        [Fact]
        public void DisconnectPlayerFromChatFailTestSuccess()
        {
            HiveGameService.Contracts.Profile userTestExisted = new HiveGameService.Contracts.Profile()
            {
                username = "Chrisvz12"
            };
            HiveGameService.Contracts.Profile userTestInexisted = new HiveGameService.Contracts.Profile()
            {
                username = "Chrisvz12"
            };
            string codeLobby = "123456";
            chatProxy.ConnectToChatLobby(userTestExisted, codeLobby);
            int resultObtained = chatProxy.DisconectPlayerFromChat(userTestInexisted, codeLobby);
            int resultExpected = Constants.SuccessOperation;
            Assert.Equal(resultObtained, resultExpected);
            chatProxy.DisconectPlayerFromChat(userTestExisted, codeLobby);
        }

    }

}
