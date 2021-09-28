<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication2.WebForm2" %>

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
        <div style="border: 1px solid #000000; width: 960px">
            <div><uc1:HederControl runat="server" id="HederControl" /></div>
            <div style=" float: left"><uc1:LeftMenuControl runat="server" id="LeftMenuControl" /></div>
            <div style="float: right" style="width: 800px; height: 600px">
                <p>検索条件</p>
                <table style="border: 1px solid #000000; width: 800px;" class="auto-style4">
                    <tr>
                        <td class="auto-style2">管理店番</td>
                        <td class="auto-style3"><asp:TextBox ID="kanritenban" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">部署コード</td>
                        <td><asp:TextBox ID="busyokodo" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">法人番号</td>
                        <td><asp:TextBox ID="houjinbango" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td class="auto-style2">取引先名</td>
                        <td class="auto-style3"><asp:TextBox ID="torihikisaki" runat="server" Width="300px"></asp:TextBox></td>
                    </tr>
                </table>
                <div style="margin-left:350px; margin-right: 350px;">
                    <asp:Button ID="Button1" runat="server" Text="検索" width="100px" height="30px" OnClick="Button1_Click" />
                </div>
            </div>

        </div>
    </form>
</body>
</html>
