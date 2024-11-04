using HiveGameService.Contracts;
using HiveGameService.Utilities;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;


namespace HiveGameService.Services
{
    public partial class HiveGameService : IEmailVerificationManager
    {
        private static readonly Dictionary<string, string> codeVerificationAccesAccountRegistration = new Dictionary<string, string>();

        public int SendVerificationEmail(string emailToSend)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int resultSendedEmail = Constants.ERROR_OPERATION;
            string codeGenerated = GenerateVerificatonCode(emailToSend);
            string templateVerificationMessage = BodyMessageFormat();
            try
            {
                if(templateVerificationMessage!="Not found template file")
                {
                    string emailSender = "candcinnovationshivegame@gmail.com";
                    string password = "guyy ihtn sygv daiy";
                    MailMessage messageToSend = new MailMessage();
                    messageToSend.Subject = "Edit credentials request";
                    messageToSend.From = new MailAddress(emailSender);
                    messageToSend.To.Add(emailToSend);
                    messageToSend.Body = templateVerificationMessage.Replace("{code}", codeGenerated);
                    messageToSend.IsBodyHtml = true;
                    var smtpClient = new SmtpClient("smtp.gmail.com")
                    {
                        Port = 587,
                        Credentials = new NetworkCredential(emailSender, password),
                        EnableSsl = true
                    };
                    smtpClient.Send(messageToSend);
                    resultSendedEmail = Constants.SUCCES_OPERATION;
                }
            }catch (FileNotFoundException fileNotFoundException)
            {
                logger.LogError(fileNotFoundException);
            }catch(SmtpFailedRecipientException smtpFailedRecipientException)
            {
                logger.LogError(smtpFailedRecipientException);
            }catch (SmtpException smtpException)
            {
                logger.LogError(smtpException);
            }
            catch (FormatException formatException)
            {
                logger.LogError(formatException);
            }
            catch(InvalidOperationException invalidOperationException)
            {
                logger.LogError(invalidOperationException);
            }
            return resultSendedEmail;
        }

        private string BodyMessageFormat()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            string bodyMessageFormat;
            try
            {
                string baseDirectory = AppDomain.CurrentDomain.BaseDirectory;
                string serverPath = Path.GetFullPath(Path.Combine(baseDirectory, "../../../"));
                string templatePath = Path.Combine(serverPath, "HiveGameService/Utilities/VerificationEmail.html");
                bodyMessageFormat = File.ReadAllText(templatePath);
            }catch(FileNotFoundException fileNotFoundException)
            {
                logger.LogError(fileNotFoundException);
                bodyMessageFormat = "Not found template file";
            }
            return bodyMessageFormat;
        }

        public bool VerifyCodeVerification(UserVerificator userVerificator)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            bool verificationResult = false;
            try
            {
                string codeToCompare = codeVerificationAccesAccountRegistration[userVerificator.email];
                if (codeToCompare == userVerificator.code)
                {
                    verificationResult = true;
                    codeVerificationAccesAccountRegistration.Remove(codeToCompare);
                }
            }catch(KeyNotFoundException keyNotFoundException){
                verificationResult = false;
                logger.LogWarn(keyNotFoundException);
            }
            return verificationResult;
        }

        public string GenerateVerificatonCode(string email)
        {
            if (codeVerificationAccesAccountRegistration.ContainsKey(email))
            {
                codeVerificationAccesAccountRegistration.Remove(email);
            }
            Random random = new Random();
            int codeGenerated = random.Next(100000, 999999);
            string stringCodeGenerated = codeGenerated.ToString();
            codeVerificationAccesAccountRegistration.Add(email, stringCodeGenerated);
            return stringCodeGenerated;
        }

    }
}
