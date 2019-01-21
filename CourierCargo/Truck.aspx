<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage3.master" CodeFile="Truck.aspx.cs" Inherits="Truck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                    
    
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString5 %>"
            SelectCommand="SELECT [TruckNo], [ID] FROM [Truck]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString3 %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString4 %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
                </td>
                <td style="width: 2016px; height: 420px;" valign=top >
                    <table style="width: 332px; height: 273px">
                        <tr>
                            <td style="width: 138px">
                                <span style="font-size: 10pt; color: #3300ff; font-family: Verdana"><strong>Truck</strong></span></td>
                            <td style="width: 95px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 138px">
                            </td>
                            <td style="width: 95px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 138px; height: 26px;">
                                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana"><span style="font-size: 9pt">
                                    Truck No.</span></span>&nbsp;<span
                                    style="font-size: 8pt; color: #ff0066; font-family: Verdana">*</span></td>
                            <td style="width: 95px; height: 26px;">
        <asp:TextBox ID="txtTruckNo" runat="server" Width="156px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 138px">
                                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana"><span style="font-size: 9pt">
                                    Truck Description</span><span style="font-size: 12pt; color: #000000; font-family: Times New Roman">&nbsp;</span></span></td>
                            <td style="width: 95px; font-size: 12pt; font-family: Times New Roman;">
                                <asp:TextBox ID="txtDescription" runat="server" Width="158px"></asp:TextBox></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td style="width: 138px">
                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Truck at office</span>&nbsp; &nbsp; &nbsp;</td>
                            <td style="width: 95px">
        <asp:DropDownList ID="cboOfficeAt" runat="server" Width="163px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID">
        </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 138px">
                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Driver Name</span></td>
                            <td style="width: 95px">
        <asp:TextBox ID="txtdrivername" runat="server" Width="160px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 138px">
                                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana"><span style="font-size: 9pt">
                                    Truck Of office</span><span style="font-size: 12pt; color: #000000; font-family: Times New Roman">&nbsp;</span></span></td>
                            <td style="width: 95px; font-size: 12pt; font-family: Times New Roman;">
        <asp:DropDownList ID="cboOfOffice" runat="server" Width="164px" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="ID">
        </asp:DropDownList></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td style="width: 138px; height: 26px;">
                                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana"><span style="font-size: 12pt;
                                    color: #000000; font-family: Times New Roman"><span style="font-size: 9pt; color: #4d6064;
                                        font-family: Verdana">
        Reason Of
                                    Stay</span><span style="font-size: 12pt; color: #000000;
                                            font-family: Times New Roman">&nbsp;</span></span></span></td>
                            <td style="width: 95px; height: 26px; font-size: 12pt; font-family: Times New Roman;">
        <asp:TextBox ID="txtReasonOfStay" runat="server" Width="158px"></asp:TextBox></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman"><td style="width: 138px; height: 1px;">
                                <span style="font-size: 8pt; color: #4d6064; font-family: Verdana"><span style="font-size: 9pt">
        When Moved</span></span></td>
                            <td style="width: 95px; height: 1px;">
                                <table style="width: 181px">
                                    <tr>
                                        <td style="width: 100px">
                                            <asp:DropDownList ID="cboMoveDate" runat="server" Width="33px">
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
        </asp:DropDownList></td>
                                        <td style="width: 100px">
        <asp:DropDownList ID="cboMoveMonth" runat="server" Width="42px">
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
        </asp:DropDownList></td>
                                        <td style="width: 100px">
        <asp:DropDownList ID="cboMoveYear" runat="server" Width="53px">
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
        </asp:DropDownList></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 138px">
        <asp:Button ID="btnSave" runat="server" Text="Add Truck" Width="98px" OnClick="btnSave_Click" /></td>
                            <td style="width: 95px">
        <asp:Button ID="BtnSerch" runat="server"  PostBackUrl="~/TruckEdit.aspx"
            Text="Search Truck >>" Width="117px" CausesValidation="False" /></td>
                        </tr>
                        <tr>
                            <td style="width: 138px">
                            </td>
                            <td style="width: 95px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
        <asp:Label ID="lblMessage" runat="server" Text=" " Width="323px"></asp:Label></td>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTruckNo"
                        ErrorMessage="Enter the Truck no."></asp:RequiredFieldValidator></td>
                <td style="width: 590px; height: 420px" valign="top">
                </td>
                <td style="width: 98px; height: 420px;" align="right" valign="top">
                    <table style="width: 125px">
                        </table>
                    
                </td>
       
        <div>
            &nbsp;&nbsp;</div>
</asp:Content>
