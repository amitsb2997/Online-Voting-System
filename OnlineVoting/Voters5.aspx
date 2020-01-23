<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Voters5.aspx.cs" Inherits="Voters5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Voters Data</h2>
        <hr />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="509px" Width="1428px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID" />
                <asp:BoundField DataField="voternm" HeaderText="voternm" SortExpression="voternm" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="gen" HeaderText="gen" SortExpression="gen" />
                <asp:BoundField DataField="adrs" HeaderText="adrs" SortExpression="adrs" />
                <asp:BoundField DataField="poleno" HeaderText="poleno" SortExpression="poleno" />
                <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
                <asp:BoundField DataField="SecQues" HeaderText="SecQues" SortExpression="SecQues" />
                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                <asp:BoundField DataField="votyp" HeaderText="votyp" SortExpression="votyp" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingdbConnectionString %>" DeleteCommand="DELETE FROM [voter_info] WHERE [UID] = @UID" InsertCommand="INSERT INTO [voter_info] ([UID], [voternm], [DOB], [age], [gen], [adrs], [poleno], [mobno], [SecQues], [answer], [votyp]) VALUES (@UID, @voternm, @DOB, @age, @gen, @adrs, @poleno, @mobno, @SecQues, @answer, @votyp)" SelectCommand="SELECT * FROM [voter_info] WHERE ([votyp] = @votyp)" UpdateCommand="UPDATE [voter_info] SET [voternm] = @voternm, [DOB] = @DOB, [age] = @age, [gen] = @gen, [adrs] = @adrs, [poleno] = @poleno, [mobno] = @mobno, [SecQues] = @SecQues, [answer] = @answer, [votyp] = @votyp WHERE [UID] = @UID">
            <DeleteParameters>
                <asp:Parameter Name="UID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UID" Type="String" />
                <asp:Parameter Name="voternm" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="gen" Type="String" />
                <asp:Parameter Name="adrs" Type="String" />
                <asp:Parameter Name="poleno" Type="Int32" />
                <asp:Parameter Name="mobno" Type="String" />
                <asp:Parameter Name="SecQues" Type="String" />
                <asp:Parameter Name="answer" Type="String" />
                <asp:Parameter Name="votyp" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="voter" Name="votyp" QueryStringField="voter" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="voternm" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="gen" Type="String" />
                <asp:Parameter Name="adrs" Type="String" />
                <asp:Parameter Name="poleno" Type="Int32" />
                <asp:Parameter Name="mobno" Type="String" />
                <asp:Parameter Name="SecQues" Type="String" />
                <asp:Parameter Name="answer" Type="String" />
                <asp:Parameter Name="votyp" Type="String" />
                <asp:Parameter Name="UID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
