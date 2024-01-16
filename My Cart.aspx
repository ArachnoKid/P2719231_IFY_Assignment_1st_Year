<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="My Cart.aspx.cs" Inherits="WebApplication1.My_Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Cart</title>
    <link rel="stylesheet" href="Homepage.css"/>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Poppins" ForeColor="Blue" Text="My Shopping Cart" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="DodgerBlue" NavigateUrl="~/Homepage.aspx" Font-Size="X-Large">Continue shopping...</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="911px" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="SL No." />
                <asp:BoundField DataField="proID" HeaderText="Product ID" />
                <asp:BoundField DataField="proName" HeaderText="Product Name" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Product Image">
                </asp:ImageField>
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <div class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay" CssClass="register" />
        </div>
    </form>
</body>
</html>
