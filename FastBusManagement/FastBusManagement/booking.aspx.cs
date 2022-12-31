using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Web.Routing;
using System.Reflection.Emit;

namespace FastBusManagement
{
    public partial class booking : System.Web.UI.Page
    {
        string connectionString1 = " Data Source = DESKTOP-384I4IC\\SQLEXPRESS;Initial Catalog = BusManagement; Integrated Security = True";
        public static string SetValueForText1 = "";
        public static string SetValueForText2 = "";
        public static string SetValueForText3 = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SetValueForText1 = DropDownList1.SelectedItem.Value;
            TextBox7.Text = SetValueForText1;
            try
            {
                SqlConnection con = new SqlConnection(connectionString1);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("Select name from Driver where DID IN( select Bus.DriverId from Bus where BID in (select BId from Route Where Routeare = '" + SetValueForText1 + "'));", con);
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    TextBox5.Text= dr.GetValue(0).ToString();
                }
                dr.Close();


                cmd = new SqlCommand("select BId from Route Where Routeare = '" + SetValueForText1 +"';", con);
                dr = cmd.ExecuteReader();
              
                while (dr.Read())
                {
                    TextBox6.Text= dr.GetValue(0).ToString();
                }
                dr.Close();

                cmd = new SqlCommand("Insert into driverinfo values('"+ Student.SetValueForText0 +"','" + SetValueForText1+"','" + SetValueForText1 +"');", con);
                dr = cmd.ExecuteReader();

                dr.Close();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }



                
           
                 

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}