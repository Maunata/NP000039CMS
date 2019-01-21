<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="CityEdit.aspx.cs" Inherits="CityEdit1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 315px; height: 174px">
        <tr>
            <td style="width: 100px">
                <strong><span style="font-size: 8pt; color: #3300ff; font-family: Verdana">City</span></strong>
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 1px;">
                <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">City</span></strong></td>
            <td style="width: 100px; height: 1px;">
                <asp:DropDownList ID="cboCityName" runat="server" DataSourceID="SqlDataSource1" DataTextField="City"
        DataValueField="ID" Width="113px">
                </asp:DropDownList>
            </td>
            <td style="width: 100px; height: 1px;">
                <asp:Button ID="btnSearch" runat="server" Text="Search >>"
        Width="90px" OnClick="btnSearch_Click" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Country</span></strong>
                                &nbsp;</td>
            <td style="width: 100px">
                <asp:DropDownList ID="cboCountry" runat="server" DataSourceID="SqlDataSource2" DataTextField="Country"
            DataValueField="ID" Width="114px">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">State</span></strong></td>
            <td style="width: 100px">
                <asp:DropDownList
            ID="cboState" runat="server" DataSourceID="SqlDataSource3" DataTextField="State"
            DataValueField="ID" Width="111px">
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 19px;">
                <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">City</span></strong></td>
            <td style="width: 100px; height: 19px;">
                <asp:TextBox ID="txtCity" runat="server" Width="105px"></asp:TextBox>
            </td>
            <td style="width: 100px; height: 19px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="100px" OnClick="btnUpdate_Click" Visible="False" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="102px" OnClick="btnDelete_Click" Visible="False" />
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
   
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString12 %>"
            SelectCommand="SELECT [ID], [City] FROM [City]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString35 %>"
            SelectCommand="SELECT [ID], [Country] FROM [Country]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString36 %>"
            SelectCommand="SELECT [ID], [State] FROM [State]"></asp:SqlDataSource>

    </asp:Content>

