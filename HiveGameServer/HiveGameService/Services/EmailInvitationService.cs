using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace HiveGameService.Services
{
    public partial class HiveGameService : IEmailInvitationManager
    {
        public int SendEmailInvitation(UserVerificator verificator)
        {
            LoggerManager logger = new LoggerManager(this.GetType());
            int resultSendedEmail = Constants.ERROR_OPERATION;
            string templateInvitationMessage = BodyMessageInvitationFormat();
            string emailSender = ConfigurationManager.AppSettings["EmailSender"];
            string password = ConfigurationManager.AppSettings["EmailPassword"];
            string smtpServer = ConfigurationManager.AppSettings["SmtpServer"];
            int port = int.Parse(ConfigurationManager.AppSettings["SmtpPort"]);

            if (templateInvitationMessage != "Not found template file")
            {
                try
                {   
                    MailMessage messageToSend = new MailMessage();
                    messageToSend.Subject = "Invitation to join a lobby";
                    messageToSend.From = new MailAddress(emailSender);
                    messageToSend.To.Add(verificator.email);
                    messageToSend.Body = templateInvitationMessage.Replace("{code}", verificator.code);
                    messageToSend.IsBodyHtml = true;
                    var smtpClient = new SmtpClient(smtpServer)
                    {
                        Port = port,
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
                }
                catch (FormatException formatException)
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
                string templatePath = Path.Combine(serverPath, "HiveGameService/Utilities/InvitationEmail.html");
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

    }
}

