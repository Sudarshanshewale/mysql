<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" Theme="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 110px;
        }
        .style5
        {
            width: 265px;
            text-align: right;
            font-size: 20pt;
            font-weight: normal;
        }
        .style6
        {
            width: 399px;
        }
        .style7
        {
            width: 265px;
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
        }
        .style8
        {
            width: 265px;
            text-align: right;
            font-size: 20pt;
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
        }
    </style>
</head>
<body background="Images/Registeration.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%; height: 627px;">
            <tr>
                <td class="style1" 
                    style="font-size: 30pt; font-family: Century; text-align: center; font-weight: 700">
                    INSTITUTE MANAGEMENT SYSTEM</td>
            </tr>
            <tr>
                <td style="font-size: 25pt; font-family: Century; text-align: center; font-weight: 700">
                    REGISTRATION FORM<br />
                    <br />
                    <table style="width: 100%; height: 303px;">
                        <tr>
                            <td class="style6" style="text-align: left">
                                &nbsp;</td>
                            <td class="style7" 
                                
                                style="text-align: right; font-size: 20pt; ">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Name</td>
                            <td style="text-align: left">
                                &nbsp;
                                <asp:TextBox ID="TextBox6" runat="server" Height="35px" Width="210px"></asp:TextBox>
&nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style8">
                                Email Id</td>
                            <td style="text-align: left; font-size: 13pt; font-family: 'Times New Roman', Times, serif">
                                </span>&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="36px" 
                                    TextMode="Email" Width="210px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" 
                                    ErrorMessage="Enter valid Email Id" Font-Bold=false ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style8">
                                Mobile No.</td>
                            <td style="text-align: left; font-size: 13pt; font-family: 'Times New Roman', Times, serif;">
                                &nbsp;&nbsp;&nbsp; <asp:TextBox 
                                    ID="TextBox3" runat="server" Height="36px" MaxLength="10" Width="210px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox3" ErrorMessage="Enter valid Mobile No" Font-Bold=false 
                                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style8">
                                Password</td>
                            <td style="text-align: left; font-size: 13pt; font-family: 'Times New Roman', Times, serif;">
                                &nbsp;&nbsp;&nbsp; <asp:TextBox 
                                    ID="TextBox4" runat="server" Height="36px" TextMode="Password" Width="210px"></asp:TextBox>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                    runat="server" 
                                    ErrorMessage="Password should be combination of the char, num, special symbols" 
                                    Font-Bold=false ForeColor="#CC0000" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style8">
                                Retype-Password</td>
                            <td style="text-align: left; font-size: 13pt; font-family: 'Times New Roman', Times, serif;">
                                &nbsp;&nbsp;&nbsp; <asp:TextBox 
                                    ID="TextBox5" runat="server" Height="36px" TextMode="Password" Width="210px"></asp:TextBox>
                                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ErrorMessage="Confirmed your New Password"  Font-Bold=false 
                                    ForeColor="#CC0000" ControlToValidate="TextBox5"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style8">
                                Courses</td>
                            <td style="text-align: left">
                                &nbsp; <asp:DropDownList 
                                    ID="DropDownList1" runat="server" Height="36px" Width="210px" 
                                    style="margin-left: 0px">
                                    <asp:ListItem>Select course</asp:ListItem>
                                    <asp:ListItem>Redhat Linux</asp:ListItem>
                                    <asp:ListItem>CCNA, CCNP, CCIE</asp:ListItem>
                                    <asp:ListItem>AWS</asp:ListItem>
                                    <asp:ListItem>Android</asp:ListItem>
                                    <asp:ListItem>Python</asp:ListItem>
                                    <asp:ListItem>PhP</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                            <td style="text-align: left">
                                &nbsp;<asp:Button ID="Button1" runat="server" BorderStyle="Outset" 
                                    style="font-size: 15pt; font-family: 'Times New Roman', Times, serif; font-weight: 700" 
                                    Text="Submit" onclick="Button1_Click" />
                                &nbsp;
                                <asp:Button ID="Button2" runat="server" BorderStyle="Outset" 
                                    style="font-size: 15pt; font-family: 'Times New Roman', Times, serif; font-weight: 700" 
                                    Text="Cancel" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                            <td style="text-align: left">
                                &nbsp;<asp:Label ID="Label1" runat="server" style="font-size: 13pt" Text="Label"></asp:Label>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
