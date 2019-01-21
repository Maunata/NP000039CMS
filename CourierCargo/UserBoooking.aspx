<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UserBoooking.aspx.cs" Inherits="UserBoooking" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 133px">
                <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">Booking by
                                                Client</span></strong></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 133px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 133px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Item</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtItem" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 133px; height: 21px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Item Weight</span></td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="txtWeigth" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Wehther</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="cboWhether" runat="server" Width="156px">
                    <asp:ListItem>Courier</asp:ListItem>
                    <asp:ListItem>Cargo</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Origin</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="cboOrigin"
            runat="server" Width="154px" DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString6 %>" 
                    SelectCommand="SELECT [ID], [City] FROM [City]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Destination</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="cboDestination" runat="server" Width="157px" DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="ID">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 133px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 133px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" Text="Book" Width="141px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 133px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="lblMessage" runat="server" Text=" " Width="253px"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

