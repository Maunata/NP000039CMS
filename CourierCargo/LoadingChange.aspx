<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoadingChange.aspx.cs" Inherits="LoadingChange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body topmargin  = 0  rightmargin = 0  leftmargin = 0 >
             <form id="form3" runat="server">
             <table cellpadding  = 0 cellspacing = 0 height = 742 width =  1000 border = 0> 
            <tr>
                <td height = 742 style="width: 198px">
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
                                <table style="width: 100%">
                                    <tr>
                                        <td align="left" style="width: 100px">
                                        </td>
                                        <td align="left" style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="2">
                                            <asp:Label ID="User" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Smaller"
                                                ForeColor="Blue" Text="User" Width="404px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px">
                                        </td>
                                        <td align="left" style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px; height: 21px">
                                            <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">&nbsp;Lot No</span></td>
                                        <td align="left" style="width: 100px; height: 21px">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="width: 100px">
                                                        <asp:TextBox ID="txtLotNo" runat="server"></asp:TextBox></td>
                                                    <td style="width: 100px">
        <asp:DropDownList ID="cboLotNO" runat="server" DataSourceID="SqlDataSource4" DataTextField="Lot_No"
            DataValueField="ID" Width="188px" AutoPostBack="True" OnSelectedIndexChanged="cboLotNO_SelectedIndexChanged">
        </asp:DropDownList></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px">
                                            <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">&nbsp;Office</span></td>
                                        <td align="left" style="width: 100px">
        <asp:DropDownList ID="cboOfficeid" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name"
            DataValueField="ID" Width="158px">
        </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px; height: 21px">
                                            <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged"
            Text="Truck" Width="124px" /></span></td>
                                        <td align="left" style="width: 100px; height: 21px">
                                            <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged"
            Text="Container" Width="97px" /></span></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px; height: 21px">
                                            <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">&nbsp;From Truck No.</span></td>
                                        <td align="left" style="width: 100px; height: 21px">
        <asp:DropDownList ID="cboTruckNo" runat="server" Width="154px" DataSourceID="SqlDataSource1" DataTextField="TruckNo" DataValueField="ID" Visible="False">
        </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px; height: 21px">
                                            <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">&nbsp;To Truck No.</span></td>
                                        <td align="left" style="width: 100px; height: 21px">
                                        <asp:DropDownList ID="cboToTruckNo" runat="server" Width="154px" DataSourceID="SqlDataSource1" DataTextField="TruckNo" DataValueField="ID" Visible="False">
        </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px; height: 21px">
                                            <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">&nbsp; From Container</span></td>
                                        <td align="left" style="width: 100px; height: 21px">
        <asp:DropDownList ID="cboFromContainer" runat="server" Width="154px" DataSourceID="SqlDataSource2" DataTextField="ContainerNo" DataValueField="ID" Visible="False">
        </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px; height: 21px">
                                            <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">&nbsp;To Container</span></td>
                                        <td align="left" style="width: 100px; height: 21px">
        <asp:DropDownList ID="cboToContainer" runat="server" Width="154px" DataSourceID="SqlDataSource2" DataTextField="ContainerNo" DataValueField="ID" Visible="False">
        </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px; height: 21px">
                                            <span style="font-size: 10pt; color: #4d6064; font-family: Verdana"></span>
                                        </td>
                                        <td align="left" style="width: 100px; height: 21px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 100px; height: 21px">
        <asp:Button ID="btnAdd" runat="server" Text="Perform Shifting of Cargo" Width="221px" OnClick="btnAdd_Click" /></td>
                                        <td align="left" style="width: 100px; height: 21px">
        <asp:Button ID="Button1" runat="server" Text="Search Truck >>" Width="245px" PostBackUrl="~/LoadingChangeEdit.aspx" OnClick="Button1_Click" /></td>
                                    </tr>
                                </table>
                            </td>
                       </tr>
                      
                    </table>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [ID], [Lot_No] FROM [Lot]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [ID], [Name] FROM [OfficeRegistration]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [ID], [TruckNo] FROM [Truck]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString %>"
            SelectCommand="SELECT [ID], [ContainerNo] FROM [Container]"></asp:SqlDataSource>
                </td> 
                <td width = 196 height = "742">
                 &nbsp;</td>
                    
              
            </tr>
            
          
        </table>
    </form>
</body>
</html>
