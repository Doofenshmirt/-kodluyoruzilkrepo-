<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hesap_makinasi.aspx.cs" Inherits="Temel_Komutlar.Hesap_makinasi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            1. sayıyı Giriniz:<asp:TextBox ID="sayi1_txt" runat="server"></asp:TextBox>
            2. sayıyı giriniz:<asp:TextBox ID="sayi2_txt" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="topla_btn" runat="server" BackColor="#FF0066" OnClick="topla_btn_Click" Text="+" />
            <asp:Button ID="cikar_btn" runat="server" BackColor="#FF0066" Text="-" OnClick="cikar_btn_Click" />
            <asp:Button ID="carp_btn" runat="server" BackColor="#FF0066" Text="*" OnClick="carp_btn_Click" />
            <asp:Button ID="bol_btn" runat="server" BackColor="#FF0066" Text="/" />
        </div>
    </form>
</body>
</html>
