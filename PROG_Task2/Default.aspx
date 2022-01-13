<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PROG_Task2.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height:20px; width: 1150px; border-color: white">
        <tr style="background-color: #1E1E1E;">
            <td style="text-align: right; width: 300px;" align="right">
                <asp:TextBox ID="TextBox1" runat="server" Height="16px" Style="vertical-align: middle" BackColor="White" ForeColor="#333333"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="Search" BackColor="#1E1E1E" BorderColor="white" ForeColor="White" Width="105px" Font-Names="Arial Black"
                    Font-Size="15px" Height="35px" Style="vertical-align: middle" OnClick="Button3_Click" BorderStyle="None" />

            </td>
        </tr>
    </table>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatDirection="Horizontal" RepeatColumns="4" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("AlbumName") %>' Font-Bold="True" Font-Names="Arial" Height="35px" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="250px" Width="250px" ImageUrl='<%# Eval("AlbumArt") %>' />
                    </td>
                </tr>
                <tr style="text-align: center">
                    <td style="text-align: center">
                        <asp:Label ID="Label2" runat="server" Text="R" Font-Bold="True" Font-Names="Arial" Style="text-align: center" ForeColor="White"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("AlbumPrice") %>' Font-Bold="True" Font-Names="Arial" Style="text-align: center" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="Label4" runat="server" Text="Quantity" Font-Bold="True" Font-Names="Arial" ForeColor="White"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Height="40px" Width="160px" BackColor="#333333" Font-Bold="True" Font-Names="Arial" ForeColor="White"
                            Text="Add to Cart" CommandArgument='<%# Eval("AlbumID") %>' CommandName="AddToCart" BorderStyle="None" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [AlbumID], [AlbumName], [AlbumDesc], [AlbumArt], [AlbumPrice] FROM [Album]"></asp:SqlDataSource>
</asp:Content>
