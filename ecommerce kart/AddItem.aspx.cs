using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_kart
{
    public partial class AddItem : System.Web.UI.Page
    {
        Connection con = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            fileUpload.SaveAs(Server.MapPath("~/img/") + fileUpload.FileName);
            string path = "~/img/" + fileUpload.FileName;

            string query = "insert into tblProducts (Name,Price,Description,Img) values ('" + txtName.Text + "','" + txtPrice.Text + "','" + txtDes.Text + "','"+path+"')";
            con.ExecuteQuery(query);

            lblError.Text = "Product inserted successfully";
        }
    }
}