<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ViewSuggestion.aspx.cs" Inherits="ViewSuggestion1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 590px; height: 250px" valign="top">
                <table style="width: 100%">
                    <tr>
                        <td align="center" colspan="2" style="background-color: #4d6064">
                            <span style="font-size: 9pt; color: #ffffff; font-family: Verdana"><strong>
                            Select the Office for which suggestions are to be Viewed</strong></span>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" style="height: 21px">
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 21px" align="center" colspan="2">
                            <asp:DropDownList
                    ID="cboOffice" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name"
                    DataValueField="ID" Width="186px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnOffice" runat="server" Text="GO" Width="83px" OnClick="btnOffice_Click1" />
                        </td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
                    SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

