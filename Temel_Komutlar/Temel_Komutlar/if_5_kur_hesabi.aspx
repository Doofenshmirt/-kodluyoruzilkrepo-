<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="if_5_kur_hesabi.aspx.cs" Inherits="Temel_Komutlar.if_5_kur_hesabi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            TL Giriniz:<asp:TextBox ID="tl_txt" runat="server" Width="143px"></asp:TextBox>
            <br />
            <asp:RadioButton ID="radio_dolar" runat="server" GroupName="kur" Text="Dolar" />
            <asp:RadioButton ID="Radio_euro" runat="server" GroupName="kur" Text="Euro" />
            <asp:RadioButton ID="Radio_altin" runat="server" GroupName="kur" Text="Altın" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="hesapla" />
        </div>
    </form>
</body>
</html>
