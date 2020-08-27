using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_kart
{
    public partial class shop_single : System.Web.UI.Page
    {
        Connection con = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Pname"] != null)
            {
               
                string name = Session["Pname"].ToString();
                Label2.Text = name;

                fillDS();
            }
            else {
                Response.Redirect("Home.aspx");
            }
        }

        public void fillDS()
        {
            string data = Label2.Text;
            string query = "select * from tblProducts where name = '" + data + "' ";
            DataList1.DataSource = con.selectDS(query);
            DataList1.DataBind();
        }

        protected void Buy_Click(object sender, EventArgs e)
        {
            Session.Add("name" , Label2.Text);
            Response.Redirect("Buy.aspx");
        }
    }
}