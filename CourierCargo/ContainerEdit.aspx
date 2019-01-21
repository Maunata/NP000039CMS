<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ContainerEdit.aspx.cs" Inherits="ContainerEdit1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 550px">
        <tr>
            <td colspan="2">
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Search/Update
                                    Container</span></strong></td>
            <td style="width: 100px">
            </td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 258px">
                <span style="font-size: 10pt; font-family: Verdana">
                <span style="font-size: 9pt;
                                    color: #4d6064">&nbsp;Select Container No.</span></span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="cboContainer" runat="server"  Width="158px" OnSelectedIndexChanged="cboContainer_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="ContainerNo" DataValueField="ID" >
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnSearch" runat="server" Text="Search >>" OnClick="btnSearch_Click" Width="90px" CausesValidation="False" />
            </td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 258px">
                <span style="font-size: 9pt; font-family: Verdana; color: #4d6064;">Container No.</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtContainerNo" runat="server"></asp:TextBox>
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 258px">
                <span style="font-size: 9pt; font-family: Verdana; color: #4d6064;">Container Description</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtCDescription" runat="server"></asp:TextBox>
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 258px">
                <span style="font-size: 9pt; font-family: Verdana; color: #4d6064;">Container Of Office</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="cboOfOffice" runat="server" Width="157px" OnSelectedIndexChanged="cboOfOffice_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID" >
                </asp:DropDownList>
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 258px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 258px">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="109px" OnClick="btnUpdate_Click" Visible="False" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click"
            Text="Delete" Width="106px" Visible="False" />
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 258px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="lblMessage" runat="server" Height="8px" Text=" " Width="572px" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString2 %>"
             SelectCommand="SELECT [ID], [ContainerNo] FROM [Container]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
        </asp:Content>

