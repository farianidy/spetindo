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
    public partial class informasi_pupuk : System.Web.UI.Page
    {
        OracleConnection connect = new OracleConnection();
        OracleDataReader reader, reader2;
        string namaprovinsi = "";
        string namakota = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO - Pemilihan Pupuk";
            
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            isiListProvinsi();
        }

        protected void isiListProvinsi()
        {
            string strprov = "select nama_provinsi from provinsi";
            OracleCommand command1 = new OracleCommand(strprov, connect);
            try
            {
                connect.Open();
                reader = command1.ExecuteReader();
                while (reader.Read())
                {
                    ListProvinsi.Items.Add(reader["nama_provinsi"].ToString());
                }
                reader.Close();
            }
            finally
            {
                connect.Close();
            }
        }

        protected void ListProvinsi_SelectedIndexChanged(object sender, EventArgs e)
        {
            namaprovinsi = ListProvinsi.SelectedValue;
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            ListKota.Items.Clear();

            // List kota
            string strkota = "select nama_kota from kota a, provinsi b where a.id_provinsi=b.id_provinsi and b.nama_provinsi = '" + namaprovinsi + "'";
            OracleCommand command1 = new OracleCommand(strkota, connect);
            try
            {
                connect.Open();
                reader = command1.ExecuteReader();
                while (reader.Read())
                {
                    ListKota.Items.Add(reader["nama_kota"].ToString());
                }
                reader.Close();
            }
            finally
            {
                connect.Close();
            }

        }

        #region PupukHandler
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //RefreshGridView1();

            string id_tanaman = "";

            id_tanaman = DropDownListTanaman.Text;
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            
            OracleConnection connect = new OracleConnection();
            connect.ConnectionString = strconnect;
            
            //view pupuk KCL
            OracleDataReader reader;
            string strquery = "select takaran from detail_pupuk where id_pupuk='PU005' and id_status='" + DropDownListStatusK.SelectedValue + "' and id_tanaman='" + DropDownListTanaman.SelectedValue + "'";
            OracleCommand cmd = new OracleCommand(strquery, connect);
                
            string ukuranK="";
            
            connect.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                ukuranK = (string)reader["takaran"];
            }
            reader.Close();
            connect.Close();

            //view harga KCL
            OracleDataReader readerHarga;
            string strqueryHarga = "select harga_pupuk from pupuk where id_pupuk='PU005'";
            OracleCommand cmdHarga = new OracleCommand(strqueryHarga, connect);

            string hargaK="";
            connect.Open();
            readerHarga = cmdHarga.ExecuteReader();
            if (readerHarga.Read())
            {
                hargaK = (String)readerHarga["harga_pupuk"];
            }

            int hasilK,totharK;
            hasilK = Convert.ToInt32(ukuranK) * Convert.ToInt32(TextBoxLuas.Text);
            totharK = Convert.ToInt32(hargaK) * hasilK;

            LabelK.Text = hasilK.ToString();
            reader.Close();
            connect.Close();

            //view pupuk SP36
            OracleDataReader reader2;
            string strquery2 = "select takaran from detail_pupuk where id_pupuk='PU003' and id_status='" + DropDownListStatusK.SelectedValue + "' and id_tanaman='" + DropDownListTanaman.SelectedValue + "'";
            OracleCommand cmd2 = new OracleCommand(strquery2, connect);

            string ukuranP = "";

            connect.Open();
            reader2 = cmd2.ExecuteReader();
            if (reader2.Read())
            {
                ukuranP = (string)reader2["takaran"];
            }

            //view harga SP36
            OracleDataReader reader2Harga;
            string strquery2Harga = "select harga_pupuk from pupuk where id_pupuk='PU003'";
            OracleCommand cmd2Harga = new OracleCommand(strquery2Harga, connect);

            string hargaP = "";
            reader2Harga = cmd2Harga.ExecuteReader();
            if (reader2Harga.Read())
            {
                hargaP = (string)reader2Harga["harga_pupuk"];
            }

            int hasilP,totharP;
            int TotalHarga; 
            hasilP = Convert.ToInt32(ukuranP) * Convert.ToInt32(TextBoxLuas.Text);
            totharP = Convert.ToInt32(hargaP) * hasilP;
            TotalHarga = totharK + totharP;
            LabelTotHar.Text = TotalHarga.ToString();

            LabelP.Text = hasilP.ToString();
            HargaK.Text = totharK.ToString();
            HargaP.Text = totharP.ToString();
            reader.Close();
            connect.Close();

            string kedelai="TA003";

            if (DropDownListTanaman.SelectedValue.Equals(kedelai))
            {
                //view pupuk urea
                OracleDataReader reader3;
                string strquery3 = "select takaran from detail_pupuk where id_pupuk='PU002' and id_status='" + DropDownListStatusK.SelectedValue + "' and id_tanaman='" + DropDownListTanaman.SelectedValue + "'";
                OracleCommand cmd3 = new OracleCommand(strquery3, connect);

                string ukuranN = "";

                connect.Open();
                reader3 = cmd3.ExecuteReader();
                if (reader3.Read())
                {
                    ukuranN = (string)reader3["takaran"];
                }

                //view harga urea
                OracleDataReader reader3Harga;
                string strquery3Harga = "select harga_pupuk from pupuk where id_pupuk='PU002'";
                OracleCommand cmd3Harga = new OracleCommand(strquery3Harga, connect);

                string hargaN = "";
                reader3Harga = cmd3Harga.ExecuteReader();
                if (reader3Harga.Read())
                {
                    hargaN = (string)reader3Harga["harga_pupuk"];
                }

                int hasilN,totharN;
                hasilN = Convert.ToInt32(ukuranN) * Convert.ToInt32(TextBoxLuas.Text);
                totharN = Convert.ToInt32(hargaN) * hasilN;
                TotalHarga = totharK + totharN + totharP;

                LabelN.Text = hasilN.ToString();
                HargaK.Text = totharK.ToString();
                HargaN.Text = totharN.ToString();
                HargaP.Text = totharP.ToString();
                LabelTotHar.Text = TotalHarga.ToString();

                reader.Close();
                connect.Close();
            }
           
        }

        /* To reload gridview with sort and keyword key */
        private void RefreshGridView1()
        {
            DataTable dt = null;

            string id_tanaman = "";

            id_tanaman = DropDownListTanaman.Text;

            OracleConnection connect = new OracleConnection();
            OracleDataReader reader;

            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            string strquery = "select nama_pupuk, harga_pupuk, takaran, nama_jenis_pupuk from tanaman a, detail_pupuk b, pupuk c, jenis_pupuk d where a.id_tanaman='" + id_tanaman + "'and a.id_tanaman= b.id_tanaman and b.id_pupuk= c.id_pupuk and c.id_jenis_pupuk= d.id_jenis_pupuk";
            OracleCommand command = new OracleCommand(strquery, connect);

            try
            {
                connect.Open();
                reader = command.ExecuteReader();
                dt.Load(reader);

                reader.Close();
            }
            catch (NullReferenceException e)
            {
                e.ToString();
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

            RefreshGridView1();
        }

        /* Handle the paging of gridview. */
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            RefreshGridView1();
        }
        #endregion

        #region HaraHandler
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            //RefreshGridViewHaraP();
            //RefreshGridViewHaraK();

            namaprovinsi = ListProvinsi.SelectedValue;
            namakota = ListKota.SelectedValue;
            ListProvinsi.Items.Clear();
            isiListProvinsi();

            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;

            //Response.Write(namaprovinsi);
            //Response.Write(namakota);

            string strquery = "select DISTINCT nama_provinsi, nama_kota, nama_status, luas_lahan, kebutuhan_pupuk from provinsi a, kota b, status_hara c, ukuran d where a.id_provinsi= b.id_provinsi and a.nama_provinsi = '" + namaprovinsi + "' and b.id_kota= d.id_kota and b.nama_kota='" + namakota + "' and c.id_status= d.id_status and d.id_pupuk='PU003'";
            OracleCommand command = new OracleCommand(strquery, connect);

            string strquery2 = "select DISTINCT nama_provinsi, nama_kota, nama_status, luas_lahan, kebutuhan_pupuk from provinsi a, kota b, status_hara c, ukuran d where a.id_provinsi= b.id_provinsi and a.nama_provinsi = '" + namaprovinsi + "' and b.id_kota= d.id_kota and b.nama_kota='" + namakota + "' and c.id_status= d.id_status and d.id_pupuk='PU005'";
            OracleCommand command2 = new OracleCommand(strquery2, connect);

            try
            {
                connect.Open();
                reader = command.ExecuteReader();
                reader2 = command2.ExecuteReader();

                GridViewHaraP.DataSource = reader;
                GridViewHaraP.DataBind();


                GridViewHaraK.DataSource = reader2;
                GridViewHaraK.DataBind();

                reader.Close();
                reader2.Close();
            }
            finally
            {
                connect.Close();
            }

            PanelHara.Visible = true;
        }

        /* To reload gridview with sort and keyword key */
        private void RefreshGridViewHaraP()
        {
            DataTable dt = null;

            namaprovinsi = ListProvinsi.SelectedValue;
            namakota = ListKota.SelectedValue;
            ListProvinsi.Items.Clear();
            isiListProvinsi();

            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;

            Response.Write(namaprovinsi);
            Response.Write(namakota);

            string strquery = "select DISTINCT nama_provinsi, nama_kota, nama_status, luas_lahan, kebutuhan_pupuk from provinsi a, kota b, status_hara c, ukuran d where a.id_provinsi= b.id_provinsi and a.nama_provinsi = '" + namaprovinsi + "' and b.id_kota= d.id_kota and b.nama_kota='" + namakota + "' and c.id_status= d.id_status and d.id_pupuk='PU003'";
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

            GridViewHaraP.DataSource = dt;
            GridViewHaraP.DataBind();
        }

        protected void GridViewHaraP_Sorting(object sender, GridViewSortEventArgs e)
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

            RefreshGridViewHaraP();
        }

        /* Handle the paging of gridview. */
        protected void GridViewHaraP_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewHaraP.PageIndex = e.NewPageIndex;
            RefreshGridViewHaraP();
        }

        /* To reload gridview with sort and keyword key */
        private void RefreshGridViewHaraK()
        {
            DataTable dt = null;

            namaprovinsi = ListProvinsi.SelectedValue;
            namakota = ListKota.SelectedValue;
            ListProvinsi.Items.Clear();
            isiListProvinsi();

            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;

            Response.Write(namaprovinsi);
            Response.Write(namakota);

            string strquery2 = "select DISTINCT nama_provinsi, nama_kota, nama_status, luas_lahan, kebutuhan_pupuk from provinsi a, kota b, status_hara c, ukuran d where a.id_provinsi= b.id_provinsi and a.nama_provinsi = '" + namaprovinsi + "' and b.id_kota= d.id_kota and b.nama_kota='" + namakota + "' and c.id_status= d.id_status and d.id_pupuk='PU005'";
            OracleCommand command2 = new OracleCommand(strquery2, connect);

            try
            {
                connect.Open();
                reader2 = command2.ExecuteReader();
                dt.Load(reader2);

                reader2.Close();

            }
            catch (NullReferenceException e)
            {
                e.ToString();
            }
            finally
            {
                connect.Close();
            }

            if (ViewState["SortExpression"] != null)
                dt.DefaultView.Sort = ViewState["SortExpression"].ToString() + " " + ViewState["SortDirection"].ToString();

            GridViewHaraK.DataSource = dt;
            GridViewHaraK.DataBind();
        }

        protected void GridViewHaraK_Sorting(object sender, GridViewSortEventArgs e)
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

            RefreshGridViewHaraK();
        }

        /* Handle the paging of gridview. */
        protected void GridViewHaraK_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewHaraK.PageIndex = e.NewPageIndex;
            RefreshGridViewHaraK();
        }
        #endregion
    }
}