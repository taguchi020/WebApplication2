<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditRegistration.aspx.cs" Inherits="WebApplication2.EditRegistration" %>

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
            <div style="float: left"><uc1:LeftMenuControl runat="server" ID="LeftMenuControl" /></div>
            <div style="border: 1px solid #000000; float: left">
                <div><p>編集登録</p></div>
                <div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:法人DBConnectionString %>" SelectCommand="SELECT * FROM [取引先]"></asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging">
                        <EditItemTemplate>
                            法人番号:
                            <asp:TextBox ID="法人番号TextBox" runat="server" Text='<%# Bind("法人番号") %>' />
                            <br />
                            管理店番:
                            <asp:TextBox ID="管理店番TextBox" runat="server" Text='<%# Bind("管理店番") %>' />
                            <br />
                            部署コード:
                            <asp:TextBox ID="部署コードTextBox" runat="server" Text='<%# Bind("部署コード") %>' />
                            <br />
                            取引先名:
                            <asp:TextBox ID="取引先名TextBox" runat="server" Text='<%# Bind("取引先名") %>' />
                            <br />
                            取引先カナ:
                            <asp:TextBox ID="取引先カナTextBox" runat="server" Text='<%# Bind("取引先カナ") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            法人番号:
                            <asp:TextBox ID="法人番号TextBox" runat="server" Text='<%# Bind("法人番号") %>' />
                            <br />
                            管理店番:
                            <asp:TextBox ID="管理店番TextBox" runat="server" Text='<%# Bind("管理店番") %>' />
                            <br />
                            部署コード:
                            <asp:TextBox ID="部署コードTextBox" runat="server" Text='<%# Bind("部署コード") %>' />
                            <br />
                            取引先名:
                            <asp:TextBox ID="取引先名TextBox" runat="server" Text='<%# Bind("取引先名") %>' />
                            <br />
                            取引先カナ:
                            <asp:TextBox ID="取引先カナTextBox" runat="server" Text='<%# Bind("取引先カナ") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="挿入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            法人番号:
                            <asp:Label ID="法人番号Label" runat="server" Text='<%# Bind("法人番号") %>' />
                            <br />
                            管理店番:
                            <asp:Label ID="管理店番Label" runat="server" Text='<%# Bind("管理店番") %>' />
                            <br />
                            部署コード:
                            <asp:Label ID="部署コードLabel" runat="server" Text='<%# Bind("部署コード") %>' />
                            <br />
                            取引先名:
                            <asp:Label ID="取引先名Label" runat="server" Text='<%# Bind("取引先名") %>' />
                            <br />
                            取引先カナ:
                            <asp:Label ID="取引先カナLabel" runat="server" Text='<%# Bind("取引先カナ") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
