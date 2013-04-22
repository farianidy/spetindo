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
    public partial class tambah_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO - Penambahan Admin";
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                //insert tabel admin
                string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                OracleConnection connect = new OracleConnection(strconnect);

                OracleCommand command = new OracleCommand();
                command.Connection = connect;
                command.CommandText = "insert into admin (nama_admin, password_admin) values (:nama_admin,:password_admin)";
                command.Parameters.Add(":nama_admin", tbUsername.Text);
                command.Parameters.Add(":password_admin", tbPassword.Text);

                connect.Open();
                command.ExecuteNonQuery();
                command.Cancel();
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