using DataBaseManager;
using DataBaseManager.Operations;
using HiveGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    public partial class HiveGameService : IMatchCreatorManager
    {
        public int CreateMatch(MatchCreator matchCreator)
        {
            MatchOperation matchOperation = new MatchOperation();
            Match matchToCreate = new Match()
            {
                FK_IdAccount = matchCreator.idCreatorAccount,
                state = matchCreator.stateMatch,
                date = matchCreator.dateMatch,
                code = matchCreator.codeMatch,
            };
            int insertionResult = matchOperation.RegisterMatchToDataBase(matchToCreate);
            return insertionResult;
        }

        public int UpdateMatchState(MatchCreator matchCreator)
        {
            MatchOperation matchOperation = new MatchOperation();
            Match matchToCreate = new Match()
            {
                FK_IdAccount = matchCreator.idCreatorAccount,
                state = matchCreator.stateMatch,
                date = matchCreator.dateMatch,
                code = matchCreator.codeMatch,
            };
            int updateResult = matchOperation.ModifyMatchState(matchToCreate);
            return updateResult;
        }

        public int VerifyExistingActiveMatch(MatchCreator matchCreator)
        {
            MatchOperation matchOperation = new MatchOperation();
            Match matchToCreate = new Match()
            {
                FK_IdAccount = matchCreator.idCreatorAccount,
                state = matchCreator.stateMatch,
                date = matchCreator.dateMatch,
                code = matchCreator.codeMatch,
            };
            int verificationResult = matchOperation.VerifyExistingActiveMatch(matchToCreate);
            return verificationResult;
        }

        public bool VerifyIfLobbyIsFull(string codeLobby)
        {
            bool verificationResult = true;
            List<UserSession> usersInLobby = lobbyPlayers[codeLobby];
            if (usersInLobby.Count >= 2)
            {
                verificationResult = true;
            }
            else
            {
                verificationResult = false;
            }
            return verificationResult;
        }

        public bool VerifyExistingCode(string code)
        {
            return lobbyCodes.ContainsKey(code);
        }

        public string GenerateLobbyCode(string email)
        {
            Random random = new Random();
            int codeGenerated = random.Next(100000, 999999);
            string stringCodeGenerated = codeGenerated.ToString();
            while (VerifyExistingCode(stringCodeGenerated))
            {
                codeGenerated = random.Next(100000, 999999);
                stringCodeGenerated = codeGenerated.ToString();
            }
            lobbyCodes.Add(stringCodeGenerated, email);
            return stringCodeGenerated;
        }

    }

}
