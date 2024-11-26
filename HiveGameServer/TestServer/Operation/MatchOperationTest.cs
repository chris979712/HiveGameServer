using DataBaseManager;
using DataBaseManager.Operations;
using HiveGameService.Utilities;
using System;
using Xunit;

namespace TestServer.Operation
{
    public class MatchOperationTest
    {
        [Fact]
        public void RegisterMatchToDataBaseTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "123456",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = matchToCreateOperationTest.RegisterMatchToDataBase(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void RegisterMatchToDataBaseExceptionTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "654321",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = matchToCreateOperationTest.RegisterMatchToDataBase(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void ModifyMatchStateTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "123456",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Cancelled.ToString(),
            };
            int resultExpected = Constants.SUCCES_OPERATION;
            int resultObtained = matchToCreateOperationTest.ModifyMatchState(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void ModifyMatchStateFailTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "125643",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Cancelled.ToString(),
            };
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = matchToCreateOperationTest.ModifyMatchState(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void ModifyMatchStateExceptionTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "125673",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Finished.ToString(),
            };
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = matchToCreateOperationTest.ModifyMatchState(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingActiveMatchTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "654321",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = matchToCreateOperationTest.VerifyExistingActiveMatch(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingActiveMatchFailTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "123456",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = matchToCreateOperationTest.VerifyExistingActiveMatch(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyExistingActiveMatchExceptionTestSuccess()
        {
            MatchOperation matchToCreateOperationTest = new MatchOperation();
            Match matchToCreateTest = new Match()
            {
                code = "654321",
                date = DateTime.Now,
                FK_IdAccount = 1,
                state = Enumerations.Match.Active.ToString(),
            };
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = matchToCreateOperationTest.VerifyExistingActiveMatch(matchToCreateTest);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyMatchCreatorTestSuccess()
        {
            MatchOperation matchOperation = new MatchOperation();
            Match matchToFind = new Match()
            {
                code = "123456",
                FK_IdAccount = 1
            };
            int resultExpected = Constants.DATA_MATCHES;
            int resultObtained = matchOperation.VerifyMatchCreator(matchToFind);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyMatchCreatorFailTestSuccess()
        {
            MatchOperation matchOperation = new MatchOperation();
            Match matchToFind = new Match()
            {
                code = "111111",
                FK_IdAccount = 1
            };
            int resultExpected = Constants.NO_DATA_MATCHES;
            int resultObtained = matchOperation.VerifyMatchCreator(matchToFind);
            Assert.Equal(resultExpected, resultObtained);
        }

        [Fact]
        public void VerifyMatchCreatorExceptionTestSuccess()
        {
            MatchOperation matchOperation = new MatchOperation();
            Match matchToFind = new Match()
            {
                code = "111111",
                FK_IdAccount = 1
            };
            int resultExpected = Constants.ERROR_OPERATION;
            int resultObtained = matchOperation.VerifyMatchCreator(matchToFind);
            Assert.Equal(resultExpected, resultObtained);
        }

    }
}
