<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="if_2.aspx.cs" Inherits="Temel_Komutlar.if_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Kullanıcı Adı:<asp:TextBox ID="Kuladi_txt" runat="server"></asp:TextBox>
            <br />
            Şifre:<asp:TextBox ID="sifre_txt" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" />
        </div>
    </form>
</body>
</html>
