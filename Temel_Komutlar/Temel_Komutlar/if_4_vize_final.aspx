<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="if_4_vize_final.aspx.cs" Inherits="Temel_Komutlar.if_4_vize_final" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Vize Giriniz:<asp:TextBox ID="vize_txt" runat="server" Width="53px"></asp:TextBox>
            <br />
            Final Giriniz:<asp:TextBox ID="final_txt" runat="server" Width="53px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Hesapla" />
            <br />
            <asp:Label ID="sonuc_lbl" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
