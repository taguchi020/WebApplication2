<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteRecord.aspx.cs" Inherits="WebApplication2.DeleteRecord" %>

<%@ Register Src="~/HederControl.ascx" TagPrefix="uc1" TagName="HederControl" %>
<%@ Register Src="~/LeftMenuControl.ascx" TagPrefix="uc1" TagName="LeftMenuControl" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:HederControl runat="server" ID="HederControl" />
        <uc1:LeftMenuControl runat="server" ID="LeftMenuControl" />
        <div>
        </div>
    </form>
</body>
</html>
