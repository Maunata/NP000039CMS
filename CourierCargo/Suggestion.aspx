<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Suggestion.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 444px; height: 242px">
    <tr bordercolor="#ffffff">
        <td style="width: 448px; height: 249px;" align="left" valign="top">
            <table style="width: 100%">
                <tr>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px" align="left">
                        <asp:Label ID="User" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Smaller"
                                                ForeColor="Blue" Text="User" Width="404px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
            <table style="height: 146px">
                <tr>
                    <td colspan="2">
                        <span style="font-size: 9pt; color: #3333cc; font-family: Verdana"><strong>Make Suggestion</strong></span></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Suggestion</span></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtSuggestion" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">User ID</span></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" Width="141px" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" Text=" " Width="275px" Font-Bold="True" Font-Names="Verdana" Font-Size="Smaller" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

