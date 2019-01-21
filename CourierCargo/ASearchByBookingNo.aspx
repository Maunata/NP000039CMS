<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ASearchByBookingNo.aspx.cs" Inherits="aSearchByBookingNo1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">&nbsp;</span></strong></td>
        </tr>
        <tr>
            <td colspan="2">
                <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">Enquire Booking
                                    Status by Booking No</span></strong></td>
        </tr>
        <tr>
            <td style="width: 129px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 129px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Select Booking No</span></td>
            <td style="width: 100px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 109px">
                            <asp:DropDownList ID="cboBookingNo" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="BookingId" 
                                DataValueField="BookingId" Width="143px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString58 %>" 
                                SelectCommand="SELECT [BookingId] FROM [BookingLotLink]">
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 83px">
                            <asp:Button ID="searchbtn" runat="server" onclick="searchbtn_Click" 
                                Text="&gt;&gt;Search&lt;&lt;" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Lot No</span></td>
            <td style="width: 100px">
                <asp:Label ID="lblLotNo" runat="server" Text=" " Width="207px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px; height: 21px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Container No</span></td>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="lblContainterNo" runat="server" Text=" " Width="207px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px; height: 18px;">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Truck No</span></td>
            <td style="width: 100px; height: 18px;">
                <asp:Label ID="lblTruckNo" runat="server" Text=" " Width="207px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Route Map</span></td>
            <td style="width: 100px">
                <asp:Label ID="lblRouteMap" runat="server" Text=" " Width="207px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Status</span></td>
            <td style="width: 100px">
                <asp:Label ID="lblStatus" runat="server" Text=" " Width="207px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Origin</span></td>
            <td style="width: 100px">
                <asp:Label ID="lblOrigin" runat="server" Text=" " Width="207px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Currently Via</span></td>
            <td style="width: 100px">
                <asp:Label ID="lblCurrentlyVia" runat="server" Text=" " Width="207px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Destination</span></td>
            <td style="width: 100px">
                <asp:Label ID="lblDestination" runat="server" Text=" " Width="207px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Office</span></td>
            <td style="width: 100px">
                <asp:Label ID="lblOffice" runat="server" Text=" " Width="207px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 100px">
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

