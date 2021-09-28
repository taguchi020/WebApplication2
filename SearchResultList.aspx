<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResultList.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<%@ Register Src="~/HederControl.ascx" TagPrefix="uc1" TagName="HederControl" %>
<%@ Register Src="~/LeftMenuControl.ascx" TagPrefix="uc1" TagName="LeftMenuControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="float: left">
        <div style = "border: 1px solid #000000; width:960px">
            <div ><uc1:HederControl runat="server" id="HederControl" /></div>
            <div style=" float: left"><uc1:LeftMenuControl runat="server" id="LeftMenuControl" /></div>
            <div style="float: right">
                <p>検索結果一覧</p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="800px" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField HeaderText="法人番号" DataField="法人番号"　SortExpression="法人番号" />
                        <asp:BoundField HeaderText="管理店番" DataField="管理店番" SortExpression="管理店番" />
                        <asp:BoundField HeaderText="部署" DataField="部署コード" SortExpression="部署コード" />
                        <asp:BoundField HeaderText="法人名" DataField="取引先名" SortExpression="取引先名" />
                        <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="参照" ShowHeader="True" Text="選択" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:法人DBConnectionString %>" ></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
