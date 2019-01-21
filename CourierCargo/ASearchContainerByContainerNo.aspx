<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ASearchContainerByContainerNo.aspx.cs" Inherits="ASerchContainerByContainerNo" Title="Untitled Page" %>

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
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Search Container
                                    By Container No</span></strong></td>
        </tr>
        <tr>
            <td style="width: 172px" valign="top">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 172px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Select Container
                                    No</span></td>
            <td style="width: 100px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboContainerNo" runat="server" DataSourceID="SqlDataSource1"
                                                DataTextField="ContainerNo" DataValueField="ID" Width="133px">
                            </asp:DropDownList>
                            &nbsp;
                                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="btnSearch" runat="server"  Text="Search >>"
                                                Width="98px" OnClick="btnSearch_Click" />
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
                <span style="font-size: 8pt; color: #4d6064">Truck No</span></td>
            <td style="font-size: 8pt; width: 100px; color: #4d6064; height: 21px">
                <asp:Label ID="lblTruckNo" runat="server" Text=" " Width="232px"></asp:Label>
            </td>
        </tr>
        <tr style="font-size: 8pt; color: #4d6064">
            <td style="width: 172px; height: 21px" valign="top">
                <span style="color: #4d6064; font-family: Verdana">Status</span></td>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString46 %>"
                        SelectCommand="SELECT [ID], [ContainerNo] FROM [Container]"></asp:SqlDataSource>
                </td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
    </table>
</asp:Content>

