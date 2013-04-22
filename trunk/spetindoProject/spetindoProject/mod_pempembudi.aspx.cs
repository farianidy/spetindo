using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spetindoProject
{
    public partial class mod_pempembudi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Rekomendasi Pembudidayaan";

            Label1.Text = Session["dataPadi"].ToString();
            Label2.Text = Session["dataJagung"].ToString();
            Label3.Text = Session["dataKedelai"].ToString();
        }
    }
}