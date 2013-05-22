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
    

    public partial class nasihat_modul : System.Web.UI.Page
    {
        public double[,] harga = new double[3, 1000000];

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Informasi Pembudidayaan";
        }

        public void inputHarga()
        {
            
            string[] bulan = new string[1000000];
            //bulan[1] = "";
            bulan[0] = DateTime.Now.ToString("yyyy-MM-dd");
            int n = -30;
            for (int i = 1; i < 12; i++)
            {
                bulan[i] = DateTime.Today.AddDays(i * n).ToString("yyyy-MM-dd");
            }

            for (int k = 0; k < 12; k++)
            {
                string a = "http://pip.kementan.org/index.php/datatables/LHK_02?sEcho=7&iColumns=13&sColumns=&iDisplayStart=0&iDisplayLength=100&sSearch=&bRegex=false&sSearch_0=";
                string b = "&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&sSearch_5=&bRegex_5=false&bSearchable_5=true&sSearch_6=&bRegex_6=false&bSearchable_6=true&sSearch_7=&bRegex_7=false&bSearchable_7=true&sSearch_8=&bRegex_8=false&bSearchable_8=true&sSearch_9=&bRegex_9=false&bSearchable_9=true&sSearch_10=&bRegex_10=false&bSearchable_10=true&sSearch_11=&bRegex_11=false&bSearchable_11=true&sSearch_12=&bRegex_12=false&bSearchable_12=true&iSortingCols=1&iSortCol_0=0&sSortDir_0=asc&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&bSortable_5=true&bSortable_6=true&bSortable_7=true&bSortable_8=true&bSortable_9=true&bSortable_10=true&bSortable_11=true&bSortable_12=true&_=1365408124330";
                string link = a + bulan[k] + b;

                List<bbData> bbDatas;
                bbDatas = new List<bbData>();
                bbData temp;

                WebProxy proxyObj = new WebProxy("http://proxy.its.ac.id:8080");
                proxyObj.Credentials = new NetworkCredential("seta12@mhs.if.its.ac.id", "cerberus");


                WebClient client = new WebClient();
                client.Proxy = proxyObj;
                var json = client.DownloadString(link);

                var jss = new JavaScriptSerializer();
                Demand table = jss.Deserialize<Demand>(json);
                //table.aaData = new IList<aaData>();
                temp = new bbData();

                foreach (var i in table.aaData)
                {

                    temp.kabupaten = i[1];
                    temp.beras_medium = i[2];
                    temp.beras_premium = i[3];
                    temp.jagung_pipilan_kering = i[4];
                    temp.kedelai_lokal_biji_kering = i[5];
                    temp.kedelai_impor = i[6];
                    bbDatas.Add(temp);
                }
                //LabelHargaPadi = new Label();
                harga[0, k] = double.Parse(temp.beras_medium);
                harga[1, k] = double.Parse(temp.jagung_pipilan_kering);
                harga[2, k] = double.Parse(temp.kedelai_lokal_biji_kering);
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            double[] answer = new double[17];
            int jenisTnh, suhu, tinggiTnh, luasTnh;
            //jenisTnm = int.Parse(DropDownJenisTanaman.SelectedValue);
            jenisTnh = int.Parse(DropDownJenisTanah.SelectedValue);
            suhu = int.Parse(DropDownSuhu.SelectedValue);
            tinggiTnh = int.Parse(DropDownTinggiTanah.SelectedValue);
            luasTnh = int.Parse(DropDownLuas.SelectedValue);

            for (int i = 0; i < 17; i++)
            {
                answer[i] = 0;
            }

            //answer[jenisTnm] = 1;
            answer[jenisTnh] = 1;
            answer[suhu] = 1;
            answer[tinggiTnh] = 1;
            answer[luasTnh] = 1;

            QSE itu = new QSE();
            itu.inisialisasi();
            itu.makept();
            itu.fitness();
            itu.makebt();
            itu.algo();
            //itu.input();
            inputHarga();
            forecast ini = new forecast();
            //ini.input();
            //Console.WriteLine(ini.ramal());
            //Session["ramalPadi"] = ini.ramalPadi().ToString();
            ini.harga = harga;
            //double x = ini.ramalPadi();
            //LabelCekHarga.Text = x.ToString();
            Session["ramalPadi"] = ini.ramalPadi();
            Session["ramalJagung"] = ini.ramalJagung();
            Session["ramalKedelai"] = ini.ramalKedelai();

            Session["dataPadi"] = itu.outputPadi();
            Session["dataJagung"] = itu.outputJagung();
            Session["dataKedelai"] = itu.outputKedelai();
            Response.Redirect("hasil_modul_nasihat.aspx");
        }
    }
}