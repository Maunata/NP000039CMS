<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage3.master"  CodeFile="RouteDetail.aspx.cs" Inherits="RouteDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                   
              
        
    <div>
        <table style="width: 100%">
            <tr>
                <td style="width: 132px; height: 250px;" valign=top >
                  
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString10 %>"
            SelectCommand="SELECT [ID], [City] FROM [City]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString11 %>"
            SelectCommand="SELECT [City], [ID] FROM [City]"></asp:SqlDataSource>
                </td>
                <td style="width: 590px; height: 250px" valign="top">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 109px">
                                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Add Route</span></strong></td>
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
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Route No.</span></td>
                            <td style="width: 100px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 100px">
    <asp:TextBox ID="txtRouteno" runat="server"></asp:TextBox></td>
                                        <td style="width: 100px">
                                            <asp:Button ID="btnSearch" runat="server" Text="Search>>" PostBackUrl="~/RouteEdit.aspx" OnClick="btnSearch_Click" /></td>
                                    </tr>
                                </table>
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Base City</span></td>
                            <td style="width: 100px">
                                <asp:DropDownList ID="cboOrigin" runat="server"
            Width="150px" DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="ID">
        </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Destination City</span></td>
                            <td style="width: 100px">
        <asp:DropDownList ID="cboDestination" runat="server" Width="157px" DataSourceID="SqlDataSource2" DataTextField="City" DataValueField="ID">
        </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Average Speed</span></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtAverageSpeed" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Distance</span></td>
                            <td style="width: 100px">
        <asp:TextBox ID="txtDistance" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
        </td>
                            <td style="width: 100px">
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Width="131px" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblMessage" runat="server"
            Width="283px"></asp:Label></td>
                        </tr>
                    </table>
                </td>
                <td style="width: 98px; height: 250px;" align="right" valign="top">
                  
                </td>
            </tr>
        </table>
    
    </div>
 </asp:Content>
