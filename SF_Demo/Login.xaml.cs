namespace SF_Demo;

public partial class Login : ContentPage
{
    public Login()
    {
        InitializeComponent();
    }
    private MainViewModel vm = new MainViewModel();
    private async void btLogin_Clicked(object sender, EventArgs e)
    {
        if (txtUser.Text != null && txtPass.Text != null)
        {
            try
            {
                var sql = "SELECT * FROM TITI..INFOR where ID = '" + txtUser.Text.Trim() + "' and Pass= '" + txtPass.Text.Trim() + "'";
                await vm.LoadDataAsync(sql);
                if (vm.Items.Count > 0)
                {
                    var row = vm.Items[0];
                    string id = row["ID"].ToString();
                    string name = row["Name"].ToString();

                    await Navigation.PushAsync(new MainPage(id, name));
                }
                else
                {
                    await DisplayAlert("Error:", "Login account does not exist!", "Close");
                }
            }
            catch (HttpRequestException ex)
            {
                Console.WriteLine("❌ Exception: " + ex.Message);
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }
        else
        {
            await DisplayAlert("Error:", "Incomplete login information!", "Close");
        }

    }
}