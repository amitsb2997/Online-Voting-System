<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfileDetail.aspx.cs" Inherits="ProfileDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#E6E6FA">
    <form id="form1" runat="server">
    <div>
        <h1>
         <h2 style="color:crimson">VOTER ID: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2>
        </h1>
        <hr />

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="202px" Width="369px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Back" Width="84px" />
        <br /><br />
        

        
    </div>
    </form>
</body>
</html>
