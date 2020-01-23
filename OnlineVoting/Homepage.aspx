<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            background-color:blueviolet;
            padding:8px;
        }
       
        .auto-style2 {
            margin-left: 0px;
            padding: 8px;
            height: 105px;
            text-align: left;
            
        }
       
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1">
            &nbsp;GOVERNMENT OF INDIA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; ONLINE ELECTION DEPARTMENT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Search.." Height="27px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" Width="57px" Height="32px" />
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Height="31px"  Width="122px">
                <asp:ListItem>ENGLISH</asp:ListItem>
                <asp:ListItem>HINDI</asp:ListItem>
                <asp:ListItem>MARATHI</asp:ListItem>
            </asp:DropDownList>
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Black" NavigateUrl="#" Width="119px">Login</asp:HyperLink>
            
        </p>
       

        <p class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageMap ID="ImageMap1" runat="server" Height="102px" ImageUrl="~/Images/eclogo.png" Width="124px">
            </asp:ImageMap>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text=" ELECTION COMMISSION OF INDIA " Font-Bold="True" Font-Size="Larger"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        </p>

        &nbsp;

        <asp:Menu ID="Menu1" runat="server" Height="50px" Orientation="Horizontal" Font-Size="Larger" Font-Bold="true" BackColor="#00ffff" StaticMenuItemStyle-BackColor BorderWidth="1px" DynamicMenuItemStyle-ItemSpacing="8">
            <DynamicHoverStyle BackColor="#00ff99" />
            
            <DynamicMenuStyle BackColor="#ff66ff" />
            <Items>
                <asp:MenuItem Text="HOME" Value="HOME"></asp:MenuItem>
                <asp:MenuItem Text="ABOUT US" Value="ABOUT US">
                    <asp:MenuItem Text="Vission-Mission" Value="Vission-Mission"></asp:MenuItem>
                    <asp:MenuItem Text="officers-Staff" Value="officers-Staff"></asp:MenuItem>
                    <asp:MenuItem Text="Organisational-Structure" Value="Organisational-Structure"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="REGISTRATION" Value="REGISTRATION"></asp:MenuItem>
                <asp:MenuItem Text="VOTERS_INFO" Value="VOTERS_INFO"></asp:MenuItem>
                <asp:MenuItem Text="LEADERS-PARTIES" Value="LEADERS-PARTIES"></asp:MenuItem>
                <asp:MenuItem Text="ECI-2018" Value="ECI-2018"></asp:MenuItem>
                <asp:MenuItem Text="ABOUT ECI" Value="ABOUT ECI"></asp:MenuItem>
                <asp:MenuItem Text="MEDIA CORNER" Value="MEDIA CORNER"></asp:MenuItem>
            </Items>
        </asp:Menu>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       

    </form>
</body>
</html>
  