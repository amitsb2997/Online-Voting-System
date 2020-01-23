<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VoteMachine.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
         <h1>Voting machine</h1>
    <br />
        
        

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Lime"></asp:Label>
            <hr />
    
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" Height="339px" Width="777px">
            <Columns>
                <asp:BoundField DataField="srno" HeaderText="srn" />
                <asp:BoundField DataField="UID" HeaderText="uesid" />
                <asp:BoundField DataField="SymbolName" HeaderText="Symbol" />
                <asp:BoundField DataField="voternm" HeaderText="votername" />
                <asp:ButtonField ButtonType="Button" CommandName="votee" Text="vote">
                <ControlStyle BackColor="#66FFFF" />
                </asp:ButtonField>
                 <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Height="80px"></asp:ImageField>
            </Columns>
        </asp:GridView>
        
        <br />
        <br />
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinevotingdbConnectionString %>" SelectCommand="SELECT * FROM [leaders]"></asp:SqlDataSource>
 </center>
              </div>
         </form>
</body>
</html>
