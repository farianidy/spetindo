﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spetindoProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public String parsing = null;
        index Currentpage = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Currentpage = this.Page as index;
            if (Currentpage != null)
            {
                labeltesting.Text = Currentpage.LocationCheck();
                //this.HyperLink1.NavigateUrl = this.HyperLink1.NavigateUrl + "?" + Currentpage.CheckString();
            }
        } 

        public Site1()
        {
        }

        public virtual string LocationCheck()
        {
            return "";
        }
    }

}