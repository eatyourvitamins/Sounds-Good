<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROG_Task2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:black; padding-top:175px">
    <form id="form1" runat="server">
    <table align="center" style="height: 600px; width:550px; background-color:#1E1E1E">
        <tr style="height:55px">
            <td colspan="2" align="center">
                <asp:Label ID="Label2" runat="server" Text="Member Login" Font-Bold="True" Font-Names="Arial" Font-Size="45px" ForeColor="White"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="A membeship is required in order to make a purchase and view past transactions. If you don't have an account you can create one, its free!" Font-Names="Arial" Font-Bold="False" ForeColor="Silver" ></asp:Label>
                <br />
            </td>
        </tr>
        <tr style="height:20px">
            <td align="center" style="width: 34%"><asp:Label ID="Label4" runat="server" Text="Email" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="221px" TextMode="Email"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email is empty" ForeColor="Red" Font-Bold="True" Font-Names="Arial"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="height:20px">
            <td align="center"><asp:Label ID="Label5" runat="server" Text="Password" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="221px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter a pasword" ForeColor="Red" Font-Bold="True" Font-Names="Arial"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="text-align:left; height:30px">
            <td></td>
            <td align="left">
                <asp:Button ID="Button1" runat="server" Height="31px" Text="Login" Width="227px" Font-Bold="True" OnClick="Button1_Click" BackColor="#3399FF" BorderStyle="None" Font-Names="Arial" ForeColor="White" />
            </td>
        </tr>
        <tr style="height:55px">                           
            <td colspan="2" align="center">
                <asp:Label ID="Label6" runat="server" Text="Don't have an account? " Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" Font-Underline="True" NavigateUrl="~/Register.aspx" Font-Bold="True" ForeColor="#3399FF">Sign up</asp:HyperLink>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Visible="False" Font-Bold="True" Font-Names="Arial"></asp:Label>
            </td>
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>
