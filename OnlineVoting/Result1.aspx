﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result1.aspx.cs" Inherits="Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Result of Election 2018</h2>
        <hr />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SrNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="427px" Width="725px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="SrNo" HeaderText="SrNo" ReadOnly="True" SortExpression="SrNo" />
                <asp:BoundField DataField="PartyNm" HeaderText="PartyNm" SortExpression="PartyNm" />
                <asp:BoundField DataField="TotalVotes" HeaderText="TotalVotes" SortExpression="TotalVotes" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingdbConnectionString %>" SelectCommand="SELECT * FROM [vote_bank]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
