<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            text-decoration: underline;
        }
        .style3
        {
            width: 357px;
            text-align: right;
            font-size: large;
        }
        .style4
        {
            width: 408px;
        }
        .style5
        {
            text-align: left;
            font-size: 15pt;
        }
        .style6
        {
            width: 408px;
            height: 56px;
        }
        .style7
        {
            width: 357px;
            text-align: right;
            font-size: large;
            height: 56px;
        }
        .style8
        {
            height: 56px;
        }
        .style9
        {
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
        }
        .style10
        {
            height: 147px;
        }
        .style11
        {
            width: 357px;
            text-align: right;
            font-size: 20pt;
            font-family: "Times New Roman", Times, serif;
            font-weight: normal;
        }
    </style>
</head>
<body background="Images/Login%20page%20bg.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 106%; height: 473px;">
            <tr>
                <td class="style10" 
                    style="font-weight: 700; font-family: Century; font-size: 30pt; text-align: center">
                    INSTITUTE MANAGEMENT SYSTEM</td>
            </tr>
            <tr>
                <td style="font-family: Century; font-size: 25pt; font-weight: 700; text-align: center">
                    <span class="style2">LOGIN</span> <span class="style2">PAGE</span><table 
                        style="width: 100%; height: 380px; margin-top: 96px;">
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style11">
                                Login Id</td>
                            <td class="style5">
&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="229px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                                    ErrorMessage="Please enter valid Login Id" Font-Bold=false  ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <span class="style2">
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style11">
                                Password</td>
                            <td style="text-align: left; font-size: large">
&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="225px"></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Enter valid password" Font-Bold=false ForeColor="#CC0000" 
                                    ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style11">
                                Type of User</td>
                            <td style="text-align: left; font-size: 15pt;">
                                &nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="200px">
                                    <asp:ListItem>Select user type</asp:ListItem>
                                    <asp:ListItem>Admin</asp:ListItem>
                                    <asp:ListItem>Teachers Staff</asp:ListItem>
                                    <asp:ListItem>Students</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                            </td>
                            <td class="style7">
                            </td>
                            <td class="style8" style="text-align: left; font-size: 13pt;">
                                &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BorderStyle="Outset" 
                                    style="font-size: 15pt; font-family: 'Times New Roman', Times, serif; font-weight: 700" 
                                    Text="Submit" />
                                <br />
&nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                            <td style="text-align: left">
                                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                                    
                                    style="font-size: 16pt; color: #000000; font-family: 'Times New Roman', Times, serif" 
                                    NavigateUrl="~/Forgot Password.aspx">Forgot Password?</asp:HyperLink>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                            <td style="text-align: left; font-size: 18pt">
                                &nbsp;<span class="style9">New user?</span>
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    style="font-family: 'Times New Roman', Times, serif; color: #333399;" 
                                    NavigateUrl="~/Register.aspx">Register Here</asp:HyperLink>
                                &nbsp;</td>
                        </tr>
                    </table>
                    </span>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
