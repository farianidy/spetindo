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
    public partial class tambah_prov : System.Web.UI.Page
    {
        OracleConnection connect = new OracleConnection();
        OracleDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO - Penambahan Provinsi";
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
        }

        protected void ImageButtonTambah_Click(object sender, ImageClickEventArgs e)
        {
            
            try
            {

                //insert provinsi
                OracleCommand com = new OracleCommand();
                com.Connection = connect;
                com.CommandText = "insert into provinsi (nama_provinsi) values (:nama_provinsi)";
                com.Parameters.Add(":nama_provinsi", TextBoxNamProv.Text);

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