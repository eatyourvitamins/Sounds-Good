<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="PROG_Task2.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:black">
    <form id="form1" runat="server">
        <div align="center" style="margin:0 auto;">
            <asp:Label ID="Label2" runat="server" Text="Home " Font-Bold="True" Font-Names="Arial" Font-Size="20px" ForeColor="#3399FF"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text=" / Cart" Font-Bold="True" Font-Names="Arial" Font-Size="20px" ForeColor="White"></asp:Label>
            <br />

             <asp:Label ID="Label1" runat="server" Text="Cart" Font-Bold="True" Font-Names="Calibri" Font-Size="60px" ForeColor="White"></asp:Label>
            <br /><br />
            
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="Black" Height="257px" ShowFooter="True" Width="1300px" Font-Names="Arial" ForeColor="White" GridLines="None" OnRowDeleting="GridView1_RowDeleting">
                <AlternatingRowStyle BackColor="#0F0F0F" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Item Number">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="albumid" HeaderText="Album ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="albumart" HeaderText="Album Art">
                        <ControlStyle Height="150px" Width="150px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="albumname" HeaderText="Album Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="albumprice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="itemquantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="totalamount" HeaderText="Total">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove Item" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>

            <br />
            <asp:Button ID="Button2" runat="server" Text="Continue Shopping" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="47px" OnClick="Button2_Click" Width="225px" Font-Size="22px" />
            <asp:Button ID="Button1" runat="server" Text="Proceed To Checkout" BackColor="White" Font-Bold="True" Font-Names="Arial" ForeColor="Black" OnClick="Button1_Click" BorderStyle="None" style="margin-left:550px" Width="225px"  Height="47px" Font-Size="20px" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
