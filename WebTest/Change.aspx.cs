using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTest
{
    public partial class Change : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void change_button_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Done";
            lblMessage.CssClass = "alert alert-danger center-block alert-danger-class";
        }
    }
}