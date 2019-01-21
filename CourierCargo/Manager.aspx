<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Managr" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table style="width: 100%">
            <tr>
                <td style="width: 100px">
                    <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Name</span></td>
                <td style="width: 100px">
                    <asp:TextBox
            ID="txtName" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                
            </tr>
            <tr>
                <td style="width: 100px; height: 36px;">
                    <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Password</span></td>
                <td style="width: 100px; height: 36px;">
                    <input id="Password" runat="server"
            type="password"  /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Confirm Password</span></td>
                <td style="width: 100px">
                    <div style="text-align: left">
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 100px">
                                    <input id="CPassword" runat="server" type="password" /></td>
                                <td style="width: 100px">
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password"
            ControlToValidate="CPassword" ErrorMessage="Password does not match"></asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create"
            Width="117px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
                </td>
                <td style="width: 100px" valign="top">
                    <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


