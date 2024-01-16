<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Applications.aspx.cs" Inherits="edible.Applications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Applications</title>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="register.css"/>
</head>
<body>
    <h1 id="response" name="response" runat="server"></h1>
    <div class="form-container">
        <legend><a href="Homepage.aspx"><img src="Logo.png"></a></legend><br/>
        <h1 id="title">Job Applications</h1>
        <form action="#" method="post" runat="server" id="form">
            <fieldset>
                <legend>Personal Info</legend>
                <label>Applicant's name</label><br>
                    <input type="text" class="long-input" required id="Dname" name="Dname" runat="server"/>
                <br/>
                <br/>
                <label>Email Address</label><br>
                    <input type="text" class="long-input" required id="email_input" name="email_input" runat="server"/>
                <br/>
                <br/>
                <label>Phone Number</label><br>
                <select id="CountryCode" name="CountryCode" runat="server">
                        <option>+44</option>
                        <option>+234</option>
                        <option>+1</option>
                    <option>+880</option>
                </select>
                    <input type="text" class="mid-input" required id="PhoneNo" name="PhoneNo" placeholder="e.g. 12345678910" runat="server"/>
                <br/>
                <br />
                <label>Street Address</label><br />
                    <input type="text" class="long-input" required id="Street_Address" name="Street_Address" runat="server"/>
                <br/>
                <br/>
                <label>City</label><br/>
                    <input type="text" class="long-input" required id="City" name="City" runat="server"/>
                <br/>
                <br/>
                <label>Post Code</label>
                    <input type="text" class="long-input" required id="PostCode" name="PostCode" runat="server"/>
                <br/>
                <br/>
                <label>Country</label>
                    <input type="text" class="long-input" required id="Country" name="Country" runat="server"/>
        </fieldset>
        <br/>
        <fieldset>
            <legend>Job Description</legend>
            <label>Position</label><br/>
                    <select id="Jobs" name="Jobs" runat="server">
                        <option>Warehouse Specialist</option>
                        <option>Warehouse Manager</option>
                        <option>Warehouse Operator</option>
                        <option>Material Handler</option>
<%--                        <option>Labourer</option>
                        <option>Loader</option>`
                        <option>Reciever</option>
                        <option>Forklift Operator</option>
                        <option>Recieving Associate</option>--%>
                    </select>
            <br/>
            <br/>
            <label>Work Experience</label><br/>
                    <input type="text" class="short-input" id="WorkExp" name="WorkExp" runat="server"/>
                    <select id="ExpTime" name="ExpTime" runat="server">
                        <option>Month(s)</option>
                        <option>Year(s)</option>
                    </select>
            <br />
            <br />
            <label>Working Days</label><br/>
                <select id="WorkDayStart" name="WorkDayStart" runat="server">
                        <option>Monday</option>
                        <option>Tuesday</option>
                        <option>Wednesday</option>
                        <option>Thursday</option>
                        <option>Friday</option>
                        <option>Saturday</option>
                        <option>Sunday</option>
                </select>
                <br />
                <label>To</label>
                <br />
                <select id="WorkDayEnd" name="WorkDayEnd" runat="server">
                            <option>Monday</option>
                            <option>Tuesday</option>
                            <option>Wednesday</option>
                            <option>Thursday</option>
                            <option>Friday</option>
                            <option>Saturday</option>
                            <option>Sunday</option>
                </select>
            <br />
            <br />
            <label>Preferred Shift</label><br />
            <select id="ShiftStart" name="ShiftStart" runat="server">
                <option>Morning Shift</option>
                <option>Afternoon Shift</option>
                <option>Night Shift</option>
                <option>Late Night Shift</option>
            </select>
            <br />
            <br />
            <label>Preferred Start Date</label><br />
            <input type="text" id="PStartDate" name="PStartDate" placeholder="DD/MM/YYYY"  runat="server"/>
            <br/> 
            <br/>
        </fieldset> 
        <br/>
        <asp:Button type="submit" class="donate" id="applyButton" name="applyButton" onclick="applyButton_Click"  runat="server" Text="Apply"/>
        </form>
    </div>
</body>
</html>

