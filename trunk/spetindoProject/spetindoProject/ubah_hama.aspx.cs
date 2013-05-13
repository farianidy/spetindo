using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace spetindoProject
{
    public partial class ubah_hama : System.Web.UI.Page
    {
        OracleConnection connect = new OracleConnection();
        OracleDataReader reader;

        string nama_hama = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            //listHama.Items.Clear();
            //list hama
            IsiListHama();
        }

        protected void IsiListHama()
        {
            string strhama = "select nama_hama from hama";
            OracleCommand command1 = new OracleCommand(strhama, connect);
            try
            {
                connect.Open();
                reader = command1.ExecuteReader();
                while (reader.Read())
                {
                    //listHama.DataSource = reader["nama_hama"].ToString();
                    //listHama.DataBind();
                    listHama.Items.Add(reader["nama_hama"].ToString());
                }
                reader.Close();
                //listHama.Items.Clear();
            }
            finally
            {
                connect.Close();
            }
        }

        protected void ButtonHama_Click(object sender, EventArgs e)
        {
            nama_hama = listHama.Text;

            listHama.Items.Clear();
            IsiListHama();
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;

            string strquery = "select nama_hama, cara_pencegahan from hama a where a.nama_hama='" + nama_hama + "'";
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
                //listHama.Items.Clear();
                reader.Close();
            }
            finally
            {
                connect.Close();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string idhama = "";
            string namahama = "";
            string pencegahan = "";

            try
            {
                namahama = listHama.Text;

                /*string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                connect.ConnectionString = strconnect;*/

                //view id hama
                OracleDataReader reader;
                string strquery = "select id_hama from hama where nama_hama = '" + namahama + "'";
                OracleCommand cmd = new OracleCommand(strquery, connect);
                //OracleDataReader read = connect.ExecuteReader(strquery);
                connect.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    idhama = (string)reader["id_hama"];
                }
                reader.Close();
                connect.Close();

                //update hama
                OracleCommand com = new OracleCommand();
                com.Connection = connect;
                com.CommandText = "update hama set nama_hama = :nama, cara_pencegahan = :carpen where id_hama = :id_hama";
                com.Parameters.Add(":nama", TextBoxNama.Text);
                com.Parameters.Add(":carpen", TextBoxPencegahan.Text);
                com.Parameters.Add(":id_hama", idhama);

                connect.Open();
                com.ExecuteNonQuery();
                com.Cancel();
                connect.Close();


            }
            catch (Exception ex)
            {
                Response.Write("Exception Occured:   " + ex);
            }
            finally
            {
                //Response.Write("Hama Berhasil ditambah");
            }
        }

        protected void ImageButton2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/index.aspx");
        }
    }
}