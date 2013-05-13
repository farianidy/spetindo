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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public String parsing = null;
        index Currentpage = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO";

            Currentpage = this.Page as index;
            if (Currentpage != null)
            {
                //labeltesting.Text = Currentpage.LocationCheck();
                //this.HyperLink1.NavigateUrl = this.HyperLink1.NavigateUrl + "?" + Currentpage.CheckString();
            }
        }

        /*protected void ImageButtonLogin_Click(object sender, ImageClickEventArgs e)
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
                    Response.Redirect("index_admin.aspx");
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

        }*/

        public virtual string LocationCheck()
        {
            return "";
        }

        
    }
}