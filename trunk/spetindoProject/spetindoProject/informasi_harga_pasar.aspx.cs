using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Net;
using System.IO;
using spetindoProject;

namespace spetindoProject
{
    public class bbData
    {
        //price
        public string kabupaten { get; set; }
        public string gabah_kering_panen { get; set; }
        public string gabah_kering_giling { get; set; }
        public string beras_medium { get; set; }
        public string beras_premium { get; set; }
        public string jagung_pipilan_kering { get; set; }
        public string kedelai_lokal_biji_kering { get; set; }
    }

    public partial class informasi_harga_pasar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string tanggal = "";


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //Panel1.Visible = true;

            //Label1.Text = Calendar1.SelectedDate.ToShortDateString();
            //Label2.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            tanggal = Calendar1.SelectedDate.ToString("yyyy-MM-dd");

            string a = "http://pip.kementan.org/index.php/datatables/LHK_02?sEcho=7&iColumns=13&sColumns=&iDisplayStart=0&iDisplayLength=100&sSearch=&bRegex=false&sSearch_0=";
            string b = "&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&sSearch_5=&bRegex_5=false&bSearchable_5=true&sSearch_6=&bRegex_6=false&bSearchable_6=true&sSearch_7=&bRegex_7=false&bSearchable_7=true&sSearch_8=&bRegex_8=false&bSearchable_8=true&sSearch_9=&bRegex_9=false&bSearchable_9=true&sSearch_10=&bRegex_10=false&bSearchable_10=true&sSearch_11=&bRegex_11=false&bSearchable_11=true&sSearch_12=&bRegex_12=false&bSearchable_12=true&iSortingCols=1&iSortCol_0=0&sSortDir_0=asc&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&bSortable_5=true&bSortable_6=true&bSortable_7=true&bSortable_8=true&bSortable_9=true&bSortable_10=true&bSortable_11=true&bSortable_12=true&_=1365408124330";
            string link = a + tanggal + b;

            List<bbData> bbDatas;
            bbDatas = new List<bbData>();
            bbData temp;

            //WebProxy proxyObj = new WebProxy("http://proxy.its.ac.id:8080");
            //proxyObj.Credentials = new NetworkCredential("seta12@mhs.if.its.ac.id", "cerberus");


            WebClient client = new WebClient();
            //client.Proxy = proxyObj;
            var json = client.DownloadString(link);

            var jss = new JavaScriptSerializer();
            Demand table = jss.Deserialize<Demand>(json);
            foreach (var i in table.aaData)
            {
                temp = new bbData();
                temp.kabupaten = i[1];
                temp.gabah_kering_panen = i[2];
                temp.gabah_kering_giling = i[3];
                temp.beras_medium = i[4];
                temp.beras_premium = i[5];
                temp.jagung_pipilan_kering = i[6];
                temp.kedelai_lokal_biji_kering = i[7];
                bbDatas.Add(temp);
            }

            GridView1.AutoGenerateColumns = false;
            GridView1.DataSource = bbDatas;
            GridView1.AutoGenerateColumns = true;
            GridView1.DataBind();
        }
    }
}