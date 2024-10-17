using DataBaseManager;
using DataBaseManager.Operations;
using DataBaseManager.Utilities;
using HiveGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    public class LeaderBoardService : ILeaderBoardService
    {
        public List<LeaderBoardPlayer> GetAllPlayersLeaderboards()
        {
            List<LeaderBoardPlayer> playersLeaderBoardObtained = new List<LeaderBoardPlayer>();
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            var leaderBoardPlayerObtainedList = leaderBoardOperation.GetAllPlayersLeaderboardsFromDataBase();
            for(int leaderBoardPlayerObtainedListIndex = 0; leaderBoardPlayerObtainedListIndex < leaderBoardPlayerObtainedList.Count; leaderBoardPlayerObtainedListIndex++)
            {
                LeaderBoardPlayer playerLeaderBoardObtained = new LeaderBoardPlayer();
                playerLeaderBoardObtained.username = leaderBoardPlayerObtainedList[leaderBoardPlayerObtainedListIndex].username;
                playerLeaderBoardObtained.idAccount = leaderBoardPlayerObtainedList[leaderBoardPlayerObtainedListIndex].idAccount;
                playerLeaderBoardObtained.totalWonMatches = leaderBoardPlayerObtainedList[leaderBoardPlayerObtainedListIndex].wonMatches;
                playerLeaderBoardObtained.totalLostMatches = leaderBoardPlayerObtainedList[leaderBoardPlayerObtainedListIndex].lostMatches;
                playerLeaderBoardObtained.totalDrawMatches = leaderBoardPlayerObtainedList[leaderBoardPlayerObtainedListIndex].drawMatches;
                playerLeaderBoardObtained.totalMatches = leaderBoardPlayerObtainedList[leaderBoardPlayerObtainedListIndex].totalMatches;
                playersLeaderBoardObtained.Add(playerLeaderBoardObtained);
            }
            return playersLeaderBoardObtained;
        }

        public LeaderBoardPlayer GetPersonalLeaderBoard(int idAccount)
        {
            LeaderBoardPlayer leaderBoardPlayer = new LeaderBoardPlayer();
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            var playerLeaderBoard = leaderBoardOperation.GetPersonalLeaderBoard(idAccount);
            leaderBoardPlayer.idAccount = playerLeaderBoard.idAccount;
            leaderBoardPlayer.username = playerLeaderBoard.username;
            leaderBoardPlayer.totalMatches = playerLeaderBoard.totalMatches;
            leaderBoardPlayer.totalLostMatches = playerLeaderBoard.lostMatches;
            leaderBoardPlayer.totalWonMatches = playerLeaderBoard.wonMatches;
            leaderBoardPlayer.totalDrawMatches = playerLeaderBoard.drawMatches;
            return leaderBoardPlayer;
        }

        public int UpdateDrawResultToPlayerLeaderBoard(int idAccount)
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int updateResult = leaderBoardOperation.UpdateDrawResultToPlayerLeaderBoardToDataBase(idAccount);
            return updateResult;
        }


        public int UpdateLoserResultToPlayerLeaderBoard(int idAccount)
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int updateResult = leaderBoardOperation.UpdateLoserResultToPlayerLeaderBoardToDataBase(idAccount);
            return updateResult;
        }

        public int UpdateWinnerResultToPlayerLeaderBoard(int idAccounr)
        {
            LeaderBoardOperation leaderBoardOperation = new LeaderBoardOperation();
            int updateResult = leaderBoardOperation.UpdateWinnerResultToPlayerLeaderBoardToDataBase(idAccounr);
            return updateResult;
        }

    }
}
