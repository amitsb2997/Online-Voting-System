<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="ChangePass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 298px">
    <form id="form1" runat="server">
    <div>
    <h1>Change Password</h1>
        <hr />
        <table>
        <tr>
            <td>UIDNo</td>
                <td><asp:TextBox ID="TextBox1" runat="server" PlaceHolder="12 digit UIDNo"></asp:TextBox></td>
        </tr><br />
        <tr>
            <td>Current Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
            <tr>
                <td>NewPassword</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" PlaceHolder="same" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" PlaceHolder="same" TextMode="Password"></asp:TextBox></td>
                
            
            
            <hr />
            
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Height="37px" Text="Change" Width="105px" OnClick="Button1_Click" />
        <br />
        <br />
        <hr />
        <a href="Default.aspx">Login Now</a>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
    </div>
    </form>
</body>
</html>
