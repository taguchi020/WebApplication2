<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftMenuControl.ascx.cs" Inherits="WebApplication2.LeftMenuControl" %>
<div style="border: 1px solid #000000; width: 150px; height: 400px">
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">検索画面</asp:LinkButton><br>
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">新規作成</asp:LinkButton><br>
    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">編集画面</asp:LinkButton><br>
    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">削除画面</asp:LinkButton><br>
</div>
