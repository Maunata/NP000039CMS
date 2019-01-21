<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="OfficeRegistration.aspx.cs" Inherits="OfficeRegistratio" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" cellspacing ="0" cellpadding = "0">
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Create New
                                    Office</span></strong></td>
            <td style="width: 120px">
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 19px;">
            </td>
            <td style="width: 134px; height: 19px;">
            </td>
            <td style="width: 120px; height: 19px;">
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Name<span style="color: #ff0066">*</span></span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Address 1<span
                                    style="color: #ff0066">*</span></span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtaddress1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Address 2</span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtaddress2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 24px;">
            </td>
            <td style="width: 134px; height: 24px;">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Phone 1<span
                                    style="color: #ff0066">*</span></span></td>
            <td style="width: 120px; height: 24px;">
                <asp:TextBox ID="txtphone1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Phone 2</span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtphone2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 24px;">
            </td>
            <td style="width: 134px; height: 24px;">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Cell</span></td>
            <td style="width: 120px; height: 24px;">
                <asp:TextBox ID="txtcell" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">E-Mail<span style="color: #ff0066">*</span></span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Country<span
                                    style="color: #ff0066">*</span></span></td>
            <td style="width: 120px">
                <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 24px;">
            </td>
            <td style="width: 134px; height: 24px;">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">State<span style="color: #ff0066">*</span></span></td>
            <td style="width: 120px; height: 24px;">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 12px;">
            </td>
            <td style="width: 134px; height: 12px;">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">City<span style="color: #ff0066">*</span></span></td>
            <td style="width: 120px; height: 12px;">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 15px;">
            </td>
            <td style="width: 134px; height: 15px;">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Registration Date</span></td>
            <td style="width: 120px; height: 15px;">
                <table style="width: 48%">
                    <tr>
                        <td style="width: 78px">
                            <asp:DropDownList ID="cboregDate" runat="server" Width="36px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 91px">
                            <asp:DropDownList ID="cboregMonth" runat="server" Width="48px">
                                <asp:ListItem>Jan</asp:ListItem>
                                <asp:ListItem>Feb</asp:ListItem>
                                <asp:ListItem>Mar</asp:ListItem>
                                <asp:ListItem>Apr</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>Jun</asp:ListItem>
                                <asp:ListItem>Jul</asp:ListItem>
                                <asp:ListItem>Aug</asp:ListItem>
                                <asp:ListItem>Sep</asp:ListItem>
                                <asp:ListItem>Oct</asp:ListItem>
                                <asp:ListItem>Nov</asp:ListItem>
                                <asp:ListItem>Dec</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="cboregYear" runat="server" Width="52px">
                                <asp:ListItem>2007</asp:ListItem>
                                <asp:ListItem>2008</asp:ListItem>
                                <asp:ListItem>2009</asp:ListItem>
                                <asp:ListItem>2010</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 12px; height: 12px;">
            </td>
            <td style="width: 134px; height: 12px;">
                <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Handles</span></td>
            <td style="width: 120px; height: 12px;">
                <asp:TextBox ID="txthandlers" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 134px">
                                &nbsp;</td>
            <td style="width: 120px">
            </td>
        </tr>
        <tr>
            <td style="width: 12px">
            </td>
            <td style="width: 160px" valign="top">
                <asp:Button ID="btnNext" runat="server"
            Text="Save" Width="133px" OnClick="btnNext_Click" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
            ErrorMessage="Enter the correct email id" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail"
            ErrorMessage="Enter email id" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcountry"
            ErrorMessage="Enter Country"></asp:RequiredFieldValidator>
                <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcity"
            ErrorMessage="Enter City" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtstate"
            ErrorMessage="Enter state" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtphone1"
            ErrorMessage="Enter phone no." SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtaddress1"
            ErrorMessage="Enter Address" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtname"
            ErrorMessage="Enter Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
  
  
            </td>
            <td style="width: 134px" valign="top">
                <asp:Button ID="Button1" runat="server" Text="Search Office Registration>>"
            Width="209px" OnClick="Button1_Click1" PostBackUrl="~/OfficeRegistrationEdit.aspx" CausesValidation="False" />
                
  
  
            </td>
        </tr>
    </table>
</asp:Content>

