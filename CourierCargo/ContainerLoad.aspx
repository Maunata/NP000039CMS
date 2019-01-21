<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ContainerLoad.aspx.cs" Inherits="ContainerLoad1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 591px; height: 255px">
    <tr bordercolor="#ffffff">
        <td style="width: 448px; height: 249px;" align="center" valign="top">
            <div style="text-align: left">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="User" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Smaller"
                                                ForeColor="Blue" Text="User" Width="404px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px">
                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Select Container
                                                    to be Load&nbsp;</span></td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboContainer" runat="server" DataSourceID="SqlDataSource3" DataTextField="ContainerNo"
            DataValueField="ID" Width="154px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px">
                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Office Id</span></td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboofficeid" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name"
            DataValueField="ID" Width="151px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Select
        Lot No to
                                                    be sent in the above Container</span></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">&nbsp; &nbsp; &nbsp;&nbsp;<asp:CheckBoxList ID="clbLotNo" runat="server" DataSourceID="SqlDataSource4" DataTextField="LotNo"
            DataValueField="ID" Width="202px">
                            </asp:CheckBoxList>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
                            <asp:Label ID="Label1" runat="server" Width="257px" ForeColor="Red"></asp:Label>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
                            <asp:Button ID="btnLoad" runat="server" Text="Load" Width="199px" OnClick="btnLoad_Click" />
                            </span>
                        </td>
                    </tr>
                </table>
                <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString30 %>"
            SelectCommand="SELECT [ID], [ContainerNo] FROM [Container] WHERE ([ContainerStatus] = @ContainerStatus)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="ContainerStatus" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString28 %>"
            SelectCommand="SELECT [LotNo], [ID] FROM [Lot] WHERE ([LotStatus] = @LotStatus)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="LotStatus" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString25 %>"
            SelectCommand="SELECT [ID], [RouteMapNo] FROM [Route_Map]"></asp:SqlDataSource>
            </div>
        </td>
    </tr>
</table>
</asp:Content>

