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
    public partial class Student : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-384I4IC\\SQLEXPRESS;Initial Catalog=BusManagement;Integrated Security=True";
        public static string SetValueForText0 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           

            try
                {
                        SqlConnection con = new SqlConnection(connectionString);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                     


                    SqlCommand cmd = new SqlCommand("select * from Student where  Username = '" + userlogin.SetValueForText1 + "' AND Password = '" + userlogin.SetValueForText2 + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            TextBox1.Text = dr.GetValue(1).ToString();
                            //SetValueForText0 = TextBox1.Text;
                            SetValueForText0 =dr.GetValue(1).ToString();

                            TextBox3.Text = dr.GetValue(0).ToString();
                            TextBox7.Text = dr.GetValue(5).ToString();
                            TextBox4.Text = dr.GetValue(6).ToString();
                            TextBox10.Text = dr.GetValue(3).ToString();
                            TextBox11.Text = dr.GetValue(2).ToString();
                            TextBox12.Text = dr.GetValue(4).ToString();

                        }
                        /*else
                        {
                            Response.Write("<script>alert('Invalid Credentials');</script>");
                        }*/
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }
         }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("booking.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("edituser.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("notification.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}