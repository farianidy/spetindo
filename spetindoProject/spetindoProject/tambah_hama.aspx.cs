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
    public partial class tambah_hama : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO - Penambahan Hama";
        }

        protected void ButtonHama_Click(object sender, EventArgs e)
        {
            //nama_hama = listHama.Text;

            //listHama.Items.Clear();
            //IsiListHama();
            string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            OracleConnection connect = new OracleConnection(strconnect);

            OracleDataReader reader;
            string strquery = "select nama_req, nama_tanaman from request_hama a, detail_hama b, tanaman c where a.id_req= b.id_req and b.id_tanaman= c.id_tanaman and a.status_req=0";
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string idhama = "";
            string nama_hama = "";
            string cara_pencegahan = "";

            try
            {
                nama_hama = TextBoxNamaHama.Text;
                cara_pencegahan = TextBoxPencegahan.Text;

                //insert tabel hama
                string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                OracleConnection connect = new OracleConnection(strconnect);

                OracleCommand command = new OracleCommand();
                command.Connection = connect;
                command.CommandText = "insert into hama (nama_hama, cara_pencegahan) values (:nama_hama,:cara_pencegahan)";
                command.Parameters.Add(":nama_hama", TextBoxNamaHama.Text);
                command.Parameters.Add(":cara_pencegahan", TextBoxPencegahan.Text);

                connect.Open();
                command.ExecuteNonQuery();
                command.Cancel();
                connect.Close();

                //view id detail hama
                OracleDataReader reader;
                string strquery = "select id_hama from hama where nama_hama = '" + nama_hama + "' and cara_pencegahan = '" + cara_pencegahan + "'";
                OracleCommand cmd = new OracleCommand(strquery, connect);
                //OracleDataReader read = connect.ExecuteReader(strquery);
                connect.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    idhama = (string)reader["id_hama"];
                }
                LabelIDHama.Text = idhama;
                reader.Close();
                connect.Close();

                //insert detaill hama
                OracleCommand com = new OracleCommand();
                com.Connection = connect;
                com.CommandText = "insert into detail_hama (id_tanaman, id_hama) values (:id_tanaman,:id_hama)";
                com.Parameters.Add(":id_tanaman", DropDownJenisTanaman.Text);
                com.Parameters.Add(":id_hama", LabelIDHama.Text);

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

        protected void ImageButtonReq_Click(object sender, ImageClickEventArgs e)
        {
            string idhama = "";
            string nama_hama = "";
            string cara_pencegahan = "";

            try
            {
                nama_hama = TextBoxNamaHama.Text;
                cara_pencegahan = TextBoxPencegahan.Text;

                //insert tabel hama
                string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                OracleConnection connect = new OracleConnection(strconnect);

                OracleCommand command = new OracleCommand();
                command.Connection = connect;
                command.CommandText = "insert into hama (nama_hama, cara_pencegahan) values (:nama_hama,:cara_pencegahan)";
                command.Parameters.Add(":nama_hama", TextBoxNamaHama.Text);
                command.Parameters.Add(":cara_pencegahan", TextBoxPencegahan.Text);

                connect.Open();
                command.ExecuteNonQuery();
                command.Cancel();
                connect.Close();

                //view id hama
                OracleDataReader reader;
                string strquery = "select id_hama from hama where nama_hama = '" + nama_hama + "' and cara_pencegahan = '" + cara_pencegahan + "'";
                OracleCommand cmd = new OracleCommand(strquery, connect);
                //OracleDataReader read = connect.ExecuteReader(strquery);
                connect.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    idhama = (string)reader["id_hama"];
                }
                //LabelIDHama.Text = idhama;
                reader.Close();
                connect.Close();

                //update id_hama
                OracleCommand com = new OracleCommand();
                com.Connection = connect;
                com.CommandText = "update detail_hama set id_hama=:id_hama where id_req=(select id_req from request_hama a, hama b where a.nama_req= b.nama_hama and b.id_hama=:id_hama)";
                com.Parameters.Add(":id_hama", idhama);

                connect.Open();
                com.ExecuteNonQuery();
                com.Cancel();
                connect.Close();

                //update status_req
                OracleCommand com2 = new OracleCommand();
                com2.Connection = connect;
                com2.CommandText = "update request_hama set status_req=1 where id_req=(select a.id_req from request_hama a, detail_hama b, hama c where a.id_req= b.id_req and b.id_hama= c.id_hama and c.id_hama=:id_hama)";
                com2.Parameters.Add(":id_hama", idhama);

                connect.Open();
                com2.ExecuteNonQuery();
                com2.Cancel();
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