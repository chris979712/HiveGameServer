using System;
using System.Data;
using HiveGameService.Contracts;
using HiveGameService.Utilities;
using System.Linq;
using System.Data.SqlClient;
using System.Data.Entity;
using DataBaseManager;
using System.Text;
using System.Data.Entity.Infrastructure;
using System.Linq.Expressions;
using System.Data.Entity.Core;

namespace HiveGameService.Services
{
    public partial class UserService : IUserManager
    {
        public int AddUser(Contracts.Profile profile)
        {
            int result = Constants.ERROR_OPERATION;
            try
            {
                using(var dataBaseContext = new HiveEntityDataModel())
                {
                    using (var dataBaseContextTransaction = dataBaseContext.Database.BeginTransaction())
                    {
                        try
                        {
                            var newAccessAccount = new DataBaseManager.AccesAccount
                            {
                                password = Encoding.UTF8.GetBytes(profile.password),
                                username = profile.username,
                                email = profile.email,
                                reputation = profile.reputation
                            };
                            dataBaseContext.AccesAccount.Add(newAccessAccount);
                            dataBaseContext.SaveChanges();
                            int lastIdAccountInserted = newAccessAccount.idAccessAccount;
                            var newProfile = new DataBaseManager.Profile
                            {
                                imagePath = Constants.DEFAULT_IMAGE_PLAYER,
                                createdDate = profile.createdDate,
                                nickname = profile.nickname,
                                FK_IdAccount = lastIdAccountInserted
                            };
                            dataBaseContext.Profile.Add(newProfile);
                            dataBaseContext.SaveChanges();
                            dataBaseContextTransaction.Commit();
                            result = Constants.SUCCES_OPERATION;
                        }catch(DbUpdateException updateException)
                        {
                            Console.WriteLine("");
                            dataBaseContextTransaction.Rollback();
                            result = Constants.ERROR_OPERATION;
                        }catch(SqlException sqlException)
                        { 
                            Console.WriteLine("");
                            dataBaseContextTransaction.Rollback();
                            result = Constants.ERROR_OPERATION;
                        }
                    }
                }
            }catch(System.Data.EntityException entityException)
            {
                Console.WriteLine("Error");   
            }
            return result;
        }

        public int UpdatePassword()
        {
            throw new NotImplementedException();
        }

        public int UpdateProfile()
        {
            throw new NotImplementedException();
        }
    }
}
