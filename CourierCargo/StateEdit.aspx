<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="StateEdit.aspx.cs" Inherits="StateEdit1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 3562px; height: 250px;" valign=top align="char" >
&nbsp;&nbsp;
                <table style="width: 313px; height: 120px">
                    <tr>
                        <td style="width: 100px">
                            <strong><span style="font-size: 8pt; color: #3300ff; font-family: Verdana">StateEdit</span></strong></td>
                        <td style="width: 39px">
                        </td>
                        <td style="width: 471px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 39px">
                        </td>
                        <td style="width: 471px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">StateName</span></strong></td>
                        <td style="width: 39px">
                            <asp:DropDownList ID="CboStateName" runat="server" DataSourceID="SqlDataSource1" DataTextField="State" DataValueField="ID" Width="120px">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 471px">
                            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click1" Text="Search"
            Width="71px" CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">State</span></strong></td>
                        <td style="width: 39px">
                            <asp:TextBox ID="txtState" runat="server" Width="113px"></asp:TextBox>
                        </td>
                        <td style="width: 471px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Country</span></strong></td>
                        <td style="width: 39px">
                            <asp:DropDownList ID="cbocountry" runat="server" DataSourceID="Country"
            DataTextField="Country" DataValueField="ID" Width="119px">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 471px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 20px">
                            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update"
            Visible="False" Width="86px" />
                        </td>
                        <td style="width: 39px; height: 20px">
                            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete"
            Visible="False" Width="69px" />
                        </td>
                        <td style="width: 471px; height: 20px">
                        </td>
                    </tr>
                </table>
                <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString17 %>"
            SelectCommand="SELECT [ID], [State] FROM [State]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Country" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString15 %>"
            SelectCommand="SELECT [ID], [Country] FROM [Country]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

