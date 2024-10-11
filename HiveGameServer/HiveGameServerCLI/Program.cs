using HiveGameService.Contracts;
using HiveGameService.Services;
using System;
using System.Collections.Generic;
using System.Linq;
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
