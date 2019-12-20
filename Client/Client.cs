using System;
using System.ServiceModel;

namespace Client
{
    class User : ServiceReference.IContractCallback
    {
        private ServiceReference.ContractClient service;
        private int _Id;

        public User()
        {
            service = new ServiceReference.ContractClient(new InstanceContext(this));
        }

        public void Connetc()
        {
            Console.Write("Введите имя:  ");
            _Id = service.Connect(Console.ReadLine());
            Console.WriteLine("Готово!\n");
        }

        public void Dispose()
        {
            service.Disconnect(_Id);
        }

        public void sendMessage()
        {
            string msg = Console.ReadLine();

            if (msg == "1")
                Dispose();
            else
                service.SendMessage(msg, _Id);
        }

        public void MessageCallBack(string strMessage, int id, string name)
        {
            if(_Id == id)
                Console.WriteLine($"Вы: {strMessage} + \n");
            else
                Console.WriteLine($"{name}: {strMessage}\n");
        }

        public void UsersCountCallBack(int count)
        {
            Console.WriteLine($"Онлайн: {count}");
        }
    }

    class MyClient
    {
        static void Main(string[] args)
        {
            User user = new User();

             user.Connetc();

            while (true)
                user.sendMessage();
        }
    }
}
