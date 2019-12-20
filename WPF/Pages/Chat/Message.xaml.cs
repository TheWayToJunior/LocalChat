using System;
using System.Windows;
using System.Windows.Controls;
using WpfApplication1.Pages.Chat;

namespace WpfApplication1
{
    public partial class Message : Page, ServiceReference.IContractCallback
    {
        private static Message message;
        private static ServiceReference.ContractClient contractClient;

        public static bool Connected { get; private set; } = false;

        public static int usersCounter { get; private set; }

        public static event Action setUsersCounterEvent;

        private Message()
        {
            InitializeComponent();

            SendButton.Click += (s, e) => SendMessage();

            this.KeyDown += (s, e) =>
            {
                if (e.Key == System.Windows.Input.Key.Enter)
                    SendMessage();
            };
        }

        public static Message GetMessage()
        {
            if (message == null)
                message = new Message();

            return message;
        }

        public void MessageCallBack(string strMessage, int id, string name)
        {
            if (UserInfo.Id == id)
                msgPanel.Children.Add(new RightBubbleControl(strMessage, name));
            else
                msgPanel.Children.Add(new BubbleControl(strMessage, name));

            Scroll.ScrollToEnd();
        }

        private void SendMessage()
        {
            try
            {
                if (TextBoxSemdMessage.Text != string.Empty)
                    contractClient.SendMessage(TextBoxSemdMessage.Text, UserInfo.Id);
            }
            catch (Exception ex)
            {
                msgPanel.Children.Add(new ErrorBubbleControl(ex.Message));

                Scroll.ScrollToEnd();
            }
            finally
            {
                TextBoxSemdMessage.Clear();
            }
        }

        private async void Page_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                if (contractClient == null)
                {
                    contractClient = new ServiceReference.ContractClient(new System.ServiceModel.InstanceContext(this));

                    UserInfo.Id = await contractClient.ConnectAsync(UserInfo.Name);

                    Connected = true;

                    //await contractClient.GetUsersCountAsync();
                }
            }
            catch (Exception ex)
            {
                msgPanel.Children.Add(new ErrorBubbleControl(ex.Message));

                Scroll.ScrollToEnd();
            }
        }

        public async static void Desconnect()
        {
            await contractClient.DisconnectAsync(UserInfo.Id);

            //await contractClient.GetUsersCountAsync();
        }

        public async static void Rename(string rename)
        {
            await contractClient.RenameAsync(UserInfo.Id, rename);
        }

        public void UsersCountCallBack(int count)
        {
            usersCounter = count;
            setUsersCounterEvent?.Invoke();
        }
    }
}
