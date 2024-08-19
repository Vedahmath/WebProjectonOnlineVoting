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
    public partial class AddCand : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)//update
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Candidate_details SET Full_name=@Full_name,  Department=@Department, House=@House WHERE Candidate_ID='" + TextBox2.Text.Trim() + "' ", con);

                cmd.Parameters.AddWithValue("@Full_name", TextBox1.Text.Trim());

                cmd.Parameters.AddWithValue("@Department", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@House", DropDownList2.SelectedItem.Value);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Candidate UPDATED SUCCESSFULLY');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)//add
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Candidate_details(Full_name,Candidate_ID,Department,House) VALUES(@Full_name,@Candidate_ID,@Department,@House)", con);

                cmd.Parameters.AddWithValue("@Full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Candidate_ID", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Department", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@House", DropDownList2.SelectedItem.Value);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Candidate ADDED SUCCESSFULLY');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        

    }
}