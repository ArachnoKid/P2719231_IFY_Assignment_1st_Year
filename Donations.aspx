<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donations.aspx.cs" Inherits="edible.Donations" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Donations</title>
    <link rel="stylesheet" href="register.css"/>
</head>
<body>
    <h1 id="response" name="response" runat="server"></h1>
    <div class="form-container">
        <legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
        <h1 id="title">Donations</h1>
        <form action="#" method="post" runat="server">
            <fieldset>
                <legend>Personal Info</legend>
                <label>Donator's name</label><br>
                    <input type="text" class="long-input" required id="Dname" name="Dname" runat="server"/>
                <br/>
                <br/>
                <label>Charity</label><br/>
                    <select id="charity" name="charity" runat="server">
                        <option>None</option>
                        <option>Feed The Hungry Worldwide</option>
                        <option>Save The Polar Bears Worldwide</option>
                        <option>Feed The Homeless Worldwide</option>
                    </select>
                    <br/>
                    <br/>
                <label>Amount</label><br/>
                    <input type="number" id="amount_input" name="amount_input" placeholder="0.00" runat="server"/>
                    <select id="currency" name="currency" runat="server">
                        <option>USD</option>
                        <option>GBP</option>
                        <option>EUR</option>
                    </select>
                <br/>
                <br />
        </fieldset>
        <br/>
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
        <asp:Button type="submit" class="register" id="donateButton" name="donateButton" onclick="donateButton_Click"  runat="server" Text="Donate"/>
        </form>
    </div>
</body>
</html>
