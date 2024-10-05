using HiveGameService.Contracts;
using HiveGameService.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameServer
{
    internal class Program
    {
        static void Main(string[] args)
        {
            UserService servicio = new UserService();
            Profile profile = new Profile();
            profile.email = "chrisvasquez985@gmail.com";
            profile.username = "username";
            profile.password = "password";
            profile.nickname = "Chris";
            profile.createdDate = DateTime.Now;
            profile.imagePath = "Imagen1.jpg";
            profile.reputation = 100;
            int resultadoServicio = servicio.AddUser(profile);
            Console.WriteLine("El resultado de la inserción es: "+resultadoServicio);   
        }
    }
}
