<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="OfficeRegistrationEdit.aspx.cs" Inherits="OfficeRegistrationEdi" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="width: 12px">
            </td>
            <td colspan="2">
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Search/Update
                                    New Office</span></strong></td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server" Width="135px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Select Office</span></td>
            <td style="width: 120px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 83px">
                            <asp:DropDownList ID="cboSearch" runat="server" DataSourceID="SqlDataSource2"
            DataTextField="Name" DataValueField="ID">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 161px">
                            <asp:Button ID="btnSearch" runat="server" Text="Search" 
                                OnClick="btnSearch_Click" CausesValidation="False" style="height: 26px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Name</span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Address 1</span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtaddress1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Address 2</span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtaddress2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 24px">
            </td>
            <td style="width: 134px; height: 24px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Phone 1</span></td>
            <td style="width: 120px; height: 24px">
                <asp:TextBox ID="txtphone1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Phone 2</span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtphone2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 24px">
            </td>
            <td style="width: 134px; height: 24px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Cell</span></td>
            <td style="width: 120px; height: 24px">
                <asp:TextBox ID="txtcell" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">E-Mail</span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Country</span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 24px">
            </td>
            <td style="width: 134px; height: 24px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">State</span></td>
            <td style="width: 120px; height: 24px">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 12px">
            </td>
            <td style="width: 134px; height: 12px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">City</span></td>
            <td style="width: 120px; height: 12px">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 15px">
            </td>
            <td style="width: 134px; height: 15px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Registration Date</span></td>
            <td style="width: 120px; height: 15px">
                <table style="width: 48%">
                    <tr>
                        <td style="width: 78px">
                            <asp:DropDownList ID="cboregDate" runat="server" Width="48px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 91px">
                            <asp:DropDownList ID="cboregMonth" runat="server" Width="48px">
                                <asp:ListItem>Jan</asp:ListItem>
                                <asp:ListItem>Feb</asp:ListItem>
                                <asp:ListItem>Mar</asp:ListItem>
                                <asp:ListItem>Apr</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>Jun</asp:ListItem>
                                <asp:ListItem>Jul</asp:ListItem>
                                <asp:ListItem>Aug</asp:ListItem>
                                <asp:ListItem>Sep</asp:ListItem>
                                <asp:ListItem>Oct</asp:ListItem>
                                <asp:ListItem>Nov</asp:ListItem>
                                <asp:ListItem>Dec</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 94px">
                            <asp:DropDownList ID="cboregYear" runat="server" Width="53px">
                                <asp:ListItem>2007</asp:ListItem>
                                <asp:ListItem>2008</asp:ListItem>
                                <asp:ListItem>2009</asp:ListItem>
                                <asp:ListItem>2010</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Handles</span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txthandlers" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
            </td>
            <td style="width: 120px">
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                                &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update"
            Width="83px" OnClick="btnUpdate_Click" Visible="False"  />
                                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString9 %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
            </td>
            <td style="width: 120px">
                <asp:Button ID="btnDelete" runat="server"
            Text="Delete" Width="87px"  Visible="False" OnClick="btnDelete_Click" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>

