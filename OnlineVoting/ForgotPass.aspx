<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPass.aspx.cs" Inherits="ForgotPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 113px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Recovery Password</h1>
        <hr>
    <tr>
        <td>UIDNo</td>
           <td> <asp:TextBox ID="TextBox1" runat="server" PlaceHolder="12 digit UIDNo" Height="39px" Width="271px" ></asp:TextBox>
        </td>
        </tr>
        <br />
        <br />
        <tr>
            <td>Security Questions</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="55px" Width="189px" CssClass="auto-style1" >
                    
                    <asp:ListItem>What was the name of your first car?</asp:ListItem>
                    <asp:ListItem>Which color you like the most?</asp:ListItem>
                    <asp:ListItem>Which is your favorite sport?</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <br />
        <br />
        <tr>
            <td>Answer</td>
              <td>  <asp:TextBox ID="TextBox2" runat="server" PlaceHolder="Your Ans." Height="38px" Width="263px"></asp:TextBox></td>
        </tr>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="40px" Text="Submit" Width="113px" />
       <br />
        <br />
        <br />
        
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"> </asp:Label></td>
        </tr>
        <br />
        <br />
        <a href="Default.aspx">Login Now</a>
   
    </div>
    </form>
</body>
</html>
