<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Header.aspx.cs" Inherits="Header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large; font-weight: bold; color: #990099;">
        ONLINE-VOTING<br />
        <br />
        <asp:Menu ID="Menu2" runat="server" Height="46px" Orientation="Horizontal" RenderingMode="Table" Width="1527px" Font-Size="Medium">
                                <DynamicHoverStyle BackColor="#CC99FF" Font-Size="Medium" />
                                <DynamicMenuItemStyle BackColor="#99FF99" Font-Bold="True" Font-Size="Medium" />
                                <DynamicMenuStyle BackColor="#CC99FF" />
                                <DynamicSelectedStyle BackColor="#FFCCCC" />
                                <Items>
                                    <asp:MenuItem NavigateUrl="#" Text="HOME" Value="HOME"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Registration.aspx" Text="REGISTRATION" Value="REGISTRATION"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/InfoVoters.aspx" Text="VOTERS-INFO" Value="VOTERS-INFO"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/InfoLeader.aspx" Text="LEADERS+PARTIES" Value="LEADERS+PARTIES">
                                        <asp:MenuItem NavigateUrl="~/WriteXml.aspx" Text="Download File" Value="Download File"></asp:MenuItem>
                                    </asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="#" Text="INSTRUCTIONS" Value="INSTRUCTIONS"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/AboutUs.aspx" Text="ABOUT US" Value="ABOUT US"></asp:MenuItem>
                                    <asp:MenuItem Text="MORE..." Value="MORE...">
                                        <asp:MenuItem Text="IMAGE-GALARY" Value="IMAGE-GALARY"></asp:MenuItem>
                                        <asp:MenuItem Text="MEDIA" Value="MEDIA"></asp:MenuItem>
                                        <asp:MenuItem Text="NEWS" Value="NEWS"></asp:MenuItem>
                                    </asp:MenuItem>
                                </Items>
                                <StaticHoverStyle BackColor="#FFFFCC" />
                                <StaticMenuStyle BackColor="#FFCCFF" />
                                <StaticSelectedStyle ItemSpacing="12px" BackColor="#FFFFCC" Font-Bold="True" />
                            </asp:Menu>
        

    </div>
        <div>
            <%Server.Execute("SideBar.aspx");%>
        </div>
    </form>
</body>
</html>
