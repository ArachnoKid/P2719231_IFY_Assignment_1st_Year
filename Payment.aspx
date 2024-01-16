<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="edible.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <link rel="stylesheet" href="register.css"/>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="form-container">
            <legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
            <fieldset>
                <legend>Card Details</legend>
            <label>Payment Method</label><br/>
                    <select id="PayMethod" name="PayMethod" runat="server">
                        <option>Debit</option>
                        <option>Credit</option>
                    </select>
            <br/>
            <br/>
            <label>Name on Card</label><br/>
                    <input type="text" class="long-input" id="CardHolderName" name="CardHolderName" runat="server"/>
            <br/>
            <br/>
            <label>Card No.</label><br/>
                    <input type="text" class="long-input" placeholder="e.g. 1234 5678 9101" id="CardNo" name="CardNo" runat="server"/>
            <br/>
            <br/>
            <label>Expiry Date</label><br/>
                    <input type="text" class="short-input" placeholder="01/11" id="ExpDate" name="ExpDate" runat="server"/>
            <br/>
            <br/>
            <label>Security Code</label><br/>
                    <input type="text" class="short-input" placeholder="123" id="SecNo" name="SecNo" runat="server"/>
            <br/>
            <br/>
        </fieldset> 
        <br/>
            <input type="checkbox" required/>    
                <label>I Agree with Ts&Cs and Privacy Policy</label> 
        <asp:Button type="submit" class="donate" id="payButton" name="payButton" onclick="payButton_Click"  runat="server" Text="Pay" CssClass="register"/>
        </div>
    </form>
</body>
</html>
