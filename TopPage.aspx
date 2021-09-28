<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopPage.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<%@ Register Src="~/HederControl.ascx" TagPrefix="uc1" TagName="HederControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body style="font-size: 30px; font-weight: bold">
    <form id="form1" runat="server">
        <div style="border: 1px solid #000000; width: 960px">
            <div style="border: 1px solid #000000"><uc1:HederControl runat="server" ID="HederControl" /></div>
            <div style="border: 1px solid #000000; float: left; width: 150px; height: 400px"></div>
            <div style="border: 1px solid #000000; float: right"><asp:ImageButton ID="ImageButton1" runat="server" src="Images/worldmap.jpg" OnClick="ImageButton1_Click" /></div>
        </div>
    </form>
</body>
</html>

