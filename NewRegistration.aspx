<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRegistration.aspx.cs" Inherits="WebApplication2.NewRecord" %>

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
            <div ><uc1:HederControl runat="server" ID="HederControl" /></div>
            <div style="float: left;"><uc1:LeftMenuControl runat="server" ID="LeftMenuControl" /></div>
            <div style="border: 1px solid #000000; width: 800px; height: 600px; float: right">
                <div><p>新規登録</p></div>
                <div>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style1">管理店番</td>
                            <td><asp:TextBox ID="TextBox1" runat="server">&nbsp;</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">部署コード</td>
                            <td><asp:TextBox ID="TextBox2" runat="server">&nbsp;</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">法人番号</td>
                            <td><asp:TextBox ID="TextBox3" runat="server">&nbsp;</asp:TextBox></td>
                        </tr>
                         <tr>
                            <td class="auto-style1">取引先名</td>
                            <td><asp:TextBox ID="TextBox4" runat="server" Width="400px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">取引先名カナ</td>
                            <td><asp:TextBox ID="TextBox5" runat="server" Width="400px"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>
                <div style="margin-left:350px; margin-right: 350px;">
                    <asp:Button ID="Button1"　width="100px" height="30px" runat="server" Text="登録" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
