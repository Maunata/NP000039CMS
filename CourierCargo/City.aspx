<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="City1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 136px; width: 274px;">
        <tr>
            <td style="width: 100px">
                <strong><span style="font-size: 8pt; color: #3300ff; font-family: Verdana">Add City</span></strong></td>
            <td style="width: 114px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 114px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 24px;">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Country</span></td>
            <td style="width: 114px; height: 24px;">
                <asp:DropDownList ID="cboCountry" runat="server" DataSourceID="SqlDataSource1" DataTextField="Country"
            DataValueField="ID" Width="137px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 24px;">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">State</span>
                                &nbsp;</td>
            <td style="width: 114px; height: 24px;">
                <asp:DropDownList ID="cboState" runat="server" DataSourceID="SqlDataSource2" DataTextField="State"
            DataValueField="ID" Width="137px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 7px;">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">City</span></td>
            <td style="width: 114px; height: 7px;">
                <asp:TextBox ID="txtCity" runat="server" Width="115px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCity"
                            ErrorMessage="enter city" SetFocusOnError="True" Height="2px" Width="5px">*</asp:RequiredFieldValidator>
                <div
                                style="text-align: center">
                    <table style="width: 1px; height: 1px">
                        <tr>
                            <td style="width: 595px">
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="btnAddCity" runat="server" OnClick="btnAddCity_Click" Text="Add City"
        Width="88px" />
            </td>
            <td style="width: 114px">
                <asp:Button ID="btnSearch" runat="server" PostBackUrl="~/CityEdit.aspx" Text="Search City >>"
            Width="76px" onclick="btnSearch_Click" />
            </td>
        </tr>
    </table>
    <br />
        <div style="text-align: center">
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString33 %>"
            SelectCommand="SELECT [ID], [State] FROM [State]"></asp:SqlDataSource>

            <table style="width: 350px">
                <tr>
                    <td align="right" style="width: 100px; height: 21px;">
                        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString32 %>"
            SelectCommand="SELECT [ID], [Country] FROM [Country]"></asp:SqlDataSource>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List"
                            Width="311px" />
                    </td>
                </tr>
            </table>
        </div>
        
        </asp:Content>

