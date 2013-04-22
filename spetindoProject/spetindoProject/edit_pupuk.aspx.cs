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
    public partial class edit_pupuk : System.Web.UI.Page
    {
        OracleConnection connect = new OracleConnection();
        OracleDataReader reader;

        string nama_pupuk = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            IsiListPupuk();            
        }

        protected void IsiListPupuk()
        {
            string strpupuk = "select nama_pupuk from pupuk";
            OracleCommand command1 = new OracleCommand(strpupuk, connect);
            try
            {
                connect.Open();
                reader = command1.ExecuteReader();
                while (reader.Read())
                {
                    //listHama.DataSource = reader["nama_hama"].ToString();
                    //listHama.DataBind();
                    listPupuk.Items.Add(reader["nama_pupuk"].ToString());
                }
                reader.Close();
                //listHama.Items.Clear();
            }
            finally
            {
                connect.Close();
            }
        }

        protected void ButtonPupuk_Click(object sender, EventArgs e)
        {
            nama_pupuk = listPupuk.Text;

            listPupuk.Items.Clear();
            IsiListPupuk();
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;

            string strquery = "select nama_pupuk, harga_pupuk from pupuk a where a.nama_pupuk='" + nama_pupuk + "'";
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

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/main page.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}