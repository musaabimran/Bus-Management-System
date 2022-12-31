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
    public partial class StdList : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-384I4IC\\SQLEXPRESS;Initial Catalog=BusManagement;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Text = Confirmation.SetValueForText1;
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmdd = new SqlCommand("SELECT Name as Name, address as Address , Routeare as Route_Area from driverinfo where driverinfo.Routeare = '"+ Confirmation.SetValueForText1 + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmdd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();

                SqlCommand cmd = new SqlCommand("Select Bus.BId from dbo.Bus inner join Route on route.Routeare = '" +Confirmation.SetValueForText1+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox7.Text = dr.GetValue(0).ToString();

                }


                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}