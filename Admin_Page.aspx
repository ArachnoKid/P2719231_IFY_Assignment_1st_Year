<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Page.aspx.cs" Inherits="edible.Admin_Page" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Admin Access</title>
    <link rel="stylesheet" href="register.css"/>
</head>  
<body>
    <div class="form-container">
        <legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
        <h1 id="title"><u>Admin Access<u /></h1>
        <form id="form1" runat="server">
            <fieldset>
               <label> Item ID</label><br/> 
                    <input type="text" class="long-input" required id="fname" name="fname" runat="server"/>
                <br/>
                <label>Item name</label> 
                <br/>
                <input type="text" class="long-input" required id="lname" name="lname" runat="server"/> <u />
                <br/>
                </u>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Add" class="register" OnClick="Button1_Click"/><br />
                <br/>
                <asp:Button ID="Button2" runat="server" Text="Update" class="register" OnClick="Button2_Click"/><br />
                <br/>
                <asp:Button ID="Button3" runat="server" Text="Delete" class="register" OnClick="Button3_Click"/><br />
                <u />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Width="399px">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [items]"></asp:SqlDataSource>
                </u>
                <br/>
                </fieldset>
            <br />
            </form>
                </div>
    </body>
    </html>