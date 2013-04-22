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
    public partial class informasi_hama : System.Web.UI.Page
    {
        OracleConnection connect = new OracleConnection();
        OracleDataReader reader;

        string id_tanaman = "";
        string nama_hama = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = Page.Title + "Informasi Hama";

            //panelHama.Visible = false;
            //ButtonHama.Visible = false;
            //GridView1.Visible = false;
        }

        protected void DropDownListTanaman_SelectedIndexChanged(object sender, EventArgs e)
        {
            id_tanaman = DropDownListTanaman.SelectedValue;
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            DropDownListHama.Items.Clear();

            // List hama
            string strhama = "select nama_hama from hama a, detail_hama b where a.id_hama=b.id_hama and b.id_tanaman = '" + id_tanaman + "'";
            OracleCommand command1 = new OracleCommand(strhama, connect);
            try
            {
                connect.Open();
                reader = command1.ExecuteReader();
                while (reader.Read())
                {
                    DropDownListHama.Items.Add(reader["nama_hama"].ToString());
                }
                reader.Close();
            }
            finally
            {
                connect.Close();
            }

            //panelHama.Visible = true;
            //ButtonHama.Visible = true;

        }
    }
}