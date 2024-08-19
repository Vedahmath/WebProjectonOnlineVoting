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
    public partial class AdminCandidateManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        //go button link
        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Candidate_details where Department='" + DropDownList1.SelectedItem.Value + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable t = new DataTable();
                da.Fill(t);
                GridView1.DataSource = t;
                GridView1.DataBind();
              // con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

           
        }
        
    }
}