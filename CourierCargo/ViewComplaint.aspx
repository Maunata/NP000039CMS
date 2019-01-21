<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewComplaint.aspx.cs" Inherits="ViewComplaint" %>

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
            <tr style="background-color: #ffffff">
                <td height = 15px  >
                     <table width = 100% height= 15px>
                     <tr>
                     <td width = 20% align=left>
                     <a href ="AdminArea.aspx" style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Admin Home</strong></span></a>&nbsp;
                     </td>
                     <td width = 20% align=left>
                         <strong>
                     <a href ="Manager.aspx" style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;">Create User</span></a>
                         </strong>
                     </td>
                     <td width = 20% align=left>
                     <a href ="viewComplaint.aspx"  style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>View Complaints</strong></span></a>
                     </td>
                     <td width = 20% align=left>
                     <a href ="ViewSuggestion.aspx" style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>View Suggestion</strong></span></a>
                     </td>
                    </tr>
                     </table>
                     
                </td>
              
            </tr>
            
        </table>
        <table width = 100% height= 80px border=0 cellpadding = 0 cellspacing=0 style="background-color: #ffffff">
            <tr>
                <td align=center valign=middle style="height: 78px; width: 750;" >
                    <span style="font-size: 10pt; font-family: Verdana; color: #4d6064;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                Administrator Area</span>&nbsp;</td>
                <td width = 220px style="height: 78px; font-size: 12pt; color: #4d6064;">
                    &nbsp;</td>
            </tr>
          
          </table>
          <hr style="background-color: #ffffff" />
    <div>
        <table style="width: 100%; background-color: #ffffff;">
            <tr>
                <td style="width: 128px; height: 250px;" valign=top >
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
                <td style="width: 539px; height: 250px" valign="top">
                    <table style="width: 100%">
                        <tr>
                            <td align="center" colspan="2">
                                <strong><span style="font-size: 9pt; color: #ffffff; font-family: Verdana; background-color: #4d6064">
                                    Select the Office for Which Complaints to be Viewed</span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:DropDownList
            ID="cboOffice" runat="server" Width="186px" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="ID">
        </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                <asp:Button ID="btnOffice" runat="server" Text="GO" Width="83px" OnClick="btnOffice_Click"  /></td>
                        </tr>
                    </table>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
                    SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
                </td>
                <td style="width: 98px; height: 250px;" align="right" valign="top">
                    <table style="width: 125px">
                        <tr>
                            <td style="height: 15px" align="right">
                                <a href ="frmAdmin.aspx" style="text-decoration: none;"><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">New Login</span></a></td>
                            
                        </tr>
                        <tr>
                            <td style="height: 15px" align="right">
                                <a href =home.aspx style="text-decoration: none;"><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Log Out</span></a> </td>
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
                            <td style="width: 17px; height: 8px;">
                           
                            </td>
                            <td style="width: 94px; height: 8px;" valign="top" align="left">
                                <span style="font-size: 9pt; color: #3333cc; font-family: Verdana"><strong>Search</strong></span></td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 7px;">
                            </td>
                            <td style="width: 94px; height: 7px;" valign="top" align="left">
                                <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana"></span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 17px">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style="width: 94px; height: 17px" valign="top" align="left" >
                                <a href ="ATruckSearch.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Truck</span></strong></a>
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 14px">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style="width: 94px; height: 14px" valign="top" align="left">
                                <a href ="AContainerSearch.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Container</span></strong></a></td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 14px">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style="width: 94px; height: 14px" valign="top" align="left">
                                <a href ="ASearchByLot.aspx" style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Lot</span></strong></a></td>
                        </tr>
                        <tr>
                            <td style="width: 17px; height: 15px">
                             <img src="Design/arrow.JPG" />
                            </td>
                            <td style="width: 94px; height: 15px" valign="top" align="left">
                                <a href ="ASearchByBookingNo.aspx"  style="text-decoration: none;"><strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">Booking No</span></strong></a></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    <div>
        &nbsp;<strong>&nbsp; </strong>
    </div>
    </form>
</body>
</html>
