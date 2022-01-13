<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PROG_Task2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:black; padding-top:110px">
    <form id="form1" runat="server">
    <table align="center" style="background-color:#1E1E1E; height: 800px; width:650px;" >
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label2" runat="server" Text="New Registration" Font-Bold="True" Font-Names="Arial" Font-Size="45px" ForeColor="White"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="Please enter in all relevant details into the fields to create an account. Note that no fields may be left open and 
                    only a valid 10-digit South African cell phone number is accepted" Font-Bold="False" Font-Names="Arial" ForeColor="Silver" ></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label3" runat="server" Text="Firstname" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="361px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Firstname is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only text characters are allowed" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" Font-Bold="True" Font-Names="Arial"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label4" runat="server" Text="Surname" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="361px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Surname is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only text characters are allowed" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" Font-Bold="True" Font-Names="Arial"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label5" runat="server" Text="Email" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="361px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" >
                <asp:Label ID="Label6" runat="server" Text="Gender" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="368px" ValidateRequestMode="Enabled">
                    <asp:ListItem Value="0">Select Gender</asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>
                    <asp:ListItem Value="3">Non-Binary</asp:ListItem>
                    <asp:ListItem Value="4">Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please select a gender" ForeColor="Red" InitialValue="0" Operator="GreaterThan">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label7" runat="server" Text="Address" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="29px" Width="361px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Address is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label8" runat="server" Text="Cell Number" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="29px" Width="361px" MaxLength="10" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Cell number is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid phone number" ForeColor="Red" ValidationExpression="[0-9]{10}" Font-Bold="True" Font-Names="Arial"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label9" runat="server" Text="Password" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Height="29px" Width="361px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Password is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label10" runat="server" Text="Confirm Password" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="361px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Confirm password is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="CompareValidator" ForeColor="Red" Font-Bold="True" Font-Names="Arial">Passwords do not match</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" Height="38px" Width="140px" OnClick="Button1_Click" BackColor="#3399FF" BorderStyle="None" Font-Names="Arial" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" Font-Bold="True" Font-Names="Arial"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <br />
                <asp:Label ID="Label12" runat="server" Text="Already have an account? " Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" Font-Underline="True" NavigateUrl="~/Login.aspx" Font-Bold="True" ForeColor="#3399FF">Log in</asp:HyperLink>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
            </td>
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>
