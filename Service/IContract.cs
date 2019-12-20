using System.ServiceModel;

namespace Service
{
    [ServiceContract(CallbackContract = typeof(IServiceChatCallBack))]
    interface IContract
    {
        [OperationContract(IsOneWay = true)]
        void SendMessage(string msg, int sender_id);

        [OperationContract]
        int Connect(string name);

        [OperationContract]
        void Disconnect(int id);

        [OperationContract]
        void Rename(int id, string newName);

        [OperationContract(IsOneWay = true)]
        void GetUsersCount();
    }

    public interface IServiceChatCallBack
    {
        [OperationContract(IsOneWay = true)]
        void MessageCallBack(string strMessage, int id, string name);

        [OperationContract(IsOneWay = true)]
        void UsersCountCallBack(int count);
    }
}
