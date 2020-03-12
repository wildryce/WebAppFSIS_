using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FSISSystem.BLL;
using FSISSystem.ENTITIES;

namespace WebAppFSIS_.ExercisePages
{
    public partial class SimpleQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MessageLabel.Text = "";
        }

        protected void Fetch_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TeamIDArg.Text))
            {
                MessageLabel.Text = "";
            }
            else
            {
                int teamid;
                if (int.TryParse(TeamIDArg.Text, out teamid))
                {
                    if (teamid > 0)
                    {
                        TeamController sysmgr = new TeamController();
                        Team info = null;
                        info = sysmgr.Teams_FindByID(teamid);
                        if (info == null)
                        {
                            MessageLabel.Text = "No information for team can be retrieved / does not exist.";
                            TeamID.Text = "";
                            TeamName.Text = "";
                            Coach.Text = "";
                            AssistantCoach.Text = "";
                            Wins.Text = "";
                            Losses.Text = "";
                        }
                        else
                        {
                            TeamID.Text = info.TeamID.ToString();
                            TeamName.Text = info.TeamName;
                            Coach.Text = info.Coach;
                            AssistantCoach.Text = info.AssistantCoach;
                            Wins.Text = info.Wins.ToString();
                            Losses.Text = info.Losses.ToString();
                        }
                    }
                    else
                    {
                        MessageLabel.Text = "Team ID must be greater than 0.";
                    }
                }
                else
                {
                    MessageLabel.Text = "Team ID must be a number.";
                }
            }
        }
    }
}