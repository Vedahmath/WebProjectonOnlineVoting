using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVotingSystem
{
    public partial class ManageCandidates : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCand.aspx");
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCand.aspx");
            GridView1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try 
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM Candidate_details WHERE Candidate_ID='" + TextBox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //Response.Write("<script>alert('Teacher Deleted Successfully')</script>");
                lblMessage.Text = "This Candidate ID has been deleted successfully.";
                lblMessage.CssClass = "success-message";
                lblMessage.Visible = true;
                clearform();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
               
            }
        }
        void clearform()
        {
            TextBox1.Text = "";
        }

    }
}