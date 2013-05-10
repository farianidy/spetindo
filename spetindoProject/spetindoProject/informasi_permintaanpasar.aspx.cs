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
    public partial class informasi_permintaanpasar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void demandjagung()
        {
            List<aaData> aaDatas;
            aaDatas = new List<aaData>();
            aaData temp;

           // WebProxy proxyObj = new WebProxy("http://proxy.its.ac.id:8080");
            //proxyObj.Credentials = new NetworkCredential("seta12@mhs.if.its.ac.id", "cerberus");

            WebClient client = new WebClient();
            //client.Proxy = proxyObj;
            var json = client.DownloadString("http://pip.kementan.org/index.php/datatables/demand_mingguan_kab?sEcho=4&iColumns=8&sColumns=&iDisplayStart=0&iDisplayLength=10&sSearch=&bRegex=false&sSearch_0=&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=Jagung&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&sSearch_5=&bRegex_5=false&bSearchable_5=true&sSearch_6=&bRegex_6=false&bSearchable_6=true&sSearch_7=&bRegex_7=false&bSearchable_7=true&iSortingCols=1&iSortCol_0=0&sSortDir_0=asc&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&bSortable_5=true&bSortable_6=true&bSortable_7=true&_=1365404831516");

            var jss = new JavaScriptSerializer();
            Demand table = jss.Deserialize<Demand>(json);
            foreach (var i in table.aaData)
            {
                temp = new aaData();
                temp.komoditas = i[3];
                temp.kabupaten = i[4];
                temp.jenis_pembeli = i[5];
                temp.jumlah = i[6];
                temp.daerah_asal = i[7];
                aaDatas.Add(temp);
            }

            GridView1.AutoGenerateColumns = false;
            GridView1.DataSource = aaDatas;
            GridView1.AutoGenerateColumns = true;
            GridView1.DataBind();
        }

        public void demandkedelai()
        {
            List<aaData> aaDatas;
            aaDatas = new List<aaData>();
            aaData temp;

            //WebProxy proxyObj = new WebProxy("http://proxy.its.ac.id:8080");
            //proxyObj.Credentials = new NetworkCredential("seta12@mhs.if.its.ac.id", "cerberus");

            WebClient client = new WebClient();
            //client.Proxy = proxyObj;
            var json = client.DownloadString("http://pip.kementan.org/index.php/datatables/demand_mingguan_kab?sEcho=3&iColumns=8&sColumns=&iDisplayStart=0&iDisplayLength=10&sSearch=&bRegex=false&sSearch_0=&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=Kedelai&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&sSearch_5=&bRegex_5=false&bSearchable_5=true&sSearch_6=&bRegex_6=false&bSearchable_6=true&sSearch_7=&bRegex_7=false&bSearchable_7=true&iSortingCols=1&iSortCol_0=0&sSortDir_0=asc&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&bSortable_5=true&bSortable_6=true&bSortable_7=true&_=1365403060851");

            var jss = new JavaScriptSerializer();
            Demand table = jss.Deserialize<Demand>(json);
            foreach (var i in table.aaData)
            {
                temp = new aaData();
                temp.komoditas = i[3];
                temp.kabupaten = i[4];
                temp.jenis_pembeli = i[5];
                temp.jumlah = i[6];
                temp.daerah_asal = i[7];
                aaDatas.Add(temp);
            }

            GridView1.AutoGenerateColumns = false;
            GridView1.DataSource = aaDatas;
            GridView1.AutoGenerateColumns = true;
            GridView1.DataBind();


        }

        public void demandberas()
        {
            List<aaData> aaDatas;
            aaDatas = new List<aaData>();
            aaData temp;

            //WebProxy proxyObj = new WebProxy("http://proxy.its.ac.id:8080");
            //proxyObj.Credentials = new NetworkCredential("seta12@mhs.if.its.ac.id", "cerberus");


            WebClient client = new WebClient();
            //client.Proxy = proxyObj;
            var json = client.DownloadString("http://pip.kementan.org/index.php/datatables/demand_mingguan_kab?sEcho=3&iColumns=8&sColumns=&iDisplayStart=0&iDisplayLength=10&sSearch=&bRegex=false&sSearch_0=&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=Beras+Medium+Grosir&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&sSearch_5=&bRegex_5=false&bSearchable_5=true&sSearch_6=&bRegex_6=false&bSearchable_6=true&sSearch_7=&bRegex_7=false&bSearchable_7=true&iSortingCols=1&iSortCol_0=0&sSortDir_0=asc&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&bSortable_5=true&bSortable_6=true&bSortable_7=true&_=1365406779830");

            var jss = new JavaScriptSerializer();
            Demand table = jss.Deserialize<Demand>(json);
            foreach (var i in table.aaData)
            {
                temp = new aaData();
                temp.komoditas = i[3];
                temp.kabupaten = i[4];
                temp.jenis_pembeli = i[5];
                temp.jumlah = i[6];
                temp.daerah_asal = i[7];
                aaDatas.Add(temp);
            }

            GridView1.AutoGenerateColumns = false;
            GridView1.DataSource = aaDatas;
            GridView1.AutoGenerateColumns = true;
            GridView1.DataBind();


        }

        protected void ButtonCek_Click(object sender, ImageClickEventArgs e)
        {
            if (DropDownListTanaman.Text == "Jagung")
            {
                demandjagung();
            }
            else if (DropDownListTanaman.Text == "Kedelai")
            {
                demandkedelai();
            }
            else if (DropDownListTanaman.Text == "Padi")
            {
                demandberas();
            }
        }
    }
}