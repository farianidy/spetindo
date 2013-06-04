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
    public partial class tambah_kota : System.Web.UI.Page
    {
        OracleConnection connect = new OracleConnection();
        OracleDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO - Penambahan Kota";
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            IsiListProvinsi();
        }

        protected void IsiListProvinsi()
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
                    listProvinsi.Items.Add(reader["nama_provinsi"].ToString());
                }
                reader.Close();
                //listHama.Items.Clear();
            }
            finally
            {
                connect.Close();
            }
        }

        protected void ImageButtonTambah_Click(object sender, ImageClickEventArgs e)
        {
            //view id prov
            //string idprov = "";
            string stridprov = "select id_provinsi from provinsi where nama_provinsi ='" + listProvinsi.SelectedItem + "'";
            OracleCommand command = new OracleCommand(stridprov, connect);
            try
            {
                connect.Open();
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    //listHama.DataSource = reader["nama_hama"].ToString();
                    //listHama.DataBind();
                    //listKota.Items.Add(reader["nama_kota"].ToString());
                    LabelIDProvinsi.Text = reader["id_provinsi"].ToString();
                }
                reader.Close();
                //listHama.Items.Clear();
            }
            finally
            {
                connect.Close();
            }


            try
            {

                //insert kota
                OracleCommand com = new OracleCommand();
                com.Connection = connect;
                com.CommandText = "insert into kota (id_provinsi,nama_kota) values (:id_provinsi,:nama_kota)";
                com.Parameters.Add(":id_provinsi", LabelIDProvinsi.Text);
                com.Parameters.Add(":nama_kota", TextBoxNamKota.Text);

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
                PanelPengumuman.Visible = true;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/index_admin.aspx");
        }
        protected void ImageButtonKembali_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/tambah_pupuk.aspx");
        }

    }
}