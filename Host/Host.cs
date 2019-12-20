using System;
using System.ServiceModel;
using Service;


namespace Host
{
    class Host
    {
        static void Main(string[] args)
        {
            using (var host = new ServiceHost(typeof(Service.Service)))
            {
                host.Open();

                Console.WriteLine("Host Started");

                Console.ReadKey();
            }
        }
    }
}
