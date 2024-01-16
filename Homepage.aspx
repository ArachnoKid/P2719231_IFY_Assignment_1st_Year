<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="edible.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Edible</title>

    <link rel="stylesheet" href="Homepage.css">

</head>
<body>
    <form runat="server">
    <!-- header section starts  -->

    <header>
      
            <div class="header-1">

            <img src="Logo.png" class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="44px" ImageUrl="~/blue_shopping_cart_icon_vector_280786.jpg" OnClick="ImageButton2_Click" Width="52px" />
                <label for="search-box" class="fas fa-search"></label>
            </div>
      
        <div class="header-2">

            <div id="menu-bar" class="fas fa-bars"></div>

            <nav class="navbar">
                <a href="#home">home</a>
                <a href="#product">product</a>
                <a href="Delivery.aspx">deliveries</a>
                <a href="#deal">deal</a>
                <a href="Contact_Us.aspx">contact</a>
                <a href="Applications.aspx">career</a>
                <a href="Donations.aspx">donations</a>
            </nav>

            <div class="icons">
                <a href="#" class="fas fa-shopping-cart"></a>
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-user-circle"></a>
            </div>
            <div class="header-login" style="font-family: Poppins; background-color: #FFFFFF; font-size: 20px; text-decoration: underline; float: right;">
               
               <center><a href="Registration.aspx"> Register </a> / <a href="Login.aspx">Login</a></center>
                <asp:Button ID="Button3" runat="server" Text="Log Out" CssClass="btn" OnClick="Button3_Click" />
                <br />
               
            </div>
        </div>

    </header>

    <!-- header section ends -->
    <!-- home section starts  -->

    <section class="home" id="home">

        <div class="image">
            <img src="images/home-img.png" alt="">
        </div>

        <div class="content">
            <span>fresh and organic</span>
            <h3>your daily need products</h3>
            <a href="#" class="btn">get started</a>
        </div>

    </section>

    <!-- home section ends -->
    <!-- banner section starts  -->

    <section class="banner-container">

        <div class="banner">
            <img src="images/banner-1.jpg" alt="">
            <div class="content">
                <h3>special offer</h3>
                <p>upto 45% off</p>
                <a href="#" class="btn">check out</a>
            </div>
        </div>

        <div class="banner">
            <img src="images/banner-2.jpg" alt="">
            <div class="content">
                <h3>limited offer</h3>
                <p>upto 50% off</p>
                <a href="#" class="btn">check out</a>
            </div>
        </div>

    </section>

    <!-- banner section ends -->
    <!-- category section starts  -->
    <section class="product" id="product">
   <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="DodgerBlue" NavigateUrl="~/My Cart.aspx">View Cart</asp:HyperLink>
        <asp:DataList ID="DataList1" runat="server" BorderColor="Tan" BorderWidth="5px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" Height="50px" OnItemCommand="Datalist1_itemCMD" RepeatColumns="3" RepeatDirection="Horizontal" Width="360px">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                <table class="auto-style1" align="center" style="font-family: poppins; color: #0000FF; font-size: 20px;">
                    <tr>
                        <td class="auto-style2">Product ID :
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Poppins" ForeColor="Blue" Text='<%# Eval("proID", "{0}") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Product Name :
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Poppins" ForeColor="Blue" Text='<%# Eval("proName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="240px" Width="240px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Price :
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Poppins" ForeColor="Blue" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Quantity
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Selected="True">1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("proID")%>' CommandName="addto cart" Height="68px" ImageUrl="~/images/360_F_26124443_QQVqQWwQGQFqBQg9QACdpktxYQ7xIRkY.jpg" Width="229px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cart]"></asp:SqlDataSource>
        <br />
   </section>
    <!-- deal section starts  -->

    <section class="deal" id="deal">

        <div class="content">
            &nbsp;<img src="images/deal-bg.jpg" alt="Display the image" width="1027" height="310"><br />
            <h3 class="title">deal of the day</h3>
            <p>Limited Time Deals!!!</p>
            <p>Grab Before the time Run Out!!!</p>

            <div class="count-down">
                <div class="box">
                    <h3 id="day">00</h3>
                    <span>day</span>
                </div>
                <div class="box">
                    <h3 id="hour">00</h3>
                    <span>hour</span>
                </div>
                <div class="box">
                    <h3 id="minute">00</h3>
                    <span>minute</span>
                </div>
                <div class="box">
                    <h3 id="second">00</h3>
                    <span>second</span>
                </div>
            </div>

            <a href="#" class="btn">check the deal</a>

        </div>

    </section>

    <!-- deal section ends -->
    <!-- newsletter section starts  -->

    <section class="newsletter">
        
        <h3>subscribe us for latest updates</h3>

           <div class="inputBox">
                &nbsp;<asp:TextBox ID="register" runat="server" Height="44px" Width="960px" Text="Enter Email Address"></asp:TextBox>
            </div>
            <asp:Button type="submit" id="registerbutton" name="Button2" onclick="registerbutton_Click"  runat="server" Text="Register" Class="btn"/>

    </section>

    <!-- newsletter section ends -->
    <!-- footer section starts  -->

    <section class="footer">

        <div class="box-container">

            <div class="box">
                <img src="Logo.png" class="auto-style1" />
                <p>!!!One of the best option for leicester's people for buying every kinds of grocery products with cheap prices(including either weekly or monthly offers!!!)</p>
                <div class="share">
                    <a href="www.facebook.com"><img src="images/logo-facebook-facebook-logo-transparent-png-pictures-icons-and-0.png" height="40" width="40" /></a>
                    <a href="www.twitter.com"><img src="images/Twitter.png" height="40" width="40" /></a>
                    <a href="www.instagram.com"><img src="images/Insta.jfif" height="40" width="40" /></a>
                    <a href="www.linkedin.com"><img src="images/Linkedin.png" height="40" width="40" /></a>
                </div>
            </div>

            <div class="box">
                <h3>our location</h3>
                <div class="links">
                    <p>69 Hell's Kitchen <br>Leicester, Leicestershire</p>
                </div>
            </div>

            <div class="box">
                <h3>quick links</h3>
                <div class="links">
                    <a href="#home">home</a>
                    <a href="#product">product</a>
                    <a href="#deal">deal</a>
                    <a href="Contact_Us.aspx">contact</a>
                    <a href="Applications.aspx">Careers</a>
                    <a href="Donations.aspx">Donation</a>
                </div>
            </div>
        </div>

        <h1 class="credit"> created by <span> TEAM IJPR </span> | @ all rights reserved! </h1>

    </section>

    <!-- footer section ends -->
    <!-- custom js file link  -->
    <script src="script.js"></script>
</form>

</body>
</html>