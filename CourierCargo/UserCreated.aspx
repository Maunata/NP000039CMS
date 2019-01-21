<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserCreated.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Account Created</title>
    <script language="javascript" type="text/javascript">
    window.history.forward(1);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
    Your Acccount has been created.</br>
        <asp:Button ID="Button1" runat="server" 
            style="top: 89px; left: 229px; position: absolute; height: 43px; width: 135px" 
            Text="Continue" BackColor="#006699" BorderColor="#006699" 
            BorderStyle="Outset" BorderWidth="2px" Font-Bold="True" Font-Italic="True" 
            Font-Size="Medium" ForeColor="White" onclick="Button1_Click" />  
    </h1>
   </div>
    </form>
</body>
</html>
