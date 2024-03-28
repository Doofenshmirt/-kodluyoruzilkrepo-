<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit_takip.aspx.cs" Inherits="Kirtasiye_kayit_takip.kayit_takip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="328px" Width="731px"></asp:ListBox>
    </form>
</body>
</html>
