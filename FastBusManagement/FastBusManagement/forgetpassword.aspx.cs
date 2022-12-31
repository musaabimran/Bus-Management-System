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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-384I4IC\\SQLEXPRESS;Initial Catalog=BusManagement;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
               
                SqlCommand cmd = new SqlCommand("Update Driver SET  Password = '" + TextBox2.Text.Trim() + "' Where Username= '" + TextBox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();


                Response.Write("<script>alert('Successful Password Change');</script>");
                    
                    Response.Redirect("driverlogin.aspx");
                    //Response.Redirect("homepage.aspx");
                
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}