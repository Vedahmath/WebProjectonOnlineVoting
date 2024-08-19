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
    public partial class StudentSignUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkuserExists())
            {
                Response.Write("<script>alert('User already exist with this UserID,Try other ID');</script>");
            }
            else
            {
                signUpNewUser();
            }
        }


        bool checkuserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                { con.Open(); }
                SqlCommand cmd1 = new SqlCommand("SELECT * FROM std_reg WHERE userid='" + TextBox6.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void signUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                { con.Open(); }
                SqlCommand cmd = new SqlCommand("INSERT INTO std_reg(stdname,stdid,course,sem,email,mobile,faddr,userid,password)" +
                    " VALUES(@stdname,@stdid,@course,@sem,@email,@mobile,@faddr,@userid,@password)", con);
                cmd.Parameters.AddWithValue("@stdname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@stdid", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@course", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@sem", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@mobile", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@faddr", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@userid", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox7.Text.Trim());
                

                cmd.ExecuteNonQuery();
                con.Close();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            Response.Write("<script>alert('YOU ARE REGISTERED TO CAST VOTE,GO TO USER LOGIN TO CAST VOTE');</script>");


        }
    }
}