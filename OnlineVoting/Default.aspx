<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 493px;
            height: 597px;
        }
        .auto-style3 {
            width: 957px;
            height: 597px;
        }
    </style>
</head>
<body bgcolor="white">


    
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
                                    <asp:MenuItem NavigateUrl="~/Default.aspx" Text="HOME" Value="HOME"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Registration.aspx" Text="REGISTRATION" Value="REGISTRATION"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/InfoVoters.aspx" Text="VOTERS-INFO" Value="VOTERS-INFO"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/InfoLeader.aspx" Text="LEADERS+PARTIES" Value="LEADERS+PARTIES"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl=# Text="INSTRUCTIONS" Value="INSTRUCTIONS"></asp:MenuItem>
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
         <marquee bgcolor="violet"><asp:Label ID="Label2" runat="server" Text="Voting date is:3/03/2018 &time:10:30am to 5:30pm">"Voting date is:3/03/2018 &time:10:30am to 5:30pm"</asp:Label></marquee>
        <table>
            <td class="auto-style2" style="background-color: #FF6699" valign="top">
                
                
                
                

                <br />
                <br />
                <br />
                <br />
                <br />
                
                
                
                

                <asp:Menu ID="Menu3" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="10px" OnMenuItemClick="Menu3_MenuItemClick">
                    <DynamicHoverStyle BackColor="#FFFFCC" BorderColor="#660033" />
                    <Items>
                        <asp:MenuItem NavigateUrl="#" Text="Result" Value="Result">
                            <asp:MenuItem NavigateUrl="~/Result1.aspx" Text="Table Formate" Value="Table Formate"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Result2.aspx" Text="Chart Formate" Value="New Item"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Election 2017" Value="Election 2017"></asp:MenuItem>
                        <asp:MenuItem Text="New Item" Value="Important Date"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                
                
                
                

            </td>


            <td class="auto-style3" valign="top" style="font-size: large; font-weight: bold; color: #FF0066; background-image: url('Images/Backimg.png');">


                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Here<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UIDno&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="259px" placeholder="UIDno" required></asp:TextBox>

                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="36px" Width="262px" TextMode="Password" placeholder="Password"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#3333CC" Font-Bold="True" ForeColor="White" Height="40px" OnClick="Button1_Click" Width="93px" />


                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


            </td>
        </table>



        <div>
               </div>
           
            
    </form>
</body>
</html>
