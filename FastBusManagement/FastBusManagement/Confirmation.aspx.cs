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
    public partial class Confirmation : System.Web.UI.Page
    {
      
        public static string SetValueForText1 = "";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
                SetValueForText1 = DropDownList1.SelectedItem.Value;
                Response.Redirect("StdList.aspx");




        }
    }
}