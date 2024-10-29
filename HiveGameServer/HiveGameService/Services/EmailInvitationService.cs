using HiveGameService.Contracts;
using HiveGameService.Utilities;
using log4net.Repository.Hierarchy;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Services
{
    public partial class HiveGameService : IEmailInvitationManager
    {
        private static readonly Dictionary<string, string> lobbyCodes = new Dictionary<string, string>();

        public int SendEmailInvitation(UserVerificator userVerificator)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int resultSendedEmail = Constants.ERROR_OPERATION;
            string templateInvitationMessage = BodyMessageInvitationFormat();
            if(templateInvitationMessage!="Not found template file")
            {
                try
                {
                    string emailSender = "candcinnovationshivegame@gmail.com";
                    string password = "guyy ihtn sygv daiy";
                    MailMessage messageToSend = new MailMessage();
                    messageToSend.From = new MailAddress(emailSender);
                    messageToSend.To.Add(userVerificator.email);
                    messageToSend.Body = templateInvitationMessage.Replace("{code}", userVerificator.code);
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
                catch (FileNotFoundException fileNotFoundException)
                {
                    logger.LogError(fileNotFoundException);
                }
                catch (SmtpFailedRecipientException smtpFailedRecipientException)
                {
                    logger.LogError(smtpFailedRecipientException);
                }
                catch (SmtpException smtpException)
                {
                    logger.LogError(smtpException);
                }catch(FormatException formatException)
                {
                    logger.LogError(formatException);
                }
                catch (InvalidOperationException invalidOperationException)
                {
                    logger.LogError(invalidOperationException);
                }
            }
            return resultSendedEmail;
        }

        public string BodyMessageInvitationFormat()
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            string bodyMessageFormat;
            try
            {
                string baseDirectory = AppDomain.CurrentDomain.BaseDirectory;
                string serverPath = Path.GetFullPath(Path.Combine(baseDirectory, "../../../"));
                string templatePath = Path.Combine(baseDirectory, "HiveGameService/Utilities/InvitationEmail.html");
                bodyMessageFormat = File.ReadAllText(templatePath);
            }catch(DirectoryNotFoundException directoryNotFoundException)
            {
                logger.LogError(directoryNotFoundException);
                bodyMessageFormat = "Not found template file";
            }
            catch(FileNotFoundException fileNotFoundException)
            {
                logger.LogError(fileNotFoundException);
                bodyMessageFormat = "Not found template file";
            }
            return bodyMessageFormat;
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

