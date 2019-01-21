<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ASearchTruckByTruckNo.aspx.cs" Inherits="ASerchTruckByTruckNo" Title="ByTruckNo." %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 172px" valign="top">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="2" valign="top">
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Search Truck
                                    By Truck No</span></strong></td>
        </tr>
        <tr>
            <td style="width: 172px" valign="top">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 172px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Select Truck No</span></td>
                                            <td style="width: 100px">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <asp:DropDownList ID="cboTruckNo" runat="server" DataSourceID="SqlDataSource1" DataTextField="TruckNo"
                                                DataValueField="ID" Width="133px">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="width: 100px">
                                                            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search >>"
                                                Width="98px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 172px; height: 21px" valign="top">
                                                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Of Office</span></td>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="lblOffice" runat="server" Text=" " Width="232px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 172px; height: 21px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Status</span></td>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="lblStatus" runat="server" Text=" " Width="232px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 172px; height: 21px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Route Map No</span></td>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="lblRouteMap" runat="server" Text=" " Width="230px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 172px; height: 21px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Origin</span></td>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="lblOrigin" runat="server" Text=" " Width="228px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 172px; height: 21px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Destination</span></td>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="lblDestination" runat="server" Text=" " Width="226px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 172px; height: 21px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Currently Via</span></td>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="lblCurrentlyVia" runat="server" Text=" " Width="223px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 172px; height: 21px" valign="top">
            </td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 172px; height: 21px" valign="top">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString45 %>"
                        SelectCommand="SELECT [ID], [TruckNo] FROM [Truck]"></asp:SqlDataSource>
                </td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
    </table>
</asp:Content>

