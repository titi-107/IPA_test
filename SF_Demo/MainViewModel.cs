using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Net.Http.Json;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
namespace SF_Demo
{
    public class MainViewModel
    {
        //WEB API
        public ObservableCollection<Dictionary<string, object>> Items { get; set; } = new();

        public async Task LoadDataAsync(string query)
        {
            var client = new HttpClient();
            var url = "http://10.120.94.88:7032/api/Query/sqlserver1/query";

            var payload = new { sql = query };
            var response = await client.PostAsJsonAsync(url, payload);

            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                var data = JsonSerializer.Deserialize<List<Dictionary<string, object>>>(json);
                
                Items.Clear();
                foreach (var row in data)
                    Items.Add(row);
            }
            else
            {
                var errorContent = await response.Content.ReadAsStringAsync();
                Console.WriteLine($"❌ Error: {(int)response.StatusCode} {response.ReasonPhrase}");
                Console.WriteLine($"📝 Details: {errorContent}");

                // Hiển thị cho người dùng
                await Application.Current.MainPage.DisplayAlert("Error",
                    $"Error {response.StatusCode}: {errorContent}", "OK");
            }    
        }

        public async Task LoadDataAsyncRMS(string query)
        {
            var client = new HttpClient();
            var url = "http://10.120.94.88:7032/api/Query/sqlserver/query";

            var payload = new { sql = query };
            var response = await client.PostAsJsonAsync(url, payload);

            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                var data = JsonSerializer.Deserialize<List<Dictionary<string, object>>>(json);

                Items.Clear();
                foreach (var row in data)
                    Items.Add(row);
            }
        }

        public async Task LoadDataAsyncOracle(string query)
        {
            var client = new HttpClient();
            var url = "http://10.120.94.88:7032/api/Query/oracle/query"; // hoặc oracle/query

            var payload = new { sql = query };
            var response = await client.PostAsJsonAsync(url, payload);

            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                var data = JsonSerializer.Deserialize<List<Dictionary<string, object>>>(json);

                Items.Clear();
                foreach (var row in data)
                    Items.Add(row);
            }
        }


    }
}
