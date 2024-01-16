<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_Us.aspx.cs" Inherits="edible.Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Edible</title>

    <link rel="stylesheet" href="register.css">

</head>
<body>
    <div class="form-container">
        <legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
        <h1 id="title"><u>Contact Us</u></h1>
        <form action="#" method="post" runat="server">
            <fieldset>
            <label>Full Name</label> 
                <br/> 
               <input type="text" class="long-input" required id="name" name="name" runat="server"/>
                <br />
                <br/>
                <label>Email Address</label> 
                <br/>
                <input type="text" class="long-input" required id="email" name="email" runat="server"/>
                <br />
                <br/>
                <label>Contact No.</label>
            <br />
            <input type="text" class="long-input" required id="number" name="number" runat="server"/>
                <br />
                <label>
                <br />
                Subject</label>
            <br />
            <input type="text" class="long-input" required id="subject" name="subject" runat="server"/>
                <br />
                <br/>
            <label>Enter Your Message</label>
            <br />
            <input type="text" class="extra-long-input" required id="message" name="message" runat="server"/>
                <br />
                <br/>
        </fieldset>  
       <asp:Button type="submit" ID="Button1" name="Button1" OnClick="Button1_Click" runat="server" Text="Send Message" Class="register" />
        </form>
    </div>
</body>
</html>