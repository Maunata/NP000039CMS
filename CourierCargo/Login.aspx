<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Login.aspx.cs" Inherits="_Default" Title="User Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 78px;
            width: 2503px;
        }
        .auto-style2 {
            height: 21px;
            width: 344px;
        }
        .auto-style3 {
            height: 21px;
            width: 197px;
        }
        .auto-style4 {
            width: 989px;
        }
    </style>
    </head>
<body topmargin=0 bottommargin=0 rightmargin=0 leftmargin=0>
    <form id="form1" runat="server">
        <table width =100%  border= 0 cellpadding=0 cellspacing=0>
            <tr>
                <td height=20px>
                </td>
                       
            </tr>
            <tr>
                <td height = 12px bgcolor = #4d6064>
                
                </td>
               
            </tr>
            <tr>
                <td height = 15px  >
                     <table class="auto-style4">
                        <tr>
                           <td style="height: 21px" align=center width = 99px>
                            &nbsp;
                            </td>
                            <td align=center class="auto-style2">
                            &nbsp;<a href ="FrmAdmin.aspx" style="text-decoration: none;"><span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Administration Login</strong></span></a>
                            </td>
                             <td align=center class="auto-style3">
                            <a href ="ContactUs.aspx" style="text-decoration: none;"> <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>About
                                us</strong></span></a>
                            </td>
                         
                            <td style="height: 21px" align=center width = 150px>
                           <a href ="OurOffices.aspx" style="text-decoration: none;">  <span style="font-size: 8pt; font-family: Verdana; color: #4d6064;"><strong>Our Offices</strong></span></a>
                            </td>
                            
                            
                        </tr>
                      
                      
                    </table>
                     
                </td>
              
            </tr>
            
        </table>
        <table width = 100% height= 80px border=0 cellpadding = 0 cellspacing=0>
            <tr>
                <td align=center valign=middle style="color: #000000; font-weight: bold; font-size: large;" bgcolor="#99CCFF" class="auto-style1" >
                    <span style="font-size: 10pt; font-family: Verdana; color: #4d6064;">&nbsp; &nbsp; &nbsp; &nbsp;User Login screen</span>&nbsp;</td>
                
            </tr>
          
          </table>
          <hr />
        <table style="width: 100%">
            <tr>
                <td style="width: 206px; height: 28px;" >
                </td>
                <td style="width: 148px; height: 28px">
                </td>
                <td style="height: 28px">
                </td>
            </tr>
            <tr>
                <td style="width: 206px; height: 160px;" align=right >
                </td>
                
                <td style="height: 160px" align="left" valign="top">
                    <table style="width: 314px; height: 46px">
                        <tr>
                            <td style="width: 6px">
                            </td>
                            <td style="width: 63px">
                                <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">User Id</span></strong></td>
                            <td style="width: 64px">
        <asp:TextBox ID="txtuserid" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 6px">
                            </td>
                            <td style="width: 63px">
                                <strong><span style="font-size: 8pt; color: #4d6064; font-family: Verdana">
        Password</span></strong></td>
                            <td style="width: 64px">
                            <input id="txtpassword" runat="server" type="password" style="width: 148px" /></td>
                        </tr>
                        <tr>
                            <td style="width: 6px; height: 4px">
                            </td>
                            <td style="width: 63px; height: 4px">
                            </td>
                            <td style="width: 64px; height: 4px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 6px; height: 4px">
                            </td>
                            <td style="width: 63px; height: 4px">
                            </td>
                            <td style="width: 64px; height: 4px">
        <asp:Button ID="Button1" runat="server" Text="Login In" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 6px; height: 4px">
                            </td>
                            <td style="width: 63px; height: 4px">
                            </td>
                            <td style="width: 64px; height: 4px">
                            </td>
                        </tr>
                    </table>
                    &nbsp; &nbsp;
        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"
            Text=" " Width="289px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 206px; height: 22px">
                </td>
                <td style="height: 22px; width: 148px;">
                </td>
                <td style="height: 22px">
                </td>
            </tr>
        </table>
    
   
    <div>
        &nbsp;</div>
    </form>
</body>
</html>
