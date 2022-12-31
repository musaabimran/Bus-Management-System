using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FastBusManagement
{
    public partial class editdriver : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-384I4IC\\SQLEXPRESS;Initial Catalog=BusManagement;Integrated Security=True";
        SqlCommand cmd;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

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



                    cmd = new SqlCommand("SELECT * from Driver where DID='" + TextBox5.Text.Trim() + "';", con);
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
                cmd.Parameters.AddWithValue("@tableName", "Driver");

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
                cmd.Parameters.AddWithValue("@tableName", "Driver");

                cmd.Parameters.AddWithValue("@userId", TextBox5.Text);
                cmd.ExecuteNonQuery();




                con.Close();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            //cmd = new SqlCommand("Update Driver Values(@rolln,@name,@contact,@email,@add,@uname, @pass, @sat)", con);
            cmd = new SqlCommand(" Delete from Driver where DID = @rolln", con);
            cmd.Parameters.AddWithValue("@rolln", TextBox5.Text.Trim());
            cmd.ExecuteNonQuery();
            AuditTrail2();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            //cmd = new SqlCommand("Update Driver Values(@rolln,@name,@contact,@email,@add,@uname, @pass, @sat)", con);
            cmd = new SqlCommand("Update Driver SET Name= @name, ContactNumber = @contact,  email = @email ,address = @add,  Username = @uname,  Password = @pass,  status = @sat where DID = @rolln", con);



            cmd.Parameters.AddWithValue("@rolln", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@name", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@uname", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@pass", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@email", TextBox9.Text.Trim());
            cmd.Parameters.AddWithValue("@contact", TextBox8.Text.Trim());
            cmd.Parameters.AddWithValue("@add", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@sat", "Driver");
            cmd.ExecuteNonQuery();
            AuditTrail1();
        }

        protected void go_Click(object sender, EventArgs e)
        {
            getUserPersonalDetails();
        }
    }
}