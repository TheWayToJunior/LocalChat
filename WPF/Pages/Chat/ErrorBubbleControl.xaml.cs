using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApplication1.Pages.Chat
{
    /// <summary>
    /// Логика взаимодействия для ErrorBubbeControl.xaml
    /// </summary>
    public partial class ErrorBubbleControl : UserControl
    {
        public ErrorBubbleControl(string errorMessage)
        {
            InitializeComponent();

            this.textMessage.Text = "  " + errorMessage + "  ";
        }
    }
}
