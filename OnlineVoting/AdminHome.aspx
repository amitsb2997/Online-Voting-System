<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>

    </title>
        <style>
            
            .auto-style1 {
                width: 443px;
                height: 477px;
            }
            
            .auto-style2 {
                width: 1065px;
                height: 477px;
            }
            
            .auto-style3 {
                height: 571px;
            }
            
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><%Server.Execute("Header.aspx"); %>
           
        <div>
      <center> <h2 style="color:darkmagenta">Admin Panel</h2></center>
       <table class="auto-style3">  
           <td class="auto-style1" style="background-color: #FF99FF" valign="top">
               <br />
               <asp:Label ID="Label4" runat="server"></asp:Label>
           &nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
               <br />
               <br />
               <hr />
               
               <asp:Image ID="Image2" runat="server" BorderStyle="Solid" Width="300px" /><br />
               <br />
               <br />
           </td>
        <td class="auto-style2" valign="top" style="background-color: #FFFFCC">
            <br />
            <br />
           <marquee>Voting date:3/03/2018 on Sunday from 10:00am to 5:30pm</marquee> 
            
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
           
        &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/VoteMachine.aspx">Give Vote</asp:HyperLink>
            
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="LeaderReg.aspx"> Leader Registration  </asp:HyperLink>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
             <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="Voters5.aspx">Details About Voters</asp:HyperLink>
            <br>
         &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Leaders5.aspx">Details About Leaders</asp:HyperLink>
            
        </td>
           </table>

</div>    </div>
    </form>
</body>
</html>
