<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login2.aspx.cs" Inherits="Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <h2>Login Here</h2>
        <hr />
    <table>
        <tr>
            <td>UIDno</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="211px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="auto-style1" Height="36px" OnTextChanged="TextBox2_TextChanged" Width="203px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="Login" Height="39px" OnClick="Button1_Click" Width="72px"></asp:Button></td>
        </tr>
    </table>
        </center>
    </div>
    </form>
</body>
</html>
