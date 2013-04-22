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
            Page.Title = "SPETINDO - Informasi Hama";

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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            id_tanaman = DropDownListTanaman.Text;
            nama_hama = DropDownListHama.Text;

            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;

            string strquery = "select nama_hama, cara_pencegahan from hama a, detail_hama b, tanaman c where a.id_hama= b.id_hama and b.id_tanaman= c.id_tanaman and c.id_tanaman='" + id_tanaman + "' and a.nama_hama='" + nama_hama + "'";
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

            GridView1.Visible = true;
        }

        /* To reload gridview with sort and keyword key */
        private void RefreshGridView()
        {
            DataTable dt = null;

            id_tanaman = DropDownListTanaman.Text;
            nama_hama = DropDownListHama.Text;

            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;

            string strquery = "select nama_hama, cara_pencegahan from hama a, detail_hama b, tanaman c where a.id_hama= b.id_hama and b.id_tanaman= c.id_tanaman and c.id_tanaman='" + id_tanaman + "' and a.nama_hama='" + nama_hama + "'";
            OracleCommand command = new OracleCommand(strquery, connect);

            try
            {
                connect.Open();
                reader = command.ExecuteReader();
                dt.Load(reader);

                reader.Close();
            }
            finally
            {
                connect.Close();
            }

            if (ViewState["SortExpression"] != null)
                dt.DefaultView.Sort = ViewState["SortExpression"].ToString() + " " + ViewState["SortDirection"].ToString();

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            ViewState["SortExpression"] = e.SortExpression;

            if (ViewState["SortDirection"] == null)
                ViewState["SortDirection"] = "desc";
            else
            {
                if (ViewState["SortDirection"].ToString() == "asc")
                    ViewState["SortDirection"] = "desc";
                else
                    ViewState["SortDirection"] = "asc";
            }

            RefreshGridView();
        }

        /* Handle the paging of gridview. */
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            RefreshGridView();
        }
    }
}