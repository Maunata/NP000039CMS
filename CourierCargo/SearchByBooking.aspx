<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SearchByBooking.aspx.cs" Inherits="SearchByBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

                    <table style="width: 594px">
                        <tr>
                            <td align=center width = 99px  style="height: 21px" >
                                &nbsp;</td>
                            <td style="height: 21px" align=center width = 99px>
                           <a href = "Login.aspx" style="text-decoration: none;"> <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Log Out</strong></span></a></td>
                            <td style="height: 21px" align=center width = 99px>
                            <a href = "FrmAdmin.aspx" style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Administration</strong></span></a>
                            </td>
                             <td style="height: 21px" align=center width = 99px>
                                 &nbsp;</td>
                            <td style="height: 21px" align=center width = 99px>
                            <a href = "Contact.aspx"  style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>About Us</strong></span></a>
                            
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
                                        
                                       
                                    </tr>
                                    
                                    <tr>
                                        <td style="width: 3px; height: 32px;" align="center" valign="middle">
                                          
                                            &nbsp;</td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 26px;"  align="center" valign="middle">
                                            &nbsp;</td>
                                       
                                    </tr>
                                     </table>
                            </td>
                            <td style="width: 448px; height: 249px;" align="left" valign="top">
                                <table style="width: 100%">
                                    <tr>
                                        <td colspan="2">
                                            <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">&nbsp;</span></strong></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">Enquire Booking
                                                Status by Booking No</span></strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Select Booking No</span></td>
                                        <td style="width: 100px">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="width: 109px">
                                                        <asp:DropDownList ID="cboBookingNo" runat="server" Width="143px" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID">
                                                        </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString40 %>"
                                                            SelectCommand="SELECT [ID] FROM [Booking] WHERE (([Status] <> @Status) AND ([Status] <> @Status2))">
                                                            <SelectParameters>
                                                                <asp:Parameter DefaultValue="0" Name="Status" Type="Int32" />
                                                                <asp:Parameter DefaultValue="3" Name="Status2" Type="Int32" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </td>
                                                    <td style="width: 83px">
                                                        <asp:Button ID="btnSearch" runat="server" Text="Search >>" Width="100px" OnClick="btnSearch_Click" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Lot No</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblLotNo" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px; height: 21px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Container No</span></td>
                                        <td style="width: 100px; height: 21px">
                                            <asp:Label ID="lblContainterNo" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Truck No</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblTruckNo" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Route Map</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblRouteMap" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Status</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblStatus" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Origin</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblOrigin" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Currently Via</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblCurrentlyVia" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Destination</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblDestination" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Office</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblOffice" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana"></span>
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                       </tr>
                      
                    </table>
                </td> 
                <td width = 196 height = "742">
                 &nbsp;</td>
                    
              
     
</asp:Content>
