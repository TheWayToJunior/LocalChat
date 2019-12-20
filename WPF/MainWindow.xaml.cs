using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace WpfApplication1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            main.Content = Home.GetHome();

            Home.setUserNameEvent += () => 
            {
                tbUserName.Text = UserInfo.Name;

                if (Message.Connected)
                    Message.Rename(UserInfo.Name);
            };

            Message.setUsersCounterEvent += () =>
            {
               tbUsersCount.Text = Message.usersCounter.ToString();
            };
        }

        private void ButtonLogout_Click(object sender, RoutedEventArgs e)
        {
            if (Message.Connected)
                Message.Desconnect();

            Application.Current.Shutdown();
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Visible;
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
            ButtonCloseMenu.Visibility = Visibility.Visible;
        }

        private void MyListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int index = MyListView.SelectedIndex;

            switch (index)
            {
                case 0:
                    main.Content = Home.GetHome();
                    break;
                case 1:
                    main.Content = new Create();
                    break;
                case 2:
                    main.Content = new Ticket();
                    break;
                case 3:
                    main.Content = Message.GetMessage();
                    break;
                case 4:
                    main.Content = new Github();
                    break;
            }
        }

        private void Grid_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }
    }
}
