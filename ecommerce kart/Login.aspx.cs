using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_kart
{
    public partial class Login : System.Web.UI.Page
    {
        Connection con = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select count(*) from tblUsers where Email='" + txtEmail.Text + "' and Password='" + txtPassword.Text + "'";
            int result = int.Parse(con.selectScaler(query));

            if (result == 1)
            {
                Response.Redirect("Home.aspx");
            }

            else
            {
                Response.Write("<script>alert('Invalid User');</script>");
            }
        }
    }
}