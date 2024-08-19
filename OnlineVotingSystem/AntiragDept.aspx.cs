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
    public partial class AntiragDept : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Candidate_details where Department='Antirag'", con);
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


        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                {
                    GridViewRow row = GridView1.Rows[2];
                    string Department = row.Cells[2].Text;
                    string House = string.Empty;

                    foreach (ListItem item in RadioButtonList1.Items)
                    {
                        if (item.Selected)
                        {
                            House = item.Text;
                            break;
                        }
                    }

                    savevote(Department, House);
                    lblmessage.Text = "Your Vote Has Been Recorded";
                    lblmessage.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
        }
        void savevote(string dept, string house)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO vote( Department, House) VALUES(@Department, @House)", con);
                    cmd.Parameters.AddWithValue("@Department", dept);
                    cmd.Parameters.AddWithValue("@House", house);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}