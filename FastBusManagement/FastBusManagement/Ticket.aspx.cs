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
    public partial class Ticket : System.Web.UI.Page
    {
        string connectionString1 = " Data Source = DESKTOP-384I4IC\\SQLEXPRESS;Initial Catalog = BusManagement; Integrated Security = True";
        public static string SetValueForText2 = "";
        public static string SetValueForText3 = "";

        protected void Page_Load(object sender, EventArgs e)
        {


            data();
            TextBox5.Text =  booking.SetValueForText1;
            TextBox6.Text =  SetValueForText2;
            TextBox7.Text =  SetValueForText3;
            TextBox8.Text =  Student.SetValueForText0;

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        void data()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString1);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("Select name from Driver where DID IN( select Bus.DriverId from Bus in (select BId from Route Where Routeare = " + booking.SetValueForText1 + "));", con);
                SqlDataReader rddr = cmd.ExecuteReader();

                while (rddr.Read())
                {
                    SetValueForText2 = rddr.GetString(0);
                }

                                
                cmd = new SqlCommand("select * from Student", con);
                SetValueForText3 = cmd.ExecuteScalar().ToString();
                
                rddr = cmd.ExecuteReader();

                while (rddr.Read())
                {
                    SetValueForText3 = rddr.GetString(0);
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }
    }
}