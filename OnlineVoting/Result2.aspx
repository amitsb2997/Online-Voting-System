<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result2.aspx.cs" Inherits="Result2" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="381px" Width="523px">
            <Series>
                <asp:Series Name="Series1" XValueMember="PartyNm" YValueMembers="TotalVotes"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingdbConnectionString %>" SelectCommand="SELECT * FROM [vote_bank]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
