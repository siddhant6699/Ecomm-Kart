<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shop_single.aspx.cs" Inherits="ecommerce_kart.shop_single" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            left: 74%;
            top: 5%;
            width: 1058%;
            height: 110%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                
      <div class="site-navbar bg-white py-2">

      <div class="container">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a href="Home.aspx" class="js-logo-clone">Ecomm Kart</a>
            </div>
          </div>
          <div class="main-nav d-lg-block">
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <ul class="site-menu js-clone-nav d-lg-block">
                <li>
                  <a href="Home.aspx">Home</a>
                </li>
                
                <li class="has-children "><a href="#">Categories</a>
                    <ul class="dropdown">
                    <li><a href="Electronics.aspx">Electronics</a></li>
                    <li><a href="Mobile.aspx">Mobiles</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    <div>
     <asp:DataList ID="DataList1" runat="server" CellPadding="5" CellSpacing="5" Width="100%" >
      <ItemTemplate>
                   
        
        <div class="container">
            <div class="row">
            <div class="col-md-12">
                <div class="item-entry">
              
                     <asp:Image ID="Image1" runat="server" alt="Image" class="img-fluid" ImageUrl='<%# Eval("Img") %>' Width="50%" />              
             </br>
                </div>
             </div>
          <div class="col-md-12">
            <h2 class="text-black">
                </br>
                <asp:Label ID="Label4" runat="server" class="text-black" Text='<%# Eval("Name") %>'></asp:Label>
            </h2>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
            <p><strong class="text-primary h4"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("Price") %>'></asp:Label></strong></p>
          </div>
        </div>
      </div> 
      </ItemTemplate>
     </asp:DataList>
        <div class="container">
        <asp:Button ID="Button2" runat="server" Text="Buy" class="buy-now btn btn-sm height-auto px-4 py-3 btn-primary" OnClick="Buy_Click" />
        </div>
    </div>
        
    
    </form>
</body>
</html>