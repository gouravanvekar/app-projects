using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTest
{
    public partial class Vote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
            #region steps
            /* Steps
                 * if(ValidatePosition()){
                 *      LoadData()
                 *      CheckEligibility()
                 * }      
                 * 
                 * function CheckEligibility(){
                 *      if(AlreadyVoted){
                 *          EnableVoting(false)
                 *          Msg = You have chosen a candiadte for this position
                 *          votingState = voted
                 *      }
                 *      else if(VotingActivated == "Freezed"){
                 *          EnableVoting(false)
                 *          Msg = Voting is freezed
                 *          votingState = freezed
                 *      }
                 *      else if(VotingActivated == "Yes"){
                 *          EnableVoting(true)
                 *          Msg = Voting is now active. Choose your candidate
                 *          votingState = active
                 *      }
                 *      else{
                 *          EnableVoting(false)
                 *          Msg = Voting is inactive. Please wait for activation  
                 *          votingState = inactive        
                 *      }
                 * }
                 * 
                 * function EnableVoting(bool status){
                 *      foreach (RepeaterItem item in rptCandidates.Items){
                 *          Button voteButton = (Button)item.FindControl("btnVote");
                 *          voteButton.Visible = status;
                 *      }
                 * }
                 * */
            #endregion
        }

        private void LoadData()
        {
            Users user = new Users();

            List<Users> candidates = user.GetAllUsers();
            if (candidates.Count != 0)
            {
                rptCandidates.DataSource = user.GetAllUsers();
                rptCandidates.DataBind();
                rptCandidates.Visible = true;
                divNoCandidates.Visible = false;
            }
            else
            {
                rptCandidates.Visible = false;
                divNoCandidates.Visible = true;
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Button button = (sender as Button);
            string commandArgument = button.CommandArgument;
            //lblMainMessage.Text = commandArgument;
            //divAlert.Attributes.Remove("class");
            //divAlert.Attributes.Add("class", "alert alert-success animate-me-inverse");

            foreach (RepeaterItem item in rptCandidates.Items)
            {
                Button voteButton = (Button)item.FindControl("btnVote");
                voteButton.Visible = false;
            }

            //String complete = "swal({title: 'Vote Registered', text: 'You voted " + commandArgument + "', type: 'success', confirmButtonColor: '#f04f29'})";

            String complete = "swal({title: 'Vote Registered', text: 'You voted " + commandArgument + "', type: 'success', timer: 3000, showConfirmButton: false })";
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "voted", complete, true);

            //StringBuilder csText = new StringBuilder();
            //csText.Append("$('body,html').animate({ scrollTop: 225 }, 500);");
            //ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), Guid.NewGuid().ToString(), csText.ToString(), true);
        }
    }
}