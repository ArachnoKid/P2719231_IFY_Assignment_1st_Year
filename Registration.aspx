<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="edible.Registration" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Registration</title>
    <link rel="stylesheet" href="register.css"/>
</head>  
<body>
    <div class="form-container">
         <legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
        <h1 id="title"><u>Registration</u></h1>
        <form action="#" method="post" runat="server">
            <fieldset>
                <label>First name</label> 
                <br/> 
                    <input type="text" class="long-input" required id="fname" name="fname" runat="server"/>
                <br/>
                <label>Last name</label> 
                <br/>
                <input type="text" class="long-input" required id="lname" name="lname" runat="server"/>
                <br/>
                <label>Gender</label>
                <br/>
                <select id="gender" name="gender" runat="server">
                    <option>Choose Your Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Rather Not Say</option>
                </select>
                <br/>
                <label>Date of Birth</label>
                <br/>
                    <input type="Date" class="long-input" required id="dob" name="dob" runat="server"/>
                <br/>
                <label>Email</label>
                <br/>
                    <input type="email" class="long-input" required id="e_mail" name="email" runat="server"/>
                <br/>
                <label>Contact No.</label>
                <br/>
                    <input type="text" class="long-input" required id="contact_no" name="contact" runat="server"/>
                <br/>
                <label>Address</label>
                <br/>
                    <input type="text" class="long-input" required id="addr" name="address" runat="server"/>
                <br/>
                <label>Postal Code</label>
                <br/>
                    <input type="text" class="long-input" required id="post" name="po" runat="server"/>
                <br/>
                <label>Create Password</label>
                <br/>
                    <input type="Password" class="long-input" required id="pass" name="pass" runat="server"/>
                <br/>
                <label>Re-Enter Password</label>
                <br/>
                    <input type="Password" class="long-input" required id="pass2" name="pass2" runat="server"/>
                <br/>
                <asp:CompareValidator id="comparePasswords" runat="server" ControlToCompare="pass" ControlToValidate="pass2" ErrorMessage="Password Didn't Match!" Font-Bold="True" Font-Names="Poppins" Font-Size="X-Small" ForeColor="Red" />
                <br />
                <input type="checkbox" required id="Check" name="check" value="Unmarked"/> <a href="Terms and Conditions.aspx"><u style="font-family: poppins; font-size: x-small;">I Agree to the Terms & Conditions</u></a>
         </fieldset>
            <br />
            <asp:Button type="submit" class="register" id="register" name="register" onclick="registerButton_Click"  runat="server" Text="Register"/>
            <br />
            <label><a href="Login.aspx"><u>Already have an account?<br /> Login here</u></a></label>
        </form>
    </div>
</body>
</html>
