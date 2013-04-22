using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spetindoProject
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dropdownStatus.Items.Add("Milik sendiri");
            dropdownStatus.Items.Add("Milik orang lain");
            dropdownStatus.Items.Add("Milik bersama");

            dropdownJenis.Items.Add("Aluvial");
            dropdownJenis.Items.Add("Glei");
            dropdownJenis.Items.Add("Grumusol");
            dropdownJenis.Items.Add("Latosol");
            dropdownJenis.Items.Add("Mediteran");
            dropdownJenis.Items.Add("Organosol");
            dropdownJenis.Items.Add("Regosol");
        }
    }
}