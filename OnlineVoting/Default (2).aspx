<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><h2>SMS & Email from ASP.Net</h2>
        
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MailSend.aspx">Send Email</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SMSSend.aspx">Send SMS</asp:HyperLink>
        </center>
    
    </div>
    </form>
</body>
</html>
