using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_kart
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Connection con = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            fillDS();
        }

        public void fillDS()
        {
            string query = "select * from tblProducts";
            DataList1.DataSource = con.selectDS(query);
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "link")
            {
                Label4.Text = ((LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton1")).Text;
                Session.Add("Pname", Label4.Text);
                Response.Redirect("shop_single.aspx");
            }
        }
    }
}