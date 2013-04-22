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
    public partial class tambah_hama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO - Penambahan Hama";
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string idhama = "";
            string nama_hama = "";
            string cara_pencegahan = "";

            try
            {
                nama_hama = TextBoxNamaHama.Text;
                cara_pencegahan = TextBoxPencegahan.Text;

                //insert tabel hama
                string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                OracleConnection connect = new OracleConnection(strconnect);

                OracleCommand command = new OracleCommand();
                command.Connection = connect;
                command.CommandText = "insert into hama (nama_hama, cara_pencegahan) values (:nama_hama,:cara_pencegahan)";
                command.Parameters.Add(":nama_hama", TextBoxNamaHama.Text);
                command.Parameters.Add(":cara_pencegahan", TextBoxPencegahan.Text);

                connect.Open();
                command.ExecuteNonQuery();
                command.Cancel();
                connect.Close();

                //view id detail hama
                OracleDataReader reader;
                string strquery = "select id_hama from hama where nama_hama = '" + nama_hama + "' and cara_pencegahan = '" + cara_pencegahan + "'";
                OracleCommand cmd = new OracleCommand(strquery, connect);
                //OracleDataReader read = connect.ExecuteReader(strquery);
                connect.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    idhama = (string)reader["id_hama"];
                }
                LabelIDHama.Text = idhama;
                reader.Close();
                connect.Close();

                //insert detaill hama
                OracleCommand com = new OracleCommand();
                com.Connection = connect;
                com.CommandText = "insert into detail_hama (id_tanaman, id_hama) values (:id_tanaman,:id_hama)";
                com.Parameters.Add(":id_tanaman", DropDownJenisTanaman.Text);
                com.Parameters.Add(":id_hama", LabelIDHama.Text);

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

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/index.aspx");
        }
    }
}