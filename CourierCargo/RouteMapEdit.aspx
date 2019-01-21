<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RouteMapEdit.aspx.cs" Inherits="RouteMapEdit" %>

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
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                Administrator Area</span>&nbsp;</td>
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
                             <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Create Route</span></strong>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 3px" valign="middle">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style=" height: 2px; width :161px" valign="top">
                             <a href ="RouteDetail.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Create Route Map</span></strong></a>
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
                    <table style="width: 100%">
                        <tr>
                            <td colspan="2">
                                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Search/Update
                                    &nbsp;Route
                                    Map</span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">SelectRoute Map No.</span></td>
                            <td style="width: 100px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 100px">
                                            <asp:DropDownList ID="cboRouteMapNo" runat="server" Width="178px" DataSourceID="SqlDataSource1" DataTextField="RouteMapNo" DataValueField="ID">
                                            </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString19 %>"
                                                SelectCommand="SELECT [ID], [RouteMapNo] FROM [Route_Map]"></asp:SqlDataSource>
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Button ID="btnSearch" runat="server" Text="Search >>"  Width="127px" OnClick="btnSearch_Click" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Route Map No.</span></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtRouteMapNo" runat="server" Width="172px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Route No.</span></td>
                            <td style="width: 100px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 100px">
                                            <asp:DropDownList ID="cboRouteNo" runat="server" Width="178px" DataSourceID="SqlDataSource2" DataTextField="RouteNo" DataValueField="ID">
                                            </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString20 %>"
                                                SelectCommand="SELECT [ID], [RouteNo] FROM [Route_Details]"></asp:SqlDataSource>
                                        </td>
                                        <td style="width: 100px">
                                            <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Text="Go" Visible="False"
                                                Width="39px" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Route Origin</span></td>
                            <td style="width: 100px">
                                <asp:Label ID="lblOrigin" runat="server" Text=" " Width="177px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Route Destination</span></td>
                            <td style="width: 100px">
                                <asp:Label ID="lblDestinaion" runat="server" Text=" " Width="177px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Originally Via</span></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtOriginallyVia" runat="server" Width="170px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px; height: 19px;">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Currently Via</span></td>
                            <td style="width: 100px; height: 19px;">
        <asp:TextBox ID="txtCurrentlyVia" runat="server" Width="171px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Reason of Change</span></td>
                            <td style="width: 100px">
                            <asp:TextBox ID="txtReasonChange" runat="server" Width="170px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 109px">
        <asp:Button ID="btnUpdate" runat="server" Text="Update"  Width="127px" Visible="False" OnClick="btnUpdate_Click" /></td>
                            <td style="width: 100px"><asp:Button ID="btndelete" runat="server" Text="Delete"  Width="127px" Visible="False" OnClick="btndelete_Click" /></td>
                        </tr>
                    </table>
                    <asp:Label ID="lblMessage" runat="server" Width="252px"></asp:Label></td>
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
    </form>
</body>
</html>
