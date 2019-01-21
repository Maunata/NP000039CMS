<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="State1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 2016px; height: 250px;" valign=top >
                <table style="width: 312px; height: 145px">
                    <tr>
                        <td style="width: 100px">
                            <strong><span style="font-size: 8pt; color: #3300ff; font-family: Verdana">State</span></strong>
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 13px">
                            <span style="font-size: 8pt; color: #3300ff; font-family: Verdana">
                            <span style="color: #4d6064"><span style="font-size: 9pt">State</span><span>*</span></span></span></td>
                        <td style="font-size: 12pt; width: 100px; font-family: Times New Roman; height: 13px">
                            <asp:TextBox ID="txtstate" runat="server" Width="164px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="font-size: 12pt; font-family: Times New Roman">
                        <td style="width: 100px">
                            <span style="font-size: 8pt; color: #3300ff; font-family: Verdana">
                            <span style="color: #4d6064"><span style="font-size: 9pt">Country</span><span style="color: #ff0066"></span></span></span></td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="Country" DataValueField="ID" Width="177px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>" 
                                SelectCommand="SELECT [Country], [ID] FROM [Country]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Button ID="btnAddState" runat="server" OnClick="btnAddState_Click" Text="Add State"
            Width="86px" Font-Names="Verdana" />
                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="btnSearch" runat="server" Text="Search State  >>" Width="134px" PostBackUrl="~/StateEdit.aspx" OnClick="btnSearch_Click" Font-Names="Verdana" CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMessage" runat="server" Text=" " Width="344px"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtstate"
                        ErrorMessage="Enter the State"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
</asp:Content>

