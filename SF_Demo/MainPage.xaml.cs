using System.Collections.ObjectModel;
using System.ComponentModel;

namespace SF_Demo
{
    public partial class MainPage : ContentPage
    {
        private string user;
        private string name;
        private MainViewModel vm = new MainViewModel();
        public MainPage(string username, string fullName)
        {
            InitializeComponent();
            user = username;
            name = fullName;
            txtName.Text = "Welcome to Booking App, " + name + "!";
            BindingContext = vm;
            LoadBooking();
        }

        protected override void OnAppearing()
        {
            LoadBooking();
        }

        private async void btBook_Clicked(object sender, EventArgs e)
        {
            if (cbRoom.SelectedItem != null)
            {
                if (txtRemark.Text != null)
                {
                    string bkday = dpDay.Date.ToString("dd-MM-yyyy");
                    string bktime = dpHour.Time.ToString();
                    string rqter = user + "/" + name;
                    var sql_update = "INSERT INTO TITI..BOOKING (Room,BookingDay,BookingTime,Remark,Requester,TimeRequest) " +
                        "values (N'" + cbRoom.SelectedItem.ToString() + "','" + bkday + "','" + bktime + "',N'" + txtRemark.Text + "',N'" + rqter + "', SYSDATETIME())";
                    await vm.LoadDataAsync(sql_update);
                    await DisplayAlert("Notification:", "Scheduled successfully!", "OK");

                    LoadBooking();
                }
                else
                {
                    await DisplayAlert("Error:", "You have not entered meeting content!", "Close");
                }
            }
            else
            {
                await DisplayAlert("Error:", "You have not selected a room yet!", "Close");
            }
        }

        private async void LoadBooking()
        {
            var sql = "SELECT * FROM TITI..BOOKING ";
            await vm.LoadDataAsync(sql);
        }

        private void btView_Clicked(object sender, EventArgs e)
        {
            LoadBooking();
        }

        private async void clView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //if (e.CurrentSelection.FirstOrDefault() is Dictionary<string, object> selectedItem)
            //{
            //    if (selectedItem.TryGetValue("BookID", out var bookIdValue))
            //    {
            //        string bookId = bookIdValue?.ToString();
            //        await Navigation.PushAsync(new BookingUpdate(bookId));
            //    }
            //}
        }

        private async void OnItemTapped(object sender, TappedEventArgs e)
        {
            var frame = sender as Frame;
            var context = frame?.BindingContext as Dictionary<string, object>;
            if (context != null && context.TryGetValue("BookID", out var bookIdValue))
            {
                string bookId = bookIdValue?.ToString();
                await Navigation.PushAsync(new BookingUpdate(bookId));
            }
        }
    }

}
