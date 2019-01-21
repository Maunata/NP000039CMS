<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="CountryEdit.aspx.cs" Inherits="CountryEdi" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 312px; height: 220px">
        <tr>
            <td style="width: 100px">
                <strong><span style="font-size: 8pt; color: #3300ff; font-family: Verdana">CountryEdit</span></strong></td>
            <td style="width: 100px">
            </td>
            <td style="width: 102px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 102px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">
                <span style="font-size: 9pt">Country</span></span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="dboCountry"
            runat="server" DataSourceID="SqlDataSource1" DataTextField="Country" DataValueField="ID"
            Width="113px">
                </asp:DropDownList>
            </td>
            <td style="width: 102px">
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search >>"
            Width="93px" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">
                <span style="font-size: 9pt">Country</span></span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtcountry" runat="server" Width="109px"></asp:TextBox>
            </td>
            <td style="width: 102px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Update" Width="81px" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete"
            Width="77px" />
            </td>
            <td style="width: 102px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 102px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString11 %>"
                    SelectCommand="SELECT [ID], [Country] FROM [Country]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblMessage" runat="server" Text=" " Width="305px"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

