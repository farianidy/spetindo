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
    public partial class kelolaadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OracleConnection connect = new OracleConnection();
            OracleDataReader reader;
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            string strquery = "select nama_admin from admin";
            OracleCommand command = new OracleCommand(strquery, connect);
            try
            {
                connect.Open();
                reader = command.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();


                reader.Close();
            }
            finally
            {
                connect.Close();
            }
        }
        
    }
}