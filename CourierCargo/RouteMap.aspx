<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage3.master" CodeFile="RouteMap.aspx.cs" Inherits="RouteMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <table style="width: 100%">
            <tr>
                <td style="width: 132px; height: 250px;" valign=top >
                    
                </td>
                <td style="width: 590px; height: 250px" valign="top">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 109px">
                                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Add Route
                                    Map</span></strong></td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Route Map No.</span></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtRouteMapNo" runat="server" Width="170px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Route No.</span></td>
                            <td style="width: 100px">
                                &nbsp;<table style="width: 100%">
                                    <tr>
                                        <td style="width: 98px">
        <asp:DropDownList ID="cboRouteNo" runat="server" Width="178px" DataSourceID="SqlDataSource1" DataTextField="RouteNo" DataValueField="ID">
        </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString16 %>"
            SelectCommand="SELECT [ID], [RouteNo] FROM [Route_Details]"></asp:SqlDataSource>
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Button ID="btnGo" runat="server" Text="Go"  Width="39px" OnClick="btnGo_Click" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 109px; height: 21px;">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Route Origin</span></td>
                            <td style="width: 100px; height: 21px;">
                                <asp:Label ID="lblOrigin" runat="server" Text=" " Width="177px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Route Destination</span></td>
                            <td style="width: 100px">
                                <asp:Label ID="lblDestinaion" runat="server" Text=" " Width="177px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Originally Via</span></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtOriginallyVia" runat="server" Width="170px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Currently Via</span></td>
                            <td style="width: 100px">
        <asp:TextBox ID="txtCurrentlyVia" runat="server" Width="171px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Reason of Change</span></td>
                            <td style="width: 100px">
                            <asp:TextBox ID="txtReasonChange" runat="server" Width="170px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
        <asp:Button ID="btnAdd" runat="server" Text="Add Route Map"  Width="127px" OnClick="btnAdd_Click" Visible="False" /></td>
                            <td style="width: 100px"><asp:Button ID="btnSearch" runat="server" Text="Search >>"  Width="127px" PostBackUrl="~/RouteMapEdit.aspx" OnClick="btnSearch_Click"  /></td>
                        </tr>
                    </table>
                    <asp:Label ID="lblMessage" runat="server" Text=" " Width="327px"></asp:Label></td>
                <td style="width: 98px; height: 250px;" align="right" valign="top">
                    
                   
                </td>
            </tr>
        </table>
    
    </div>
        &nbsp;
</asp:Content>

