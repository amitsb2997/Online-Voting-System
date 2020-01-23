<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VotingMachine.aspx.cs" Inherits="VotingMachine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Voting Machine</h1>
        <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="322px"  Width="687px" OnRowCommand="GridView1_RowCommand" DataSourceID="SqlDataSource1" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField HeaderText="srno" DataField="srno" InsertVisible="False" ReadOnly="True" SortExpression="srno" />
                <asp:BoundField HeaderText="voternm" DataField="voternm" SortExpression="voternm" />
                <asp:BoundField HeaderText="SymbolName" DataField="SymbolName" SortExpression="SymbolName" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:ButtonField ButtonType="Button" CommandName="votee" Text="Button" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingdbConnectionString %>" SelectCommand="SELECT [srno], [voternm], [SymbolName] FROM [leaders]"></asp:SqlDataSource>
      
    </div>
    </form>
</body>
</html>
