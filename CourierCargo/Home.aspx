<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Homee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 100%; height: 300px">
    <tr>
        <td valign="top">
            <table style="width: 100%">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td align="center" style="width: 2759px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bahnschrift" 
                            Font-Size="Larger" ForeColor="Black" Text="Welcome to Maresk Line Container Management System !" Font-Italic="True"></asp:Label>
                    </td>
                   
                </tr>
            </table>
            <table style="width: 100%; height: 100%">
                <tr>
                    <td bgcolor="#33CCFF" valign="top">
                      <asp:Image ID="Image1" runat="server" ImageUrl="~/Design/Parts/images/dreamstime_s_87225699-680x0-c-default.jpg" style="margin-left: 0px" Width="1053px" Height="540px" />   </td>
                </tr>
               
            </table>
        </td>
    </tr>
</table>
</asp:Content>

