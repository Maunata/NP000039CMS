<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="FrmBookingEdit.aspx.cs" Inherits="FrmBookingEdit1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left" style="width: 100px">
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Booking</span></strong></td>
            <td align="left" style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
            </td>
            <td align="left" style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 21px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Booking No</span></td>
            <td align="left" style="width: 100px; height: 21px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboBookingNo" runat="server"
            Width="160px" DataSourceID="SqlDataSource1" DataTextField="ID">
                            </asp:DropDownList>
                        </td>
                                                    <%--<td style="width: 100px">
                                                        <asp:Button ID="btnSearch" runat="server" Text="Search >>" Width="101px" OnClick="btnSearch_Click" CausesValidation="False" /></td>--%>
                                                </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 21px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 133px">
                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Item</span></td>
                    </tr>
                </table>
            </td>
            <td align="left" style="width: 100px; height: 21px">
                <asp:TextBox ID="txtItem" runat="server" Width="155px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 21px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Item Weight</span></td>
            <td align="left" style="width: 100px; height: 21px">
                <asp:TextBox ID="txtWeigth" runat="server" Width="155px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 24px;">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Office Sender</span></td>
            <td align="left" style="width: 100px; height: 24px;">
                <asp:DropDownList ID="cboOfficeS" runat="server"
            Width="161px" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="ID">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Office Receiver</span></td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="cboOfficeR" runat="server" Width="163px" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="ID">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Wether?</span></td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="cboWhether" runat="server" Width="163px">
                    <asp:ListItem>Courier</asp:ListItem>
                    <asp:ListItem>Cargo</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 22px;">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Expct Rv Date</span></td>
            <td align="left" style="width: 100px; height: 22px;">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboDateExp" runat="server" Width="48px">
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
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboExpMonth" runat="server" Width="48px" >
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
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboExpYear" runat="server" Width="53px">
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
            <td align="left" style="width: 100px; height: 22px;">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Actual Rv Date</span><br />
            </td>
            <td align="left" style="width: 100px; height: 22px;">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboRecvDate" runat="server" Width="48px">
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
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboRevMonth" runat="server" Width="48px">
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
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboRecvYear" runat="server" Width="53px">
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
            <td align="left" style="width: 100px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Origin</span></td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="cboOrigin"
            runat="server" Width="163px" DataSourceID="SqlDataSource3" DataTextField="BaseCity_Id" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString48 %>"
                                                SelectCommand="SELECT [ID], [BaseCity_Id] FROM [Route_Details]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Destination</span></td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="cboDestination" runat="server" Width="162px" DataSourceID="SqlDataSource4" DataTextField="DestinationCity_Id" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString49 %>"
            SelectCommand="SELECT [ID], [DestinationCity_Id] FROM [Route_Details]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 21px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Status</span></td>
            <td align="left" style="width: 100px; height: 21px">
                <asp:Label ID="lblStatus" runat="server" Text=" " Width="206px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
            </td>
            <td align="left" style="width: 100px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString7 %>"
            SelectCommand="SELECT [ID] FROM [Booking]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString8 %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]" 
                    onselecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
            </td>
        </tr>
                                    <%--<tr>
                                        <td align="left" style="width: 100px; height: 38px;"><asp:Button ID="btnUpdate" runat="server" Text="Update" Width="148px" OnClick="btnUpdate_Click"  /></td>
                                        <td align="left" style="width: 100px; height: 38px;">
<%--        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="148px" OnClick="btnDelete_Click"  /></td>
--%>                                    </tr>--%>
                                </table>
</asp:Content>

