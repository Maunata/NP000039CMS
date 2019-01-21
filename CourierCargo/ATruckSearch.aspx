<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ATruckSearch.aspx.cs" Inherits="ATruckSerch" Title="Truck Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 17px; height: 8px">
            </td>
            <td align="left" style="width: 175px; height: 8px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 17px; height: 8px">
            </td>
            <td align="left" style="width: 175px; height: 8px" valign="top">
                <span style="font-size: 9pt; color: #3333cc; font-family: Verdana"><strong>Search Truck</strong></span></td>
        </tr>
        <tr>
            <td style="width: 17px; height: 7px">
            </td>
            <td align="left" style="width: 175px; height: 7px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 17px; height: 17px">
                <img src="Design/arrow.JPG" />
            </td>
            <td align="left" style="width: 175px; height: 17px" valign="top">
                <a href="ASearchTruckByOffice.aspx" style="text-decoration: none"><strong>
                <span style="font-size: 8pt;
                                    color: #4d6064; font-family: Verdana">By Office</span></strong>&nbsp;</a></td>
        </tr>
        <tr>
            <td style="width: 17px; height: 14px">
                <img src="Design/arrow.JPG" />
            </td>
            <td align="left" style="width: 175px; height: 14px" valign="top">
                <a href="ASearchTruckByTruckNo.aspx" style="text-decoration: none"><strong>
                <span
                                    style="font-size: 8pt; color: #4d6064; font-family: Verdana">By Truck No</span></strong></a></td>
        </tr>
    </table>
</asp:Content>

