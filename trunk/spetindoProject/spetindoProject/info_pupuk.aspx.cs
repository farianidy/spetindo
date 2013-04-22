using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Oracle.DataAccess.Client;

namespace spetindoProject
{
    public partial class info_pupuk : System.Web.UI.Page
    {
        OracleConnection connect = new OracleConnection();
        OracleDataReader reader, reader2;
        string namaprovinsi = "";
        string namakota = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            //ListProvinsi.Items.Clear();
            isiListProvinsi();
            
        }

        protected void isiListProvinsi()
        {
            string strprov = "select nama_provinsi from provinsi";
            OracleCommand command1 = new OracleCommand(strprov, connect);
            try
            {
                connect.Open();
                reader = command1.ExecuteReader();
                while (reader.Read())
                {
                    //listHama.DataSource = reader["nama_hama"].ToString();
                    //listHama.DataBind();
                    ListProvinsi.Items.Add(reader["nama_provinsi"].ToString());
                }
                reader.Close();
            }
            finally
            {
                connect.Close();
            }
        }

        protected void ListProvinsi_SelectedIndexChanged(object sender, EventArgs e)
        {
            namaprovinsi = ListProvinsi.SelectedValue;
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            ListKota.Items.Clear();
            //list kota
            string strkota = "select nama_kota from kota a, provinsi b where a.id_provinsi=b.id_provinsi and b.nama_provinsi = '" + namaprovinsi + "'";
            OracleCommand command1 = new OracleCommand(strkota, connect);
            try
            {
                connect.Open();
                reader = command1.ExecuteReader();
                while (reader.Read())
                {
                    //listHama.DataSource = reader["nama_hama"].ToString();
                    //listHama.DataBind();
                    ListKota.Items.Add(reader["nama_kota"].ToString());
                }
                reader.Close();
            }
            finally
            {
                connect.Close();
            }

        }

        protected void ButtonPupuk_Click(object sender, EventArgs e)
        {
            /*string namapupuk = "";
            string hargapupuk = "";
            string takaran = "";
            string namajenispupuk = "";*/
            string id_tanaman = "";

            id_tanaman = DropDownListTanaman.Text;

            OracleConnection connect = new OracleConnection();
            OracleDataReader reader;

            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            string strquery = "select nama_pupuk, harga_pupuk, takaran, nama_jenis_pupuk from tanaman a, detail_pupuk b, pupuk c, jenis_pupuk d where a.id_tanaman='" + id_tanaman + "'and a.id_tanaman= b.id_tanaman and b.id_pupuk= c.id_pupuk and c.id_jenis_pupuk= d.id_jenis_pupuk";
            OracleCommand command = new OracleCommand(strquery, connect);
            //OracleDataReader read = connect.ExecuteReader(strquery);
            try
            {
                connect.Open();
                reader = command.ExecuteReader();
                //connect.ExecuteNonQuery(strquery);
                /*if (reader.Read())
                {
                    namapupuk = (string)reader["nama_pupuk"];
                    namajenispupuk = (string)reader["nama_jenis_pupuk"];
                    hargapupuk = reader["harga_pupuk"].ToString();
                    takaran = (string)reader["takaran"];
                }

                LabelNamaPupuk.Text = namapupuk;
                LabelJenisPupuk.Text = namajenispupuk;
                LabelHarga.Text = hargapupuk;
                LabelTakaran.Text = takaran;*/
                GridView1.DataSource = reader;
                GridView1.DataBind();


                reader.Close();
            }
            finally
            {
                connect.Close();
            }
        }

        protected void ButtonHara_Click(object sender, EventArgs e)
        {
            namaprovinsi = ListProvinsi.SelectedValue;
            namakota = ListKota.SelectedValue;
            ListProvinsi.Items.Clear();
            isiListProvinsi();
            
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;

            //string strquery = "select nama_provinsi, nama_kota, nama_status, luas_lahan, kebutuhan_pupuk from provinsi a, kota b, status_hara c, ukuran d where a.id_provinsi= b.id_provinsi and a.nama_provinsi = 'Jawa Timur' and b.id_kota= d.id_kota and b.nama_kota='Ponorogo' and c.id_status= d.id_status and d.id_pupuk='PU003';";
            Response.Write(namaprovinsi);
            Response.Write(namakota);
            string strquery = "select DISTINCT nama_provinsi, nama_kota, nama_status, luas_lahan, kebutuhan_pupuk from provinsi a, kota b, status_hara c, ukuran d where a.id_provinsi= b.id_provinsi and a.nama_provinsi = '" + namaprovinsi + "' and b.id_kota= d.id_kota and b.nama_kota='" + namakota + "' and c.id_status= d.id_status and d.id_pupuk='PU003'";
            OracleCommand command = new OracleCommand(strquery, connect);
            //OracleDataReader read = connect.ExecuteReader(strquery);
            string strquery2 = "select DISTINCT nama_provinsi, nama_kota, nama_status, luas_lahan, kebutuhan_pupuk from provinsi a, kota b, status_hara c, ukuran d where a.id_provinsi= b.id_provinsi and a.nama_provinsi = '" + namaprovinsi + "' and b.id_kota= d.id_kota and b.nama_kota='" + namakota + "' and c.id_status= d.id_status and d.id_pupuk='PU005'";
            OracleCommand command2 = new OracleCommand(strquery2, connect);
            

            try
            {
                connect.Open();
                reader = command.ExecuteReader();
                reader2 = command2.ExecuteReader();
                //connect.ExecuteNonQuery(strquery);
                /*if (reader.Read())
                {
                    namapupuk = (string)reader["nama_pupuk"];
                    namajenispupuk = (string)reader["nama_jenis_pupuk"];
                    hargapupuk = reader["harga_pupuk"].ToString();
                    takaran = (string)reader["takaran"];
                }

                LabelNamaPupuk.Text = namapupuk;
                LabelJenisPupuk.Text = namajenispupuk;
                LabelHarga.Text = hargapupuk;
                LabelTakaran.Text = takaran;*/
                GridViewHaraP.DataSource = reader;
                GridViewHaraP.DataBind();
                //listHama.Items.Clear();
                GridViewHaraK.DataSource = reader2;
                GridViewHaraK.DataBind();

                reader.Close();
                reader2.Close();
                
            }
            finally
            {
                connect.Close();
            }
        }
    }
}