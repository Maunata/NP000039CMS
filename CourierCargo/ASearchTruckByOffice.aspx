<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ASearchTruckByOffice.aspx.cs" Inherits="ASerchTruckByOffice" Title="TruckbyOffice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 172px" valign="top">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 172px" valign="top">
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Search Truck
                                    By Office</span></strong></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 172px" valign="top">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 172px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Select Office</span></td>
            <td style="width: 100px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboOffice" runat="server" DataSourceID="SqlDataSource1"
                                                DataTextField="Name" DataValueField="ID" Width="133px">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" PostBackUrl="~/ASearchTruckByOffice.aspx"
                                                Text="Search >>" Width="98px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 172px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">
                <asp:Label ID="lblLabel" runat="server" Text="Trucks Currently Staying" Width="157px"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString41 %>"
                        SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
                </span>
            </td>
            <td style="width: 100px">
                <asp:ListBox ID="lstTruck" runat="server" DataSourceID="SqlDataSource2" DataTextField="TruckNo"
                                    Width="238px" DataValueField="TruckNo"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString42 %>"
                                        
                                    SelectCommand="SELECT [TruckNo] FROM [Truck] WHERE ([OfOfficeID] = @OfOfficeID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="cboOffice" Name="OfOfficeID" PropertyName="SelectedValue"
                                                Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

