﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spetindoProject
{
    public partial class informasi_tanah : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "SPETINDO - Informasi Tanah";
        }

        protected void ImageButtonKembali_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/nasihat_modul.aspx");
        }
    }
}