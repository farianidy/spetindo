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
    public partial class request_hama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO";
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                //insert tabel request hama
                string strconnect = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                OracleConnection connect = new OracleConnection(strconnect);

                OracleCommand command = new OracleCommand();
                command.Connection = connect;
                command.CommandText = "insert into request_hama (nama_req, status_req) values (:nama_req,0)";
                command.Parameters.Add(":nama_req", TextBoxReqHama.Text);

                connect.Open();
                command.ExecuteNonQuery();
                command.Cancel();
                connect.Close();

                //view id request hama
                string idreq = "";
                OracleDataReader reader;
                string strquery = "select id_req from request_hama where nama_req = '" + TextBoxReqHama.Text + "'";
                OracleCommand cmd = new OracleCommand(strquery, connect);
                //OracleDataReader read = connect.ExecuteReader(strquery);
                connect.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    idreq = (string)reader["id_req"];
                }
                
                reader.Close();
                connect.Close();

                //insert tabel detail hama
                OracleCommand command2 = new OracleCommand();
                command2.Connection = connect;
                command2.CommandText = "insert into detail_hama (id_req, id_tanaman) values (:id_req,:id_tanaman)";
                command2.Parameters.Add(":id_req", idreq);
                command2.Parameters.Add(":id_tanaman", DropDownListTanaman.SelectedValue);

                connect.Open();
                command2.ExecuteNonQuery();
                command2.Cancel();
                connect.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Exception Occured:   " + ex);
            }
            finally
            {
                //Response.Write("Hama Berhasil ditambah");
                //<script language='javascript'>alert( "Hama Berhasil Di Request" );
                ClientScript.RegisterStartupScript(typeof(Page), "test", "<script>alert('Hama Berhasil Di Request');return false;</script>");
                PanelPengumuman.Visible = true;
            }
        }

        protected void ImageButtonKembali_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/informasi_hama.aspx");
        }

    }
}