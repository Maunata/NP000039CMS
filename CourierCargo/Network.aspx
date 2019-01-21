<%@ Page Language="C#"MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Network.aspx.cs" Inherits="Network" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                   
         
      
    <div>
        <table style="width: 100%">
            <tr>
                <td style="width: 132px; height: 250px;" valign=top >
                   
                </td>
                <td style="width: 590px; height: 250px" valign="top">
                    <div style="text-align: left">
                        <table style="width: 133%">
                            <tr>
                                <td style="width: 165px; height: 21px">
                                    <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Add Network</span></strong></td>
                                <td style="width: 100px; height: 21px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Company Name</span>&nbsp;</td>
                                <td style="width: 100px">
        <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 165px; height: 22px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Company Office</span></td>
                                <td style="width: 100px; height: 22px">
                                    <asp:TextBox ID="txtCompanyOffice" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 165px; height: 22px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Website</span></td>
                                <td style="width: 100px; height: 22px">
        <asp:TextBox ID="txtWebSite" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 165px; height: 19px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Customer Care No</span></td>
                                <td style="width: 100px; height: 19px">
        <asp:TextBox ID="txtCNumber" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 165px; height: 26px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Collaborated ?</span></td>
                                <td style="width: 100px; height: 26px">
                                    <asp:RadioButtonList ID="rblCollabated" runat="server">
                                        <asp:ListItem Selected="True">Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:RadioButtonList></td>
                            </tr>
                            <tr>
                                <td style="width: 165px; height: 22px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">
        Date Collaboration</span>&nbsp;</td>
                                <td style="width: 100px; height: 22px">
                                    <table style="width: 167px">
                                        <tr>
                                            <td style="width: 100px">
        <asp:DropDownList ID="cboDateExp" runat="server" Width="48px">
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
        </asp:DropDownList></td>
                                            <td style="width: 100px">
                                                <asp:DropDownList ID="cboExpMonth" runat="server" Width="48px">
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
        </asp:DropDownList></td>
                                            <td style="width: 100px">
                                                <asp:DropDownList ID="cboExpYear" runat="server" Width="53px">
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
        </asp:DropDownList></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px; height: 22px">
                                    <span style="font-size: 10pt; color: #4d6064; font-family: Verdana">Handles</span>
                                </td>
                                <td style="width: 100px; height: 22px" valign="middle">
                                    &nbsp;<asp:DropDownList ID="cboHandles" runat="server" Width="116px">
                                        <asp:ListItem>Cargo</asp:ListItem>
                                        <asp:ListItem>Courier</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
        <asp:Button ID="btnAdd" runat="server" Text="Add Network" Width="135px" OnClick="btnAdd_Click1"  /></td>
                                <td style="width: 100px"><asp:Button ID="btnSearch" runat="server" Text="Search >>" Width="135px"  PostBackUrl="~/NetworkEdit.aspx" OnClick="btnSearch_Click" /></td>
                            </tr>
                        </table>
                    </div>
                    <asp:Label ID="lblMessage" runat="server" Text=" " Width="306px"></asp:Label></td>
                <td style="width: 98px; height: 250px;" align="right" valign="top">
                    <table style="width: 125px">
                        </table>
                </td>
            </tr>
        </table>
    
    </div>
    <div>
        &nbsp; &nbsp;
    
    </div>
 </asp:Content>
