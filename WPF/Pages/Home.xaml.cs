using System;
using System.Windows.Controls;

namespace WpfApplication1
{
    /// <summary>
    /// Логика взаимодействия для Home.xaml
    /// </summary>
    public partial class Home : Page
    {
        private static Home home;

        public static event Action setUserNameEvent;

        private Home()
        {
            InitializeComponent();

            this.KeyDown += (s, e) =>
            {
                if (e.Key == System.Windows.Input.Key.Enter)
                {
                    UserInfo.Name = tbUserName.Text;

                    setUserNameEvent?.Invoke();
                }
            };
        }

        public static Home GetHome()
        {
            if (home == null)
                home = new Home();

            return home;
        }
    }
}
