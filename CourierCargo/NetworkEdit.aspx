<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NetworkEdit.aspx.cs" Inherits="NetworkEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
     <form id="form1" runat="server">
            <table width =100%  border= 0 cellpadding=0 cellspacing=0>
            <tr>
                <td style="height: 20px">
                </td>
              
               
            </tr>
            <tr>
                <td height = 12px bgcolor = #4d6064>
                
                </td>
               
            </tr>
            <tr>
                <td height = 15px  >
                    <table height="15" width="100%">
                        <tr>
                            <td align="left" width="20%">
                                <a href="AdminArea.aspx" style="text-decoration: none"><span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana"><strong>Admin Home</strong></span></a>&nbsp;
                            </td>
                            <td align="left" width="20%">
                                <strong><a href="Manager.aspx" style="text-decoration: none"><span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana">Create User</span></a> </strong>
                            </td>
                            <td align="left" width="20%">
                                <a href="viewComplaint.aspx" style="text-decoration: none"><span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana"><strong>View Complaints</strong></span></a>
                            </td>
                            <td align="left" width="20%">
                                <a href="ViewSuggestion.aspx" style="text-decoration: none"><span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana"><strong>View Suggestion</strong></span></a>
                            </td>
                        </tr>
                    </table>
                     
                </td>
              
            </tr>
            
        </table>
        <table width = 100% height= 80px border=0 cellpadding = 0 cellspacing=0>
            <tr>
                <td align=center valign=middle style="height: 78px; width: 750;" >
                    <span style="font-size: 10pt; font-family: Verdana; color: #4d6064;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Administrator Area</span>&nbsp;</td>
                <td width = 220px style="height: 78px; font-size: 12pt; color: #4d6064;">
                    &nbsp;</td>
            </tr>
          
          </table>
          <hr />
    <div>
        <table style="width: 100%">
            <tr>
                <td style="width: 132px; height: 250px;" valign=top >
                     <table style="width: 258px" >
                        <tr>
                            <td style="width: 3px; height: 1px" valign="middle">
                            <img src="Design/arrow.JPG" />
                            </td>
                            <td style="height: 1px; width :161px" valign="top">
                                 <a href ="OfficeRegistration.aspx"  style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Create Office</span></strong></a></td>
                        </tr>
                        <tr>
                            <td style="width: 3px; height: 2px" valign="middle">
                            <img src="Design/arrow.JPG" />
                            </td>
                            <td style=" height: 2px; width :161px" valign="top">
                             <a href = "Container.aspx"  style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Create Container</span></strong></a></td>
                        </tr>
                        <tr>
                            <td  style="width: 3px" valign="middle">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style=" height: 2px; width :161px" valign="top">
                             <a href = "Truck.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Create Truck</span></strong></a>
                            </td>
                        </tr>
                        <tr>
                            <td  style="width: 3px; height: 19px;" valign="middle">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style=" height: 19px; width :161px" valign="top">
                             <a href ="Network.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Create Network</span></strong></a>
                            </td>
                        </tr>
                        <tr>
                            <td  style="width: 3px" valign="middle">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style=" height: 2px; width :161px" valign="top">
                             <a href ="RouteDetail.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Create Route</span></strong></a>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 3px" valign="middle">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style=" height: 2px; width :161px" valign="top">
                             <a href ="RouteMap.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Create Route Map</span></strong></a>
                            </td>
                        </tr>
                        <tr>
                            <td  style="width: 3px" valign="middle">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style=" height: 2px; width :161px" valign="top">
                             <a href="Country.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Add Country</span></strong></a>
                            </td>
                        </tr>
                        <tr>
                            <td  style="width: 3px" valign="middle">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style=" height: 2px; width :161px" valign="top">
                            <a href ="State.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Add State</span></strong></a>
                            </td>
                        </tr>
                        <tr>
                            <td  style="width: 3px" valign="middle">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style=" height: 2px; width :161px" valign="top">
                            <a href ="City.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Add City</span></strong></a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 590px; height: 250px" valign="top">
                    <div style="text-align: left">
                        <table style="width: 100%">
                            <tr>
                                <td colspan="2" style="height: 21px">
                                    <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Search/Update
                                        Network</span></strong></td>
                            </tr>
                            <tr>
                                <td style="width: 234px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 234px; height: 22px;">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Select Company</span>&nbsp;</td>
                                <td style="width: 100px; height: 22px;" align="left">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 100px">
                                    <asp:DropDownList ID="cboCompany" runat="server" Width="154px" DataSourceID="SqlDataSource1" DataTextField="CompanyName" DataValueField="ID">
                                    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString14 %>"
                                        SelectCommand="SELECT [ID], [CompanyName] FROM [Network]"></asp:SqlDataSource>
                                            </td>
                                            <td style="width: 100px">
                                                <asp:Button ID="btnSearch" runat="server" Text="Search >>" Width="135px" OnClick="btnSearch_Click"  /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 234px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Company Name</span>&nbsp;</td>
                                <td style="width: 100px">
        <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 234px; height: 22px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Company Office</span></td>
                                <td style="width: 100px; height: 22px">
                                    <asp:TextBox ID="txtCompanyOffice" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 234px; height: 22px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Website</span></td>
                                <td style="width: 100px; height: 22px">
        <asp:TextBox ID="txtWebSite" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 234px; height: 23px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Customer Care No</span></td>
                                <td style="width: 100px; height: 23px">
        <asp:TextBox ID="txtCNumber" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 234px; height: 22px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Collaborated ?</span></td>
                                <td style="width: 100px; height: 22px">
                                    &nbsp;<asp:DropDownList ID="cboCollaborated" runat="server" Width="147px">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 234px; height: 22px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Date Collaboration</span>&nbsp;</td>
                                <td style="width: 100px; height: 22px">
                                    <table style="width: 167px">
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
        </asp:DropDownList></td>
                                            <td style="width: 100px">
                                                <asp:DropDownList ID="cboExpMonth" runat="server" Width="48px">
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
                                                <asp:DropDownList ID="cboExpYear" runat="server" Width="53px">
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
                                <td style="width: 234px; height: 22px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Handles</span>
                                </td>
                                <td style="width: 100px; height: 22px" valign="middle">
                                    &nbsp;<asp:DropDownList ID="cboHandles" runat="server" Width="159px">
                                        <asp:ListItem>Cargo</asp:ListItem>
                                        <asp:ListItem>Courier</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 234px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 234px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 234px">
        <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="135px" OnClick="btnUpdate_Click"  /></td>
                                <td style="width: 100px"><asp:Button ID="btnDelete" runat="server" Text="Delete" Width="135px" OnClick="btnDelete_Click"  /></td>
                            </tr>
                        </table>
                    </div>
                    <asp:Label ID="lblMessage" runat="server" Text="  " Width="152px"></asp:Label></td>
                <td style="width: 98px; height: 250px;" align="right" valign="top">
                    <table style="width: 125px">
                        <tr>
                            <td align="right" style="height: 15px">
                                <a href="frmAdmin.aspx" style="text-decoration: none"><span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana">New Login</span></a></td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 15px">
                                <a href="home.aspx" style="text-decoration: none"><span style="font-size: 8pt; color: #4d6064;
                                    font-family: Verdana">Log Out</span></a>
                            </td>
                        </tr>
                    </table>
                    <table style="width: 125px">
                        <tr>
                            <td style="width: 17px; height: 8px">
                            </td>
                            <td align="left" style="width: 94px; height: 8px" valign="top">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 8px">
                            </td>
                            <td align="left" style="width: 94px; height: 8px" valign="top">
                                <span style="font-size: 9pt; color: #3333cc; font-family: Verdana"><strong>Search</strong></span></td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 7px">
                            </td>
                            <td align="left" style="width: 94px; height: 7px" valign="top">
                                <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana"></span></strong>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 17px">
                                <img src="Design/arrow.JPG" />
                            </td>
                            <td align="left" style="width: 94px; height: 17px" valign="top">
                                <a href="ATruckSearch.aspx" style="text-decoration: none"><strong><span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana">Truck</span></strong></a>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 14px">
                                <img src="Design/arrow.JPG" />
                            </td>
                            <td align="left" style="width: 94px; height: 14px" valign="top">
                                <a href="AContainerSearch.aspx" style="text-decoration: none"><strong><span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana">Container</span></strong></a></td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 14px">
                                <img src="Design/arrow.JPG" />
                            </td>
                            <td align="left" style="width: 94px; height: 14px" valign="top">
                                <a href="ASearchByLot.aspx" style="text-decoration: none"><strong><span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana">Lot</span></strong></a></td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 15px">
                                <img src="Design/arrow.JPG" />
                            </td>
                            <td align="left" style="width: 94px; height: 15px" valign="top">
                                <a href="ASearchByBookingNo.aspx" style="text-decoration: none"><strong><span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana">Booking No</span></strong></a></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    <div>
        &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
