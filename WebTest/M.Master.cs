using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTest
{
    public partial class M : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void save_feedback_Click(object sender, EventArgs e)
        {
            try
            {
                if (rblRating.SelectedIndex < 0)
                {
                    lblMessage.Text = "Please select a rating value";
                    lblMessage.CssClass = "alert alert-danger center-block alert-danger-class";
                }
                else
                {
                    //    VotingData data = new VotingData();
                    //    string ufid = Session["user"].ToString();

                    //    MemberFeedback feedback = new MemberFeedback();
                    //    feedback.Rating = int.Parse(rblRating.SelectedValue);
                    //    feedback.FeedbackDescription = data.GetMemberNameByUFID(ufid) + ": " + txtComments.Text;

                    //    if (data.StoreFeedback(feedback))
                    //    {
                    //        lblMessage.Text = "Thanks for rating!";
                    //        lblMessage.CssClass = "alert alert-success center-block alert-success-class";
                    //    }
                    //    else
                    //    {
                    //        lblMessage.Text = "Error while saving your feedback";
                    //        lblMessage.CssClass = "alert alert-danger center-block alert-danger-class";
                    //        txtComments.Text = string.Empty;
                    //    }

                    txtComments.Text = rblRating.SelectedValue;
                    lblMessage.Text = "Thanks for rating!";
                    lblMessage.CssClass = "alert alert-success center-block alert-success-class";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error while saving your feedback";
                //ErrorLogs.LogErrors(ex.Message);
            }
        }
    }
}