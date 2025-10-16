namespace SF_Demo
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new Login());

            AppDomain.CurrentDomain.UnhandledException += (sender, e) =>
            {
                File.WriteAllText("error.log", e.ExceptionObject.ToString());
            };
        }
    }
}
