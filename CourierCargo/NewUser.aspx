<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="NewUser" Title="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table border="0">
  <tr>
 <td align="center" colspan="2">
Sign Up for Your New Account</td>
       </tr>
         <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User 
                                ID:</asp:Label>
                            </td>
                            <td style="width: 181px">
                                <asp:TextBox ID="UserName" runat="server" ValidationGroup="a"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                    ToolTip="User Name is required." ValidationGroup="a">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                            <td style="width: 181px">
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" 
                                    ValidationGroup="a"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                    ToolTip="Password is required." ValidationGroup="a">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                            </td>
                            <td style="width: 181px">
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" 
                                    ValidationGroup="a"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Confirm Password is required." 
                                    ToolTip="Confirm Password is required." ValidationGroup="a">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td style="width: 181px">
                                <asp:TextBox ID="Email" runat="server" ValidationGroup="a"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required." ValidationGroup="a" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="Button2" runat="server" BackColor="#669999" 
                                    BorderColor="#669999" BorderStyle="Solid" BorderWidth="0px" 
                                    CommandName="cancel" Font-Bold="True" Font-Italic="True" Font-Size="Small" 
                                    ForeColor="Black" Height="25px" Text="Cancel" Width="86px" 
                                    onclick="Button2_Click" />
                            </td>
                            <td style="width: 181px">
                                <asp:Button ID="Button1" runat="server" BackColor="#669999" 
                                    BorderColor="#669999" BorderStyle="Solid" BorderWidth="0px" 
                                    Font-Bold="True" Font-Italic="True" Font-Size="Small" 
                                    ForeColor="Black" Height="25px" Text="Create " Width="98px" 
                                    onclick="Button1_Click1" ValidationGroup="a" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="The Password and Confirmation Password must match." 
                                    ValidationGroup="a"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="Invalid e-mail" SetFocusOnError="True" 
                                    ToolTip="Invalid e-mail" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ValidationGroup="a"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
            
</asp:Content>

