<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage2.master" CodeFile="UserQuerry.aspx.cs" Inherits="UserQuerry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
                    <table style="width: 594px">
                        <tr>
                            <td align=center width = 99px  style="height: 21px" >
                                <a href =Home.aspx style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Booking</strong></span></a></td>
                            <td style="height: 21px" align=center width = 99px>
                            <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Clients</strong></span></td>
                            <td style="height: 21px" align=center width = 99px>
                            <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Administration</strong></span>
                            </td>
                             <td style="height: 21px" align=center width = 99px>
                            <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Complaints</strong></span>
                            </td>
                            <td style="height: 21px" align=center width = 99px>
                            <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>About Us</strong></span>
                            </td>
                            <td style="height: 21px" align=center width = 99px>
                            <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Our Offices</strong></span>
                            </td>
                            
                            
                        </tr>
                      
                      
                    </table>
                   

                            </td>
                            <td style="width: 448px; height: 249px;" align="left" valign="top">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 100px">
                                            <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">Client Enquiry</span></strong></td>
                                        <td style="width: 100px">
                                        </td>
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
        To Office</span></td>
                                        <td style="width: 100px">
        <asp:TextBox ID="txtToOffice" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Query</span></td>
                                        <td style="width: 100px">
                                            <asp:TextBox ID="txtQuerry" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Booking No</span></td>
                                        <td style="width: 100px">
        <asp:TextBox ID="txtBookingNo" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
        <asp:Button ID="Button1" runat="server" Text="Submit" Width="141px" /></td>
                                    </tr>
                                </table>
                            </td>
                       </tr>
                      
                    </table>
                    &nbsp;</td> 
                <td width = 196 height = "742">
                 &nbsp;</td>
                    
              
        </asp:Content>  
