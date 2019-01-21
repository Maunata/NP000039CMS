<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ASearchContainerByOffice.aspx.cs" Inherits="ASerchContainerByOffice" Title="Untitled Page" %>

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
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Search Containter
                                    By Office</span></strong></td>
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
                            &nbsp;
                                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" PostBackUrl="~/ASearchContainerByOffice.aspx"
                                                Text="Search >>" Width="98px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 172px" valign="top">
                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana">
                <asp:Label ID="lblLabel" runat="server" Text="Container Currently Staying" Width="173px"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString43 %>"
                        SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString44 %>"
                        SelectCommand="SELECT [ContainerNo] FROM [Container] WHERE ([OfOfficeId] = @OfOfficeId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="cboOffice" Name="OfOfficeId" PropertyName="SelectedValue"
                                Type="Int64" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </span>
            </td>
            <td style="width: 100px">
                <asp:ListBox ID="lstTruck" runat="server" DataSourceID="SqlDataSource2" DataTextField="ContainerNo"
                                    Width="238px"></asp:ListBox>
            </td>
        </tr>
    </table>
</asp:Content>

