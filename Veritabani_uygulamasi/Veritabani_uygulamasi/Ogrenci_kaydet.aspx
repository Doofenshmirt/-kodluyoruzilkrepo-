<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ogrenci_kaydet.aspx.cs" Inherits="Veritabani_uygulamasi.Ogrenci_kaydet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table  class="table table-striped">
                <tr>
                    <td class="auto-style1">Öğrenci Numarası:</td>
                    <td>
                        <asp:TextBox ID="ogno_txt" runat="server" CssClass="form-control" Width="100"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Ad soyad:</td>
                    <td>
                        <asp:TextBox ID="ad_soyad_txt" runat="server" CssClass="form-control" Width="150"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Doğum Tarihi:</td>
                    <td>
                        <asp:TextBox ID="dog_tar_txt" runat="server" CssClass="form-control" Width="150"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Adres:</td>
                    <td>
                        <asp:TextBox ID="adres_txt" runat="server" Height="212px" TextMode="MultiLine" Width="306px" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" CssClass="btn btn-success" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
