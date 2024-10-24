using HiveGameService.Contracts;
using HiveGameService.Services;
using HiveGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameServer
{
    internal class Program
    {
        static void Main(string[] args)
        {
                using (ServiceHost host = new ServiceHost(typeof(HiveGameService.Services.HiveGameService)))
                {
                    host.Open();
                    Console.WriteLine("Service connected");
                    Console.ReadLine();
                }
        }
    }
}
