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
    public partial class hasil_modul_nasihat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Rekomendasi Pembudidayaan";

            Label1.Text = Session["dataPadi"].ToString();
            Label2.Text = Session["dataJagung"].ToString();
            Label3.Text = Session["dataKedelai"].ToString();
            LabelHargaPadi.Text = Session["ramalPadi"].ToString();
            LabelHargaJagung.Text = Session["ramalJagung"].ToString();
            LabelHargaKedelai.Text = Session["ramalKedelai"].ToString();

            //cekHarga();
            demandberas();
            demandjagung();
            demandkedelai();
            
        }
        public void cekHarga()
        {
            double[,] harga = new double[3, 1000000];
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
            LabelHargaJagung.Text = Convert.ToString(harga[0, 0]);
            LabelHargaKedelai.Text = Convert.ToString(harga[0, 1]); 
        }

        /*public void hargaPasar()
        {
            string tanggal = "";

            tanggal = DateTime.Now.ToString("yyyy-MM-dd");

            string a = "http://pip.kementan.org/index.php/datatables/LHK_02?sEcho=7&iColumns=13&sColumns=&iDisplayStart=0&iDisplayLength=100&sSearch=&bRegex=false&sSearch_0=";
            string b = "&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&sSearch_5=&bRegex_5=false&bSearchable_5=true&sSearch_6=&bRegex_6=false&bSearchable_6=true&sSearch_7=&bRegex_7=false&bSearchable_7=true&sSearch_8=&bRegex_8=false&bSearchable_8=true&sSearch_9=&bRegex_9=false&bSearchable_9=true&sSearch_10=&bRegex_10=false&bSearchable_10=true&sSearch_11=&bRegex_11=false&bSearchable_11=true&sSearch_12=&bRegex_12=false&bSearchable_12=true&iSortingCols=1&iSortCol_0=0&sSortDir_0=asc&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&bSortable_5=true&bSortable_6=true&bSortable_7=true&bSortable_8=true&bSortable_9=true&bSortable_10=true&bSortable_11=true&bSortable_12=true&_=1365408124330";
            string link = a + tanggal + b;

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
            LabelHargaPadi.Text = temp.beras_medium;
            LabelHargaJagung.Text = temp.jagung_pipilan_kering;
            LabelHargaKedelai.Text = temp.kedelai_lokal_biji_kering;
        }*/

        public void demandjagung()
        {
            List<aaData> aaDatas;
            aaDatas = new List<aaData>();
            aaData temp;

            WebProxy proxyObj = new WebProxy("http://proxy.its.ac.id:8080");
            proxyObj.Credentials = new NetworkCredential("seta12@mhs.if.its.ac.id", "cerberus");


            WebClient client = new WebClient();
            client.Proxy = proxyObj;
            var json = client.DownloadString("http://pip.kementan.org/index.php/datatables/demand_mingguan_kab?sEcho=4&iColumns=8&sColumns=&iDisplayStart=0&iDisplayLength=10&sSearch=&bRegex=false&sSearch_0=&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=Jagung&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&sSearch_5=&bRegex_5=false&bSearchable_5=true&sSearch_6=&bRegex_6=false&bSearchable_6=true&sSearch_7=&bRegex_7=false&bSearchable_7=true&iSortingCols=1&iSortCol_0=0&sSortDir_0=asc&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&bSortable_5=true&bSortable_6=true&bSortable_7=true&_=1365404831516");

            var jss = new JavaScriptSerializer();
            Demand table = jss.Deserialize<Demand>(json);
            temp = new aaData();
            foreach (var i in table.aaData)
            {
                
                temp.komoditas = i[3];
                temp.kabupaten = i[4];
                temp.jenis_pembeli = i[5];
                temp.jumlah = i[6];
                temp.daerah_asal = i[7];
                aaDatas.Add(temp);
            }

            LabelPerJagung.Text = temp.jumlah;
        }

        public void demandkedelai()
        {
            List<aaData> aaDatas;
            aaDatas = new List<aaData>();
            aaData temp;

            WebProxy proxyObj = new WebProxy("http://proxy.its.ac.id:8080");
            proxyObj.Credentials = new NetworkCredential("seta12@mhs.if.its.ac.id", "cerberus");


            WebClient client = new WebClient();
            client.Proxy = proxyObj;
            var json = client.DownloadString("http://pip.kementan.org/index.php/datatables/demand_mingguan_kab?sEcho=3&iColumns=8&sColumns=&iDisplayStart=0&iDisplayLength=10&sSearch=&bRegex=false&sSearch_0=&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=Kedelai&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&sSearch_5=&bRegex_5=false&bSearchable_5=true&sSearch_6=&bRegex_6=false&bSearchable_6=true&sSearch_7=&bRegex_7=false&bSearchable_7=true&iSortingCols=1&iSortCol_0=0&sSortDir_0=asc&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&bSortable_5=true&bSortable_6=true&bSortable_7=true&_=1365403060851");

            var jss = new JavaScriptSerializer();
            Demand table = jss.Deserialize<Demand>(json);

            temp = new aaData();
            foreach (var i in table.aaData)
            {
                temp.komoditas = i[3];
                temp.kabupaten = i[4];
                temp.jenis_pembeli = i[5];
                temp.jumlah = i[6];
                temp.daerah_asal = i[7];
                aaDatas.Add(temp);
            }

            LabelPerKedelai.Text = temp.jumlah;

        }

        public void demandberas()
        {
            List<aaData> aaDatas;
            aaDatas = new List<aaData>();
            aaData temp;

            WebProxy proxyObj = new WebProxy("http://proxy.its.ac.id:8080");
            proxyObj.Credentials = new NetworkCredential("seta12@mhs.if.its.ac.id", "cerberus");


            WebClient client = new WebClient();
            client.Proxy = proxyObj;
            var json = client.DownloadString("http://pip.kementan.org/index.php/datatables/demand_mingguan_kab?sEcho=3&iColumns=8&sColumns=&iDisplayStart=0&iDisplayLength=10&sSearch=&bRegex=false&sSearch_0=&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=Beras+Medium+Grosir&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&sSearch_5=&bRegex_5=false&bSearchable_5=true&sSearch_6=&bRegex_6=false&bSearchable_6=true&sSearch_7=&bRegex_7=false&bSearchable_7=true&iSortingCols=1&iSortCol_0=0&sSortDir_0=asc&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&bSortable_5=true&bSortable_6=true&bSortable_7=true&_=1365406779830");

            var jss = new JavaScriptSerializer();
            Demand table = jss.Deserialize<Demand>(json);

            temp = new aaData();
            foreach (var i in table.aaData)
            {
                temp.komoditas = i[3];
                temp.kabupaten = i[4];
                temp.jenis_pembeli = i[5];
                temp.jumlah = i[6];
                temp.daerah_asal = i[7];
                aaDatas.Add(temp);
            }

            LabelPerPadi.Text = temp.jumlah;
        }

        
    }
}