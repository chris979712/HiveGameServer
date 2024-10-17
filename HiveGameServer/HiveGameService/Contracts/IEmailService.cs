using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Contracts
{
    [ServiceContract]
    public interface IEmailService
    {
        
    }

    [DataContract]
    public class Register
    {
        [DataMember]
        public string email;
    }
}
