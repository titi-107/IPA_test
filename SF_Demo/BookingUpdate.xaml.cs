using System.Globalization;
using System.Net;
using System.Xml.Linq;

namespace SF_Demo;

public partial class BookingUpdate : ContentPage
{
    private string book_id;
    private MainViewModel vm = new MainViewModel();
    public BookingUpdate(string id)
    {
        InitializeComponent();
        book_id = id;
        LoadBooking();
    }
    private async void LoadBooking()
    {
        try
        {
            var sql = "SELECT * FROM TITI..BOOKING where BookID = '" + book_id + "'";
            await vm.LoadDataAsync(sql);
            if (vm.Items.Count > 0)
            {
                var row = vm.Items[0];
                cbRoom.SelectedItem = row["Room"].ToString();
                string date = row["BookingDay"].ToString();
                dpDay.Date = DateTime.ParseExact(date, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                dpHour.Time = TimeSpan.Parse(row["BookingTime"].ToString());
                txtTitle.Text = row["Remark"].ToString();
                lblRQer.Text = "Requester: " + row["Requester"].ToString();
                lblRQTime.Text = "Request Time: " + row["TimeRequest"].ToString();
            }
            else
            {
                await DisplayAlert("Error:", "Search data is not relevant!", "Close");
            }
        }
        catch (HttpRequestException ex)
        {
            Console.WriteLine("❌ Exception: " + ex.Message);
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void btUpdate_Clicked(object sender, EventArgs e)
    {
        try
        {
            if (txtTitle.Text != null)
            {
                string bkday = dpDay.Date.ToString("dd-MM-yyyy");
                string bktime = dpHour.Time.ToString();

                var sql_update = "Update TITI..BOOKING set Room = '" + cbRoom.SelectedItem.ToString() + "',BookingDay = '" + bkday + "',BookingTime = '" + bktime + "',Remark = N'" + txtTitle.Text + "' where BookID = '" + book_id + "' ";
                await vm.LoadDataAsync(sql_update);
                await DisplayAlert("Notification:", "Update is success!", "OK");
            }
            else
            {
                await DisplayAlert("Error:", "You have not entered meeting content!", "Close");
            }
        }
        catch (HttpRequestException ex)
        {
            Console.WriteLine("❌ Exception: " + ex.Message);
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void btDel_Clicked(object sender, EventArgs e)
    {
        try
        {
            var sql_del = "DELETE FROM TITI..BOOKING where BookID = '" + book_id + "' ";
            await vm.LoadDataAsync(sql_del);
            await DisplayAlert("Notification:", "Delete is success!", "OK");
            await Navigation.PopAsync(); //quay lại trang trước đó
        }
        catch (HttpRequestException ex)
        {
            Console.WriteLine("❌ Exception: " + ex.Message);
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }
}