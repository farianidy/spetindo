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
    public partial class tambah_pupuk : System.Web.UI.Page
    {
        OracleConnection connect = new OracleConnection();
        OracleDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO - Penambahan Pupuk";
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            connect.ConnectionString = strconnect;
            //listProvinsi.Items.Clear();
            IsiListProvinsi();
            IsiListStatus();
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

        protected void listProvinsi_SelectedIndexChanged(object sender, EventArgs e)
        {
            //view id prov
            string idprov = "";
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
                    idprov = reader["id_provinsi"].ToString();
                }
                reader.Close();
                //listHama.Items.Clear();
            }
            finally
            {
                connect.Close();
            }

            listKota.Items.Clear();
            //view list kota
            string strkota = "select nama_kota from kota a, provinsi b where a.id_provinsi= b.id_provinsi and b.id_provinsi='" + idprov + "'";
            OracleCommand command1 = new OracleCommand(strkota, connect);
            try
            {
                connect.Open();
                reader = command1.ExecuteReader();
                while (reader.Read())
                {
                    //listHama.DataSource = reader["nama_hama"].ToString();
                    //listHama.DataBind();
                    listKota.Items.Add(reader["nama_kota"].ToString());
                }
                reader.Close();
                //listHama.Items.Clear();
            }
            finally
            {
                connect.Close();
            }
        }

        protected void IsiListStatus()
        {
            string strstatus = "select nama_status from status_hara";
            OracleCommand command1 = new OracleCommand(strstatus, connect);
            try
            {
                connect.Open();
                reader = command1.ExecuteReader();
                while (reader.Read())
                {
                    //listHama.DataSource = reader["nama_hama"].ToString();
                    //listHama.DataBind();
                    listStatus.Items.Add(reader["nama_status"].ToString());
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
            string idkota = "";
            string idstatus = "";

            try
            {
                
                //view id KOTA
                OracleDataReader reader2;
                string stridkota = "select id_kota from kota where nama_kota = '" + listKota.SelectedItem + "'";
                OracleCommand cmd2 = new OracleCommand(stridkota, connect);
                //OracleDataReader read = connect.ExecuteReader(strquery);
                connect.Open();
                reader2 = cmd2.ExecuteReader();
                if (reader2.Read())
                {
                    LabelIDKota.Text = (string)reader2["id_kota"];
                }
                
                reader2.Close();
                connect.Close();

                //view id status
                OracleDataReader reader;
                string stridstatus = "select id_status from status_hara where nama_status = '" + listStatus.SelectedItem + "'";
                OracleCommand cmd = new OracleCommand(stridstatus, connect);
                //OracleDataReader read = connect.ExecuteReader(strquery);
                connect.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    LabelIDStatus.Text = (string)reader["id_status"];
                }

                reader.Close();
                connect.Close();

                //view id pupuk
                LabelIDPupuk.Text = listPupuk.SelectedValue;

                //insert ukuran
                OracleCommand com = new OracleCommand();
                com.Connection = connect;
                com.CommandText = "insert into ukuran (id_kota, id_status, id_pupuk, luas_lahan, kebutuhan_pupuk) values (:id_kota,:id_status,:id_pupuk,:luas_lahan,:kebutuhan_pupuk)";
                com.Parameters.Add(":id_kota", LabelIDKota.Text);
                com.Parameters.Add(":id_status", LabelIDStatus.Text);
                com.Parameters.Add(":id_pupuk", LabelIDPupuk.Text);
                com.Parameters.Add(":luas_lahan", TextBoxLuLa.Text);
                com.Parameters.Add(":kebutuhan_pupuk", TextBoxKebPupuk.Text);

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
            Response.Redirect("~/index.aspx");
        }
    }
}