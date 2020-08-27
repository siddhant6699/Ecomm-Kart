using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_kart
{
    public partial class Buy : System.Web.UI.Page
    {
        Connection con = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Pname"] != null)
            {
                string name = Session["Pname"].ToString();
                lblProduct.Text = name;
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query="insert into tblOrders(Name,Phone,Address,Product) values ('"+txtName.Text+"','"+txtPhone.Text+"','"+txtAddress.Text+"','"+lblProduct.Text+"')";
            con.ExecuteQuery(query);

            Response.Redirect("Home.aspx");
        }
    }
}