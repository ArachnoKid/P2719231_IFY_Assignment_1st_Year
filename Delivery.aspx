<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delivery.aspx.cs" Inherits="edible.Delivery" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Delivery</title>
    <link rel="stylesheet" href="register.css"/>
</head>  
<body>
    <div class="form-container">
        <legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
        <h1 id="title"><u>Delivery</u></h1>
        <form id="form1" runat="server">
            <fieldset>
                <label>
                <br />
                Receiver's name</label> 
                <br/> 
                    <input type="text" class="long-input" required id="rname" name="rname" runat="server"/>
                <br/>
                <label>Address</label>
                <br/>
                    <input type="text" class="long-input" required id="address" name="address" runat="server"/>
                <br/>
                <label>Postal Code</label>
                <br/>
                    <input type="text" class="long-input" required id="po" name="po" runat="server"/>
                <br/>
                <label>Email</label>
                <br/>
                    <input type="email" class="long-input" required id="email" name="email" runat="server"/>
                <br/>
                <label>Contact No.</label>
                <br/>
                    <input type="text" class="long-input" required id="contact" name="contact" runat="server"/>
                <br/>
               </fieldset>
            <br />
            <asp:Button type="submit" class="register" id="save" name="Save" onclick="saveButton_Click"  runat="server" Text="Save"/>
        </form>
    </div>
</body>
</html>
