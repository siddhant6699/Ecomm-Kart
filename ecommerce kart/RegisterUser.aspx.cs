using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_kart
{
    public partial class RegisterUser : System.Web.UI.Page
    {
        Connection con = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "insert into tblUsers(Email,Password) values ('" + txtEmail.Text + "','" + txtPassword.Text + "')";
            con.ExecuteQuery(query);

            Response.Redirect("Login.aspx");
        }
    }
}