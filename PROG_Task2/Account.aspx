<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="PROG_Task2.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:black">
    <form id="form1" runat="server">
        <div align="center" style="margin:0 auto;">
            <asp:Label ID="Label2" runat="server" Text="Home " Font-Bold="True" Font-Names="Arial" Font-Size="20px" ForeColor="#3399FF"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text=" / Account" Font-Bold="True" Font-Names="Arial" Font-Size="20px" ForeColor="White"></asp:Label>
            <br />

             <asp:Label ID="Label1" runat="server" Text="Account" Font-Bold="True" Font-Names="Calibri" Font-Size="60px" ForeColor="White"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="All previous account transactions are listed below" Font-Bold="False" Font-Names="Arial" Font-Size="20px" ForeColor="#999999"></asp:Label>
            
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="Black" Height="257px" ShowFooter="True" Width="1300px" Font-Names="Arial" ForeColor="White" GridLines="None">
                <AlternatingRowStyle BackColor="#0F0F0F" />
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="Order ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ItemNo" HeaderText="Item Number">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="AlbumID" HeaderText="Album ID" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="AlbumName" HeaderText="Album Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="AlbumPrice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OrderDate" HeaderText="Order Date">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Customer" HeaderText="Customer" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [OrderId], [ItemNo], [AlbumId], [AlbumName], [AlbumPrice], [Quantity], [OrderDate], [Customer] FROM [OrderSummary]"></asp:SqlDataSource>

            <br />
            <asp:Button ID="Button2" runat="server" Text="Home" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="47px" Width="225px" Font-Size="22px" OnClick="Button2_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>