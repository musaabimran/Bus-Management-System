using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FastBusManagement
{
    public partial class driver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-384I4IC\\SQLEXPRESS;Initial Catalog=BusManagement;Integrated Security=True";

            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }



                SqlCommand cmd = new SqlCommand("select * from Driver where  Username = '" + driverlogin.SetValueForText1 + "' AND Password = '" + driverlogin.SetValueForText2 + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr.GetValue(1).ToString();
                    TextBox3.Text = dr.GetValue(0).ToString();
                    TextBox7.Text = dr.GetValue(5).ToString();
                    TextBox4.Text = dr.GetValue(6).ToString();
                    TextBox10.Text = dr.GetValue(3).ToString();
                    TextBox11.Text = dr.GetValue(2).ToString();
                    TextBox12.Text = dr.GetValue(4).ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }




            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Confirmation.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("editdriver.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("notification.aspx");
        }
    }
    }
