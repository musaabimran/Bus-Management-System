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
    public partial class SendNotification : System.Web.UI.Page
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
                    SqlCommand cmd;


                    cmd = new SqlCommand("INSERT INTO Notifications values( @TEXT,@date,@SupervisorId)", con);
                    DateTime now = DateTime.Now;
                    cmd.Parameters.AddWithValue("@date", now);
                    cmd.Parameters.AddWithValue("@TEXT", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@SupervisorId", "0007");
                
                cmd.ExecuteNonQuery();
                    




                con.Close();
                
                    Response.Write("<script>alert('NOTIFICATION SENT');</script>");
                AuditTrail1();



            }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
           
        }
        void AuditTrail1()
        {
            try
            {

                SqlConnection con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd;


                cmd = new SqlCommand("INSERT INTO dbo.Notificationsaudit(date,operation, tableName,userId) values( @date,@operation, @tableName,@userId)", con);
                DateTime now = DateTime.Now;
                cmd.Parameters.AddWithValue("@date", now);
                cmd.Parameters.AddWithValue("@operation", "INSERT");
                cmd.Parameters.AddWithValue("@tableName", "Notifications");
                cmd.Parameters.AddWithValue("@userId", TextBox3.Text.Trim());
                cmd.ExecuteNonQuery();

                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }
}