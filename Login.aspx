<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="edible.Login" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
    <link rel="stylesheet" href="register.css"/>
</head>  
<body>
    <div class="form-container">
       legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
        <h1 id="title"><u>Log into Your Account<u/></h1>
        <form id="form1" runat="server">
            <fieldset>
                <label>Email Address</label> 
                <br/> 
                    <input type="text" class="long-input" required id="email" name="email" runat="server"/>
                <br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Email Address" Font-Bold="True" Font-Names="Poppins" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label>Password</label>
                <br/>
                    <input type="Password" class="long-input" required id="pass" name="pass" runat="server"/>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Enter Password" Font-Bold="True" Font-Names="Poppins" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </fieldset>
            <label><a href="forgotpass"><u>Forgot Password?</u></a></label>
            <br />
            <asp:Button type="submit" class="login" id="login" name="login" runat="server" Text="Login" OnClick="login_Click"/>
            <label><a href="Registration.aspx"><u>Don't have an account?<br /> Register here</u></a></label>
        <br />
            <label><a href="AdminLogin.aspx"><u>Login as an Administrator</u></a></label>
        </form>
    </div>
</body>
</html>
