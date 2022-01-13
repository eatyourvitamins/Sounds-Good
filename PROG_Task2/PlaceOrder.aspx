<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="PROG_Task2.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:black; margin-top:150px">
    <form id="form1" runat="server">
        <div align="center" style="padding-top:50px">
            <asp:Label ID="Label1" runat="server" Text="Order " Font-Bold="False" Font-Names="Arial" Font-Size="20px" ForeColor="#CCCCCC"></asp:Label>
            <br />
            <div style="margin-top:30px">
                <asp:Label ID="Label2" runat="server" Text="Successfully paid " Font-Bold="False" Font-Names="Arial" Font-Size="20px" ForeColor="#999999"></asp:Label>
            </div>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/success.jpg" Height="100px" Width="100px" style="padding-top:20px"/>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Thank you for shopping with us " Font-Bold="True" Font-Names="Arial" Font-Size="20px" ForeColor="Silver"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="OK" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" Font-Names="Arial" ForeColor="White" Height="40px" Width="150px" OnClick="Button1_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
