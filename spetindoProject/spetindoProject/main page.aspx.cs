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
    public partial class main_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            OracleConnection connect = new OracleConnection();
            OracleDataReader reader;
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;

            string strquery = "select nama_admin, password_admin from admin where nama_admin='" + textboxLoginId.Text + "' and password_admin='" + textboxLoginPass.Text + "'";
            OracleCommand command = new OracleCommand(strquery, connect);
            try
            {
                connect.Open();
                reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    Response.Redirect("add_admin.aspx");
                }
                else
                {
                    Response.Write("<script language=JavaScript>alert('Sorry,your username or password may be Invalid.Please enter Vaild Datas')</script>");
                }


                reader.Close();
            }
            finally
            {
                connect.Close();
            }

        }
    }
}