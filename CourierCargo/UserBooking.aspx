<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserBooking.aspx.cs" Inherits="UserBooking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body topmargin  = 0  rightmargin = 0  leftmargin = 0 >
             <form id="form3" runat="server">
             <table cellpadding  = 0 cellspacing = 0 height = 742 width =  1000 border = 0> 
            <tr>
                <td style="width: 198px; height: 473px;" bgcolor="#CCCCCC">
                &nbsp;</td>
                <td valign=top style="width: 578px; height: 473px;" bgcolor="#CCCCCC"  >
               <table>
                  <tr>
                  <td valign =top style="width: 582px; height: 193px;" bgcolor="#CCCCCC" >
                      &nbsp;</td>
                  
                  </tr>
               </table>
                    <table style="width: 594px">
                        <tr>
                            
                           
                            <td style="height: 21px" align=center width = 99px bgcolor="White">
                                &nbsp;<td style="height: 21px" align=center width = 99px bgcolor="White">
                            <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Administration</strong></span>
                            </td>
                             <td style="height: 21px" align=center width = 99px bgcolor="White">
                            <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Complaints</strong></span>
                            </td>
                            <td style="height: 21px" align=center width = 99px bgcolor="White">
                            <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>About Us</strong></span>
                            </td>
                            <td style="height: 21px" align=center width = 99px bgcolor="White">
                            <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Our Offices</strong></span>
                            </td>
                            
                            
                        </tr>
                      
                      
                    </table>
                    <table style="width: 591px; height: 255px">
                        <tr bordercolor="#ffffff" bgcolor="Black">
                            <td style="width: 143px; height: 249px;" valign =top bgcolor="#CCCCCC" >
                                <table width = 143px height=225px cellpadding=0 cellspacing = 1 align="center" border=0>
                                 
                                   <tr>
                                        <td style="width: 3px; height: 15px;" background = "Design/Parts/images/IndexMenu-copy-2_01.jpg" bgcolor="#CCCCCC"   >
                                        
                                        </td>
                                       
                                    </tr>
                                    
                                    <tr>
                                        <td style="width: 3px; height: 32px;" align="center" valign="middle" bgcolor="#CCCCCC">
                                          
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_02.jpg"  PostBackUrl="~/FrmAdmin.aspx"  /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 26px;"  align="center" valign="middle" bgcolor="#CCCCCC">
                                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_03.jpg" PostBackUrl="~/UserLogin.aspx" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 26px;"  align="center" valign="middle" bgcolor="#CCCCCC">
                                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_04.jpg" PostBackUrl="~/UserBooking.aspx" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 28px;"  align="center" valign="middle" bgcolor="#CCCCCC">
                                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_05.jpg" PostBackUrl="~/UserComplaint.aspx" style="height: 28px" /></td>
                                       
                                    </tr>
                                    <tr>
                                        <td style="width: 3px; height: 26px;"  align="center" valign="middle" bgcolor="#CCCCCC">
                                            </td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 27px;" align="center" valign="middle" bgcolor="#CCCCCC">
                                            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_07.jpg" PostBackUrl="~/UserQuerry.aspx" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 27px;" align="center" valign="middle" bgcolor="#CCCCCC">
                                            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_08.jpg" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 23px;" align="center" valign="middle" bgcolor="#CCCCCC">
                                            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Design/Parts/images/IndexMenu-copy-2_09.jpg" /></td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="width: 3px; height: 25px;" align="center" valign="middle" bgcolor="#CCCCCC">
                                      <img src ="Design/Parts/images/IndexMenu-copy-2_10.jpg" />
                                        </td>
                                       
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 448px; height: 249px;" align="left" valign="top">
                                <table style="width: 100%" bgcolor="White">
                                    <tr>
                                        <td style="width: 133px">
                                            <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">Booking by
                                                Client</span></strong></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 133px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 133px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Item</span></td>
                                        <td style="width: 100px">
        <asp:TextBox ID="txtItem" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 133px; height: 21px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Item Weight</span></td>
                                        <td style="width: 100px; height: 21px">
                                            <asp:TextBox ID="txtWeigth" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 133px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Wehther</span></td>
                                        <td style="width: 100px">
        <asp:DropDownList ID="cboWhether" runat="server" Width="156px">
            <asp:ListItem>Courier</asp:ListItem>
            <asp:ListItem>Cargo</asp:ListItem>
        </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 133px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Origin</span></td>
                                        <td style="width: 100px">
                                            <asp:DropDownList ID="cboOrigin"
            runat="server" Width="154px" DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="ID">
        </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 133px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">
        Destination</span></td>
                                        <td style="width: 100px">
        <asp:DropDownList ID="cboDestination" runat="server" Width="157px" DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="ID">
        </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 133px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 133px">
                                        </td>
                                        <td style="width: 100px">
        <asp:Button ID="Button1" runat="server" Text="Book" Width="141px" OnClick="Button1_Click" /></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 133px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="lblMessage" runat="server" Text=" " Width="253px"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                       </tr>
                      
                    </table>
                    &nbsp; <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourierServiceConnectionString6 %>"
            SelectCommand="SELECT [ID], [City] FROM [City]"></asp:SqlDataSource>
                    &nbsp;</td> 
                <td width = 196 style="height: 473px" bgcolor="#CCCCCC">
                 &nbsp;</td>
                    
              
            </tr>
            
          
        </table>
    </form>
</body>
</html>
