using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVotingSystem
{
    public partial class ViewResult : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    if (DropDownList1.SelectedItem.Value == "Academic")
                    {

                        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Academic' And House='Blue'", con);
                        int count = (int)cmd.ExecuteScalar();
                        SqlCommand cmd1 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Academic' And House='Green'", con);
                        int count1 = (int)cmd1.ExecuteScalar();
                        SqlCommand cmd2 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Academic' And House='Red'", con);
                        int count2 = (int)cmd2.ExecuteScalar();
                        SqlCommand cmd3 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Academic' And House='Yellow'", con);
                        int count3 = (int)cmd3.ExecuteScalar();


                        Chart1.Series["Series1"].Points.Add(count);
                        Chart1.Series["Series1"].Points[0].Color = Color.Blue;
                        Chart1.Series["Series1"].Points[0].AxisLabel = "Blue";
                        Chart1.Series["Series1"].Points[0].LegendText = count.ToString();


                        Chart1.Series["Series1"].Points.Add(count1);
                        Chart1.Series["Series1"].Points[1].Color = Color.DarkGreen;
                        Chart1.Series["Series1"].Points[1].AxisLabel = "Green";

                        Chart1.Series["Series1"].Points.Add(count2);
                        Chart1.Series["Series1"].Points[2].Color = Color.Red;
                        Chart1.Series["Series1"].Points[2].AxisLabel = "Red";

                        Chart1.Series["Series1"].Points.Add(count3);
                        Chart1.Series["Series1"].Points[3].Color = Color.Yellow;
                        Chart1.Series["Series1"].Points[3].AxisLabel = "Yellow";
                    }

                    else if (DropDownList1.SelectedItem.Value == "Cultural")
                    {

                        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Cultural' And House='Blue'", con);
                        int count = (int)cmd.ExecuteScalar();
                        SqlCommand cmd1 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Cultural' And House='Green'", con);
                        int count1 = (int)cmd1.ExecuteScalar();
                        SqlCommand cmd2 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Cultural' And House='Red'", con);
                        int count2 = (int)cmd2.ExecuteScalar();
                        SqlCommand cmd3 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Cultural' And House='Yellow'", con);
                        int count3 = (int)cmd3.ExecuteScalar();


                        Chart1.Series["Series1"].Points.Add(count);
                        Chart1.Series["Series1"].Points[0].Color = Color.Blue;
                        Chart1.Series["Series1"].Points[0].AxisLabel = "Blue";
                        Chart1.Series["Series1"].Points[0].LegendText = count.ToString();


                        Chart1.Series["Series1"].Points.Add(count1);
                        Chart1.Series["Series1"].Points[1].Color = Color.DarkGreen;
                        Chart1.Series["Series1"].Points[1].AxisLabel = "Green";

                        Chart1.Series["Series1"].Points.Add(count2);
                        Chart1.Series["Series1"].Points[2].Color = Color.Red;
                        Chart1.Series["Series1"].Points[2].AxisLabel = "Red";

                        Chart1.Series["Series1"].Points.Add(count3);
                        Chart1.Series["Series1"].Points[3].Color = Color.Yellow;
                        Chart1.Series["Series1"].Points[3].AxisLabel = "Yellow";
                    }

                    else if (DropDownList1.SelectedItem.Value == "Antirag")
                    {

                        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Antirag' And House='Blue'", con);
                        int count = (int)cmd.ExecuteScalar();
                        SqlCommand cmd1 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Antirag' And House='Green'", con);
                        int count1 = (int)cmd1.ExecuteScalar();
                        SqlCommand cmd2 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Antirag' And House='Red'", con);
                        int count2 = (int)cmd2.ExecuteScalar();
                        SqlCommand cmd3 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Antirag' And House='Yellow'", con);
                        int count3 = (int)cmd3.ExecuteScalar();


                        Chart1.Series["Series1"].Points.Add(count);
                        Chart1.Series["Series1"].Points[0].Color = Color.Blue;
                        Chart1.Series["Series1"].Points[0].AxisLabel = "Blue";
                        Chart1.Series["Series1"].Points[0].LegendText = count.ToString();


                        Chart1.Series["Series1"].Points.Add(count1);
                        Chart1.Series["Series1"].Points[1].Color = Color.DarkGreen;
                        Chart1.Series["Series1"].Points[1].AxisLabel = "Green";

                        Chart1.Series["Series1"].Points.Add(count2);
                        Chart1.Series["Series1"].Points[2].Color = Color.Red;
                        Chart1.Series["Series1"].Points[2].AxisLabel = "Red";

                        Chart1.Series["Series1"].Points.Add(count3);
                        Chart1.Series["Series1"].Points[3].Color = Color.Yellow;
                        Chart1.Series["Series1"].Points[3].AxisLabel = "Yellow";
                    }

                    else if (DropDownList1.SelectedItem.Value == "Sports")
                    {

                        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Sports' And House='Blue'", con);
                        int count = (int)cmd.ExecuteScalar();
                        SqlCommand cmd1 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Sports' And House='Green'", con);
                        int count1 = (int)cmd1.ExecuteScalar();
                        SqlCommand cmd2 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Sports' And House='Red'", con);
                        int count2 = (int)cmd2.ExecuteScalar();
                        SqlCommand cmd3 = new SqlCommand("SELECT COUNT(*) FROM vote WHERE Department='Sports' And House='Yellow'", con);
                        int count3 = (int)cmd3.ExecuteScalar();


                        Chart1.Series["Series1"].Points.Add(count);
                        Chart1.Series["Series1"].Points[0].Color = Color.Blue;
                        Chart1.Series["Series1"].Points[0].AxisLabel = "Blue";
                        Chart1.Series["Series1"].Points[0].LegendText = count.ToString();


                        Chart1.Series["Series1"].Points.Add(count1);
                        Chart1.Series["Series1"].Points[1].Color = Color.DarkGreen;
                        Chart1.Series["Series1"].Points[1].AxisLabel = "Green";

                        Chart1.Series["Series1"].Points.Add(count2);
                        Chart1.Series["Series1"].Points[2].Color = Color.Red;
                        Chart1.Series["Series1"].Points[2].AxisLabel = "Red";

                        Chart1.Series["Series1"].Points.Add(count3);
                        Chart1.Series["Series1"].Points[3].Color = Color.Yellow;
                        Chart1.Series["Series1"].Points[3].AxisLabel = "Yellow";
                    }
                    con.Close();
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}