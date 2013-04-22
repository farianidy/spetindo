using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spetindoProject
{
    public partial class info_pempembudi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            double[] answer = new double[17];
            int jenisTnh, suhu, tinggiTnh, luasTnh;
            //jenisTnm = int.Parse(DropDownJenisTanaman.SelectedValue);
            jenisTnh = int.Parse(DropDownJenisTanah.SelectedValue);
            suhu = int.Parse(DropDownSuhu.SelectedValue);
            tinggiTnh = int.Parse(DropDownTinggiTanah.SelectedValue);
            luasTnh = int.Parse(DropDownLuas.SelectedValue);

            for (int i = 0; i < 17; i++)
            {
                answer[i] = 0;
            }

            //answer[jenisTnm] = 1;
            answer[jenisTnh] = 1;
            answer[suhu] = 1;
            answer[tinggiTnh] = 1;
            answer[luasTnh] = 1;

            QSE itu = new QSE();
            itu.inisialisasi();
            itu.makept();
            itu.fitness();
            itu.makebt();
            itu.algo();
            //itu.input();

            Session["dataPadi"] = itu.outputPadi();
            Session["dataJagung"] = itu.outputJagung();
            Session["dataKedelai"] = itu.outputKedelai();
            Response.Redirect("mod_pempembudi.aspx");
        }
    }
}