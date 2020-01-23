<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeaderReg.aspx.cs" Inherits="LeaderReg" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 249px;
            height: 57px;
        }
        .auto-style6 {
            height: 57px;
            width: 339px;
        }
        .auto-style7 {
            width: 249px;
            height: 54px;
        }
        .auto-style9 {
            width: 249px;
            height: 53px;
        }
        .auto-style10 {
            height: 53px;
            width: 339px;
        }
        .auto-style11 {
            width: 249px;
            height: 60px;
        }
        .auto-style12 {
            height: 60px;
            width: 339px;
        }
        .auto-style13 {
            width: 249px;
            height: 92px;
        }
        .auto-style14 {
            height: 92px;
            width: 339px;
        }
        .auto-style15 {
            width: 249px;
            height: 50px;
        }
        .auto-style16 {
            height: 50px;
            width: 339px;
        }
        .auto-style17 {
            width: 249px;
            height: 58px;
        }
        .auto-style18 {
            height: 58px;
            width: 339px;
        }
        .auto-style19 {
            height: 155px;
        }
        .auto-style20 {
            height: 54px;
            width: 339px;
        }
        .auto-style21 {
            height: 155px;
            width: 339px;
        }
        .auto-style22 {
            height: 56px;
        }
    </style>
</head>
<body bgcolor="#E6E6FA">
    <form id="form1" runat="server">
    <div><center style="height: 602px">
    <table >
        <h1 style="width: 468px">Leaders Registration Form</h1>
        <hr />
                <tr>
                    <td class="auto-style5">UIDno</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server" PlaceHolder="12 digit UIDNo" Width="331px" Height="33px"></asp:TextBox></td>
                    <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="12 digit UID number only" ControlToValidate="TextBox1" ValidationExpression="^\d{12}$">12 digit UID number only</asp:RegularExpressionValidator></td>
                </tr>
        <tr>
            <td class="auto-style7">LeaderName</td>
            <td class="auto-style20"><asp:TextBox ID="TextBox2" runat="server" PlaceHolder="Full Name" Height="29px" Width="268px"></asp:TextBox></td>

        </tr>
        <tr>
            <td class="auto-style7">Password</td>
            <td class="auto-style20"><asp:TextBox ID="TextBox4" runat="server" PlaceHolder="above 8 char" TextMode="Password" Height="29px"  style="margin-left: 0px" Width="267px"></asp:TextBox></td>
       <td><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password must be different from userid" ControlToValidate="TextBox4" ControlToCompare="TextBox1" Type="String" Operator="NotEqual">*</asp:CompareValidator></td>
             </tr>
        <tr>
            <td class="auto-style9">DOB</td>
            <td class="auto-style10"><asp:TextBox ID="TextBox5" runat="server" PlaceHolder="dd/mm/yy" Height="31px"  Width="267px"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td class="auto-style11">Age</td>
            <td class="auto-style12"><asp:TextBox ID="TextBox6" runat="server" PlaceHolder="betn 18 to 68" TextMode="Number" Height="29px" Width="265px"></asp:TextBox></td>
           <td> <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be between 18 to 58" ControlToValidate="TextBox6" Type="Integer" MinimumValue="18" MaximumValue="58">out of range</asp:RangeValidator></td>
              </tr>
        <tr>
            <td class="auto-style5">Gender</td>
           <td class="auto-style6">
               <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Gender"/>
               <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="Gender"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">MobNo</td>
            <td class="auto-style22"><asp:TextBox ID="TextBox8" PlaceHolder="10 digit" runat="server" Height="33px" Width="262px"></asp:TextBox></td>
     <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="10 digit mobile number only" ControlToValidate="TextBox8" ValidationExpression="^\d{10}$">*</asp:RegularExpressionValidator></td>
               </tr>
        <tr><td>Poleno</td>
            <td class="auto-style12"><asp:TextBox ID="TextBox9" runat="server" TextMode="Number" Height="29px" Width="265px"></asp:TextBox></td>
            <td class="auto-style13">Address</td>
            <td class="auto-style14"><asp:TextBox ID="TextBox3" runat="server" PlaceHolder="Address in Details" Height="50px" Width="263px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style15">Security Question</td>
            <td class="auto-style16"><asp:DropDownList ID="DropDownList1" runat="server" Height="44px">
           <asp:ListItem>Which is your favorite sport?</asp:ListItem> 
                <asp:ListItem>What was the name of your first car?</asp:ListItem>    
                                <asp:ListItem>Which color you like the most?</asp:ListItem>
                <asp:ListItem>Which is your favorite tourist destination?</asp:ListItem>

                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="auto-style17">Answer</td>
            <td class="auto-style18"><asp:TextBox ID="TextBox7" runat="server" Height="39px" Width="271px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style19"><asp:Button ID="Button1" runat="server" Text="Register" Height="42px" Width="139px" OnClick="Register" ></asp:Button></td>
            <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Cancel</asp:HyperLink></td>
            
            
        </tr>

         

    </table>
        </center>
    </div>
    </form>
</body>
</html>