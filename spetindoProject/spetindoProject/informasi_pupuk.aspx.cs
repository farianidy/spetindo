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
            Page.Title = Page.Title + "Pemilihan Pupuk";
            
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
    }
}