<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeaderParty.aspx.cs" Inherits="LeaderParty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/ads/camera-ele.jpg" />
        <hr />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        Country <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="Show">
            
                </asp:DropDownList>
        
        <br /><br />
        <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="#009933"></asp:Label>
    </ContentTemplate>
    </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
