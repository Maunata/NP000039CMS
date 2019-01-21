<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="FrmAdmin.aspx.cs" Inherits="FrmAdmi" Title="Administrator Page" %>

<%-- Add content controls here --%>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
     <table class="auto-style4" border="1">
                        <tr>
                           
                            <td align=center class="auto-style2">
                            &nbsp;<a href ="Login.aspx" style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>User Login</strong></span></a>
                            </td>
                             <td align=center class="auto-style3">
                            <a href ="ContactUs.aspx" style="text-decoration: none;"> <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>About
                                us</strong></span></a>
                            </td>
                         
                            <td align=center class="auto-style9">
                           <a href ="OurOffices.aspx" style="text-decoration: none;">  <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Our Offices</strong></span></a>
                            </td>
                            
                            
                        </tr>
                      
                      
                    </table>
     <table width = 100% height= 80px border=0 cellpadding = 0 cellspacing=0>
            <tr>
                <td align=center valign=middle style="color: #000000; font-weight: bold; font-size: large;" bgcolor="#99CCFF" class="auto-style1" >
                    <span style="font-size: 10pt; font-family: Verdana; color: #4d6064;">&nbsp; &nbsp; &nbsp; &nbsp;Admin Login screen</span>&nbsp;</td>
                
            </tr>
          
          </table>
    <table style="width: 314px; height: 46px">
                        <tr>
                            <td style="width: 6px; height: 26px;">
                            </td>
                            <td class="auto-style8">
                                <span style="font-size: 10pt; font-family: Verdana">
        <Strong> Admin Login ID </Strong></span></td>
                            <td style="width: 185px; height: 26px;">
                            <asp:TextBox ID="txtAdminId" runat="server" Width="171px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 6px">
                            </td>
                            <td class="auto-style5">
                                <span style="font-size: 10pt; font-family: Verdana">
         <Strong> Password 1 </Strong></span></td>
                            <td style="width: 185px">
                            <input id="txtPassword1"
            style="width: 173px" type="password" runat="server" /></td>
                        </tr>
                        <tr>
                            <td style="width: 6px; height: 4px">
                            </td>
                            <td class="auto-style6">
                                <span style="font-size: 10pt; font-family: Verdana">
        <Strong> Password 2 </Strong></span></td>
                            <td style="width: 185px; height: 4px">
                            <input id="txtPassword2"
            style="width: 173px" type="password" runat="server" /></td>
                        </tr>
                   <tr>
                   <td class="auto-style1">
                   
                   </td>
                   <td class="auto-style7">
                   
                   </td>
                   <td class="auto-style3">
                   
        <asp:Button ID="btnLogin" runat="server" Text="Login " OnClick="btnLogin_Click" Width="86px" />
                   
                   </td>
                   </tr>
                   <tr>
                   <td colspan="3">
        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
            Text=" " Width="314px"></asp:Label>
                   </td>
                   </tr>
                    </table>
                    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 14px;
        }
        .auto-style2 {
            width: 401px;
            height: 14px;
        }
        .auto-style3 {
            width: 185px;
            height: 14px;
        }
        .auto-style4 {
            height: 26px;
            width: 1254px;
        }
        .auto-style5 {
            width: 222px;
        }
        .auto-style6 {
            height: 4px;
            width: 222px;
        }
        .auto-style7 {
            width: 222px;
            height: 14px;
        }
        .auto-style8 {
            height: 26px;
            width: 222px;
        }
        .auto-style9 {
            height: 21px;
            width: 150px;
        }
    </style>
</asp:Content>


