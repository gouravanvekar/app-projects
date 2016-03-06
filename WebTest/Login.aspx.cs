using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_feedback_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "admin")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Credentials";
                lblMessage.CssClass = "alert alert-danger center-block alert-danger-class";
            }
        }

        protected void requestAccess_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Access requested";
            lblMessage.CssClass = "alert alert-success center-block alert-success-class";
            ClearValues();
        }

        private void ClearValues()
        {
            txtUsername.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtFirstname.Text = string.Empty;
            txtLastname.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtRequestPassword.Text = string.Empty;
        }
    }
}