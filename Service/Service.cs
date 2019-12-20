using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;

namespace Service
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class Service : IContract
    {
        int indexID = 1;
        List<UserConection> users = new List<UserConection>();

        public int Connect(string name)
        {
            UserConection user = new UserConection()
            {
                Id = indexID,
                Name = name,
                operationContext = OperationContext.Current
            };

            indexID++;
            users.Add(user);
            GetUsersCount();

            return user.Id;
        }

        public void Disconnect(int id)
        {
            var user = users.FirstOrDefault(i => i.Id == id);

            if (user != null)
            {
                users.Remove(user);

                GetUsersCount();
            }
            
        }

        public void Rename(int id, string newName)
        {
            var user = users.FirstOrDefault(i => i.Id == id);

            if (user != null)
                user.Name = newName;
        }

        public void SendMessage(string msg, int id)
        {
            foreach (var item in users)
            {
                string strMessage = "Сообщение отправлено: "+ DateTime.Now.ToShortTimeString() + "\t" + msg;

                var user = users.FirstOrDefault(i => i.Id == id);

                if(user != null)
                    item.operationContext.GetCallbackChannel<IServiceChatCallBack>().MessageCallBack(strMessage, user.Id, user.Name);
            }
        }

        public void GetUsersCount()
        {
            foreach (var item in users)
            {
                item.operationContext.GetCallbackChannel<IServiceChatCallBack>().UsersCountCallBack(users.Count);
            }
        }
    }
}
