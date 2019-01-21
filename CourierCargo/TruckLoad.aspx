<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TruckLoad.aspx.cs" Inherits="TruckLoad" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body topmargin  = 0  rightmargin = 0  leftmargin = 0 >
             <form id="form3" runat="server">
             <table cellpadding  = 0 cellspacing = 0 height = 742 width =  1000 border = 0> 
            <tr>
                <td height = 742 style="width: 198px" valign="top">
                &nbsp;</td>
                <td height = 204 valign=top style="width: 578px"  >
               <table>
                  <tr>
                  <td valign =top style="width: 582px; height: 193px;" >
                  &nbsp;</td>
                  
                  </tr>
               </table>
                    <table style="width: 594px">
                        <tr>
                            <td align=center width = 99px  style="height: 21px" >
                                <a href ="FrmBooking.aspx" style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Booking</strong></span></a></td>
                            <td style="height: 21px" align=center width = 99px>
                           <a href = "Home.aspx" style="text-decoration: none;"> <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Log Out</strong></span></a></td>
                            <td style="height: 21px" align=center width = 99px>
                            <a href = "FrmAdmin.aspx" style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Administration</strong></span></a>
                            </td>
                             <td style="height: 21px" align=center width = 99px>
                            <a href ="ClientArea.aspx" style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>User Home</strong></span></a>
                            </td>
                            <td style="height: 21px" align=center width = 99px>
                            <a href = "AboutUs.aspx"  style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>About Us</strong></span></a>
                            
                            </td>
                            <td style="height: 21px" align=center width = 99px>
                            <a href = "OurOffices.aspx"  style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Our Offices</strong></span></a>
                            
                            </td>
                            
                            
                        </tr>
                      
                      
                    </table>
                    
                    <table style="width: 591px; height: 255px">
                        <tr bordercolor="#ffffff">
                            <td style="width: 143px; height: 249px;" valign =top >
                                <table width = 143px height=225px cellpadding=0 cellspacing = 1 align="center" border=0>
                                 
                                   <tr>
                                        <td style="width: 3px; height: 15px;" background = "Design/Parts/images/IndexMenu-copy-2_01.jpg"   >
                                        
                                        </td>
                                       
                                    </tr>
                                    
                                    <tr>
                                        <td style="width: 3px; height: 32px;" align="center" valign="middle">
                                          
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_02.jpg"  PostBackUrl="~/FrmAdmin.aspx"  /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 26px;"  align="center" valign="middle">
                                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_03.jpg" PostBackUrl="~/ClientList.aspx" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 26px;"  align="center" valign="middle">
                                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_04.jpg" PostBackUrl="~/FrmBooking.aspx" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 28px;"  align="center" valign="middle">
                                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_05.jpg" PostBackUrl="~/UserComplaint.aspx" /></td>
                                       
                                    </tr>
                                    <tr>
                                        <td style="width: 3px; height: 26px;"  align="center" valign="middle">
                                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_06.jpg" PostBackUrl="~/Suggestion.aspx" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 27px;" align="center" valign="middle">
                                            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_07.jpg" PostBackUrl="~/SearchBookingQuery.aspx" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 27px;" align="center" valign="middle">
                                            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_08.jpg" PostBackUrl="~/AboutUs.aspx" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 23px;" align="center" valign="middle">
                                            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_09.jpg" PostBackUrl="~/ContactUs.aspx" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 25px;" align="center" valign="middle">
                                      <img src ="Design/Parts/images/IndexMenu-copy-2_10.jpg" />
                                        </td>
                                       
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 448px; height: 249px;" align="center" valign="top">
                                <div style="text-align: left">
                                    <table style="width: 100%">
                                        <tr>
                                            <td colspan="2">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                            <asp:Label ID="User" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Smaller"
                                                ForeColor="Blue" Text="User" Width="404px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
        <asp:Label ID="Label1" runat="server" Width="257px" ForeColor="Red"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Select Truck to load</span></td>
                                            <td style="width: 100px">
        <asp:DropDownList ID="cboTruckId" runat="server" DataSourceID="SqlDataSource3" DataTextField="TruckNo"
            DataValueField="ID" Width="176px">
        </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Office Id</span></td>
                                            <td style="width: 100px">
        <asp:DropDownList ID="cboofficeid" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name"
            DataValueField="ID" Width="176px">
        </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Route Map Via</span></td>
                                            <td style="width: 100px">
        <asp:DropDownList ID="cboRouteMap" runat="server" DataSourceID="SqlDataSource2" DataTextField="RouteMapNo"
            DataValueField="ID" Width="176px" AutoPostBack="True" OnSelectedIndexChanged="cboRouteMap_SelectedIndexChanged">
        </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Origin</span></td>
                                            <td style="width: 100px">
        <asp:Label ID="lblOrigin" runat="server" Width="181px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Destination</span></td>
                                            <td style="width: 100px">
        <asp:Label ID="lblDestination" runat="server" Width="181px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Currentlly Via</span></td>
                                            <td style="width: 100px">
        <asp:Label ID="lblCurrentlyVia" runat="server" Width="181px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Originally Via</span></td>
                                            <td style="width: 100px">
        <asp:Label ID="lblOriginallyVia" runat="server" Width="181px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Select
        Lot No. To be Sent in the above truck</span></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana"></span>
                                            </td>
                                            <td style="width: 100px">
                                                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        <asp:CheckBoxList ID="clbLotNo" runat="server" DataSourceID="SqlDataSource4" DataTextField="LotNo"
            DataValueField="ID" Width="160px">
        </asp:CheckBoxList></span></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <asp:Button ID="btnLoad" runat="server" Text="Load" Width="199px" OnClick="btnLoad_Click" Visible="False" /></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                       </tr>
                      
                    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString27 %>"
            SelectCommand="SELECT [ID], [TruckNo] FROM [Truck] WHERE ([TruckStatus] = @TruckStatus)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="TruckStatus" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString28 %>"
            SelectCommand="SELECT [LotNo], [ID] FROM [Lot] WHERE ([LotStatus] = @LotStatus)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="LotStatus" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString25 %>"
            SelectCommand="SELECT [ID], [RouteMapNo] FROM [Route_Map]"></asp:SqlDataSource>
                </td> 
                <td width = 196 height = "742" valign="top">
                 &nbsp;</td>
                    
              
            </tr>
            
          
        </table>
    <div>
        &nbsp;&nbsp;</div>
    </form>
</body>
</html>
