<%@ Page Language="C#" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="change_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="z-index: 106; left: 208px; position: absolute; top: 168px; border-left-color: #000000; border-bottom-color: #000000; width: 304px; border-top-style: double; border-top-color: #000000; border-right-style: double; border-left-style: double; height: 176px; border-right-color: #000000; border-bottom-style: double;">
            <tr>
                <td style="font-size: large; color: white; background-color: #669999;" colspan="3">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Change Password</td>
            </tr>
            <tr>
                <td style="width: 298px; height: 26px; font-weight: bold; font-size: small; font-family: Verdana;">
                    &nbsp;&nbsp;
                    user name </td>
                <td style="width: 100px; height: 26px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 298px; font-weight: bold; font-size: small; color: #000000; font-family: Verdana;">
                    &nbsp;&nbsp; password
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="152px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 298px; height: 26px; font-weight: bold; font-size: small; color: #000000; font-family: Verdana;">
                    &nbsp;&nbsp; New password</td>
                <td style="width: 100px; height: 26px">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="152px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 298px; font-weight: bold; font-size: small; color: #000000; font-family: Verdana;">
                    confirmpassword</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="152px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 22px;" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="change Pwd" style="left: 0px; position: absolute; top: 144px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Width="296px" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Book Antiqua"
            Font-Size="Large" ForeColor="DarkCyan" Style="z-index: 100; left: 280px; position: absolute;
            top: 128px" Text="Password Information"></asp:Label>
        &nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="64px" ImageUrl="Images\DrugLogo1.jpg"
            Style="z-index: 101; left: 0px; position: absolute; top: 0px" Width="768px" />
        <asp:Image ID="Image1" runat="server" BackColor="#63C3A5" Height="16px" Style="z-index: 102;
            left: 0px; position: absolute; top: 64px; background-color: #63c3a5" Width="768px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Font-Underline="True" NavigateUrl="~/default.aspx" Style="z-index: 107;
            left: 600px; position: absolute; top: 64px">Home</asp:HyperLink>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="RequiredFieldValidator" Style="z-index: 104; left: 512px; position: absolute;
            top: 208px">Enter Name</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="RegularExpressionValidator" Style="z-index: 105; left: 512px; position: absolute;
            top: 232px" ValidationExpression="^[\w]{4,10}">Enter 4-10 characters</asp:RegularExpressionValidator>
    
    </div>
    </form>
</body>
</html>
