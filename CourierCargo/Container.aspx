<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Container.aspx.cs" Inherits="Container1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 36px; height: 21px;">
            </td>
            <td style="width: 144px; height: 21px;">
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Create Container</span></strong></td>
            <td style="width: 87px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 36px">
            </td>
            <td style="width: 144px">
            </td>
            <td style="width: 87px">
            </td>
        </tr>
        <tr>
            <td style="width: 36px; height: 26px;">
            </td>
            <td style="width: 144px; height: 26px;">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Container No.</span><span style="color: #ff0066">*</span></td>
            <td style="width: 87px; height: 26px;">
                <asp:TextBox ID="txtContainerNo" runat="server" MaxLength="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 36px">
            </td>
            <td style="width: 144px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Container Description</span><span style="color: #ff0066">*</span></td>
            <td style="width: 87px">
                <asp:TextBox ID="txtCDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 36px">
            </td>
            <td style="width: 144px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Container Of Office</span></td>
            <td style="width: 87px">
                <asp:DropDownList ID="cboOfOffice" runat="server" Width="157px" OnSelectedIndexChanged="cboOfOffice_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 36px">
            </td>
            <td style="width: 144px">
            </td>
            <td style="width: 87px">
            </td>
        </tr>
        <tr>
            <td style="width: 36px; height: 26px;">
            </td>
            <td style="width: 144px; height: 26px;">
                <asp:Button ID="btnSave" runat="server" Text="Add Containter" Width="101px" OnClick="btnSave_Click" />
            </td>
            <td style="width: 87px; height: 26px;">
                <asp:Button ID="btnSearch" runat="server" Text="Search Container >>" OnClick="btnSearch_Click" PostBackUrl="~/ContainerEdit.aspx" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td style="width: 36px">
            </td>
            <td style="width: 144px">
            </td>
            <td style="width: 87px">
            </td>
        </tr>
        <tr>
            <td style="width: 36px">
            </td>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server" Height="8px" Text=" " Width="572px" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
        <table style="width: 220px">
            <tr>
                <td style="width: 94px; height: 20px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtContainerNo"
                        ErrorMessage="Enter the Container no." Width="262px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 94px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCDescription"
                        ErrorMessage="Enter the Container description" Width="261px"></asp:RequiredFieldValidator></td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
        </asp:Content>

