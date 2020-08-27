<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Electronics.aspx.cs" Inherits="ecommerce_kart.Electronics" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div>
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

    <div>
         <div class="container">
        <div class="row">
          <div class="title-section col-12">
            <h2 class="text-uppercase">Electronics</h2>
              <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
          </div>
        </div>
             <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
             
          <asp:DataList ID="DataList1" runat="server" CellPadding="10" RepeatColumns="3" width="100%" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
               <div class="row">
                  <div class="col-lg-12 col-md-12 item-entry mb-12">
                  <div>
                        <asp:Image ID="Image1" runat="server" class="img-fluid" alt="Image" CommandName="link" ImageUrl='<%# Eval("Img") %>' Width="327px" Height="200px" />
                  </div>
                <h2 class="item-title">
                   <div>

                       <asp:LinkButton ID="LinkButton1" runat="server" CommandName="link" Text='<%# Eval("Name") %>' ></asp:LinkButton>
                       <br>
                   </br>

                       <asp:Label ID="Label3"  class="item-price" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                   </div>
                    <h2></h2>
                </h2>
                 </div>
              </div>
                  </ItemTemplate>
              </asp:DataList>
             </div>
    </div>
        </div>
        </div>
    </form>
</body>
</html>
