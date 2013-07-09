using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spetindoProject
{
    public partial class informasi_ukur_tinggi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonHitung_Click(object sender, EventArgs e)
        {
            int h=0;
            
            h = 7600 - (100 * Convert.ToInt32(TextBoxTekanan.Text));
            if (h > 700)
                LabelDataran.Text = "Dataran Tinggi";
            else if (h <= 700)
                LabelDataran.Text = "Dataran Rendah";

            LabelTinggi.Text = h.ToString();

            PanelTinggi.Visible = true;
        }

        protected void ImageButtonKembali_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/nasihat_modul.aspx");
        }
    }
}