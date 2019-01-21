<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Country.aspx.cs" Inherits="Country1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 2016px; height: 250px;" valign=top >
                <table style="height: 95px">
                    <tr>
                        <td style="width: 100px">
                            <strong><span style="font-size: 8pt; color: #3300ff; font-family: Verdana">Country</span></strong></td>
                        <td style="width: 159px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 159px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">
                            <span style="font-size: 9pt">Country</span><span
                                    style="color: #ff0066">*</span></span>
                        </td>
                        <td style="width: 159px">
                            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Button ID="btnAddCountry" runat="server" OnClick="btnAddCountry_Click" Text="Add Country"
            Width="89px" />
                        </td>
                        <td style="width: 159px">
                            <asp:Button ID="btnSearch" runat="server" Text="Search Country >>" Width="120px" OnClick="btnSearch_Click" PostBackUrl="~/CountryEdit.aspx" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 159px">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMessage" runat="server" Text=" " Width="333px"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCountry"
                        ErrorMessage="Enter the country" Width="210px"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
</asp:Content>

