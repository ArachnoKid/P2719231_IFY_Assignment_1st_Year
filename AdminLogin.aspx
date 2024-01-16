<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="edible.AdminLogin" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login As Admin</title>
    <link rel="stylesheet" href="register.css"/>
</head>  
<body>
    <div class="form-container">
        <legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
        <h1 id="title"><u>Log in As an Administrator<u/></h1>
        <form id="form1" runat="server">
            <fieldset>
                <label>Login ID</label> 
                <br/> 
                    <input type="text" class="long-input" required id="email" name="email" runat="server"/>
                <br />
                <label>Password</label>
                <br/>
                    <input type="Password" class="long-input" required id="pass" name="pass" runat="server"/>
                <br />
                <br />
            </fieldset>
            <asp:Button type="submit" class="login" id="login" name="login" runat="server" Text="Login" OnClick="login_Click"/>
            </form>
    </div>
</body>
</html>
