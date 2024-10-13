﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace HiveGameService.Utilities
{
    public static class HostBehaviorManager
    {
        public static void ChangeModeToSingle()
        {
            var service = (ServiceHost)OperationContext.Current.Host;
            var behavior = service.Description.Behaviors.Find<ServiceBehaviorAttribute>();
            behavior.ConcurrencyMode = ConcurrencyMode.Single;
        }

        public static void ChangeModeToMultiple()
        {
            var service = (ServiceHost)OperationContext.Current.Host;
            var behavior = service.Description.Behaviors.Find<ServiceBehaviorAttribute>();
            behavior.ConcurrencyMode = ConcurrencyMode.Multiple;
        }

        public static void ChangeModeToReentrant()
        {
            var service = (ServiceHost)OperationContext.Current.Host;
            var behavior = service.Description.Behaviors.Find<ServiceBehaviorAttribute>();
            behavior.ConcurrencyMode = ConcurrencyMode.Reentrant;
        }
    }
}