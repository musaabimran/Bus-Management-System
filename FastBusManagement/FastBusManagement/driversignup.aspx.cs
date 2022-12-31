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
    public partial class driversignup : System.Web.UI.Page

    {
        string connectionString1 = " Data Source = DESKTOP-384I4IC\\SQLEXPRESS;Initial Catalog = BusManagement; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkStudentExists())
            {

                Response.Write("<script>alert('Driver Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                //Response.Redirect("usersignup.aspx");
                signUpNewMember();
            }
        }
        bool checkStudentExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString1);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Driver where DID='" + TextBox6.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
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
        void AuditTrail1()
        {
            try
            {

                SqlConnection con = new SqlConnection(connectionString1);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd;


                cmd = new SqlCommand("INSERT INTO frontEndAudit(date,operation, tableName,userId) values( @date,@operation, @tableName,@userId)", con);
                DateTime now = DateTime.Now;
                cmd.Parameters.AddWithValue("@date", now);
                cmd.Parameters.AddWithValue("@operation", "INSERT");
                cmd.Parameters.AddWithValue("@tableName", "Student");
                cmd.Parameters.AddWithValue("@userId", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();

                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void signUpNewMember()
        {

            using (SqlConnection con = new SqlConnection(connectionString1))

            {

                con.Open();

                SqlCommand cmd = new SqlCommand("Insert into  Driver Values(@rolln,@name,@contact,@email,@add, @uname, @pass, @sat)", con);
                //TextBox6.Text = "";
                cmd.Parameters.AddWithValue("@rolln", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@name", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@uname", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@add", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@sat", "Driver");
                cmd.ExecuteNonQuery();

                AuditTrail1();

                Response.Write("<script>alert('Successful Signup');</script>");
                Response.Redirect("driverlogin.aspx");

            }
            /*catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }*/

        }
    }
}