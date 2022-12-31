using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Net;
using System.Security.Cryptography;

namespace FastBusManagement
{
    public partial class edituser : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-384I4IC\\SQLEXPRESS;Initial Catalog=BusManagement;Integrated Security=True";
        SqlCommand cmd;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void AuditTrail1()
        {
            try
            {

                con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }



                cmd = new SqlCommand("INSERT INTO frontEndAudit(date,operation, tableName,userId) values( @date,@operation, @tableName,@userId)", con);
                DateTime now = DateTime.Now;
                cmd.Parameters.AddWithValue("@date", now);
                cmd.Parameters.AddWithValue("@operation", "UPDATE");
                cmd.Parameters.AddWithValue("@tableName", "STUDENT");

                cmd.Parameters.AddWithValue("@userId", TextBox5.Text);
                cmd.ExecuteNonQuery();




                con.Close();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void AuditTrail2()
        {
            try
            {

                con = new SqlConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }



                cmd = new SqlCommand("INSERT INTO frontEndAudit(date,operation, tableName,userId) values( @date,@operation, @tableName,@userId)", con);
                DateTime now = DateTime.Now;
                cmd.Parameters.AddWithValue("@date", now);
                cmd.Parameters.AddWithValue("@operation", "DELETE");
                cmd.Parameters.AddWithValue("@tableName", "STUDENT");

                cmd.Parameters.AddWithValue("@userId", TextBox5.Text);
                cmd.ExecuteNonQuery();




                con.Close();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getUserPersonalDetails()
        {
            if (TextBox5.Text == "")
            {
                Response.Write("<script>alert('Id can not be blank!!!');</script>");
            }
            else
            {
                try
                {
                    con = new SqlConnection(connectionString);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                   


                    cmd = new SqlCommand("SELECT * from Student where SID='" + TextBox5.Text.Trim() + "';", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        TextBox6.Text = dr.GetValue(1).ToString();
                        TextBox1.Text = dr.GetValue(6).ToString();
                        TextBox8.Text = dr.GetValue(2).ToString();
                        TextBox9.Text = dr.GetValue(3).ToString();
                        TextBox2.Text = dr.GetValue(4).ToString();
                        TextBox3.Text = dr.GetValue(5).ToString();

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
        }

        protected void go_Click(object sender, EventArgs e)
        {
            getUserPersonalDetails();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            //cmd = new SqlCommand("Update Driver Values(@rolln,@name,@contact,@email,@add,@uname, @pass, @sat)", con);
            cmd = new SqlCommand("Update Student SET Name= @name, ContactNumber = @contact,  email = @email ,address = @add,  Username = @uname,  Password = @pass,  status = @sat where SID = @rolln", con);



            cmd.Parameters.AddWithValue("@rolln", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@name", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@uname", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@pass", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@email", TextBox9.Text.Trim());
            cmd.Parameters.AddWithValue("@contact", TextBox8.Text.Trim());
            cmd.Parameters.AddWithValue("@add", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@sat", "Student");
            cmd.ExecuteNonQuery();
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            //cmd = new SqlCommand("Update Driver Values(@rolln,@name,@contact,@email,@add,@uname, @pass, @sat)", con);
            cmd = new SqlCommand(" Delete from Student where SID = @rolln", con);
            cmd.Parameters.AddWithValue("@rolln", TextBox5.Text.Trim());
            cmd.ExecuteNonQuery();
            AuditTrail2();
        }
    }
}