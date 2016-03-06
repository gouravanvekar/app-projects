using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTest
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }
        }

        protected void Repeater1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            Label1.Text = "All items have been created";
            Label1.Visible = true;
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "mail")
            {
                if (e.Item.ItemIndex == 0)
                {
                    Label1.Text = "The email id for the customer is Goyal2@yahoo.com";
                }
                if (e.Item.ItemIndex == 1)
                {
                    Label1.Text = "The email id for the customer id meesha@gmail.com";
                }
                if (e.Item.ItemIndex == 2)
                {
                    Label1.Text = "The email id for the customer id  rahul@gmail.com";
                }
                if (e.Item.ItemIndex == 3)
                {
                    Label1.Text = "The email id for the customer id sonia@gmail.com";
                }
            }
        }
        public void loadData()
        {
            Users user = new Users();
            Repeater1.DataSource = user.GetAllUsers();
            Repeater1.DataBind();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            //Get the reference of the clicked button.
            Button button = (sender as Button);

            //Get the command argument
            string commandArgument = button.CommandArgument;

            Label1.Text = commandArgument;

            foreach (RepeaterItem item in Repeater1.Items)
            {
                Button delete = (Button)item.FindControl("btnVote");
                delete.Visible = false;
            }
        }
    }
}