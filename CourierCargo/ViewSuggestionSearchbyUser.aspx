<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ViewSuggestionSearchbyUser.aspx.cs" Inherits="ViewSuggestionSearchbyUser1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblOffice" runat="server" Font-Bold="True" Text=" " Width="147px" Font-Names="Verdana" Font-Size="Smaller" ForeColor="DarkSlateGray"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">User ID</span></td>
            <td style="width: 100px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboUserId" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name"
            DataValueField="UserId" Width="162px">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search >>" PostBackUrl="~/ViewSuggestionSearchbyUser.aspx" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Suggestion</span></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:CheckBoxList ID="cblcom" runat="server" Width="200px" DataSourceID="SqlDataSource2" DataTextField="Suggestions" DataValueField="ID">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString55 %>"
            
                    SelectCommand="SELECT [ID], [Suggestions] FROM [Suggestions] WHERE ([UserId] = @UserId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="cboUserId" Name="UserId" PropertyName="SelectedValue"
                    Type="String" DefaultValue="1" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="137px" OnClick="btnDelete_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                &nbsp;</td>
            <td style="width: 100px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [Name], [UserId] FROM [ManagerDetail] WHERE ([OfOffice] = @OfOffice)">
            <SelectParameters>
                <asp:SessionParameter Name="OfOffice" SessionField="SOfficeId" Type="String" 
                    DefaultValue="1" />
            </SelectParameters>
        </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString51 %>"
                        SelectCommand="SELECT [ID], [Suggestions] FROM [Suggestions] WHERE ([OfficeId] = @OfficeId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="cboUserId" Name="OfficeId" PropertyName="SelectedValue"
                                Type="Int64" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

