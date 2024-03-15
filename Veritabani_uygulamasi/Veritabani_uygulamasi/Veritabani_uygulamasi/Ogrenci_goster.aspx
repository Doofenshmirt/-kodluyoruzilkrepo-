<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ogrenci_goster.aspx.cs" Inherits="Veritabani_uygulamasi.Ogrenci_goster" %>
<%@ Import Namespace="Veritabani_uygulamasi" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
   
    <form id="form1" runat="server">
        <% ArrayList ogrenci_listem =  new Ogrenciler_dao().tum_ogrencileri_getir(); %>
        <div>
            <table class="table">
                <tr>
                    <td>Öğrenci No</td>
                    <td>Ad Soyad</td>
                    <td>Doğum Tarihi</td>
                    <td>Adresz</td>
                    <td>Sil</td>
                    <td>Düzenle</td>
                </tr>

                <% foreach (Ogrenciler gelen_ogr in ogrenci_listem)
                    {
                %>
                <tr>
                    <td><%Response.Write(gelen_ogr.og_no);%></td>
                    <td><%Response.Write(gelen_ogr.ad_soyad);%></td>
                    <td><%=gelen_ogr.dog_tar.ToShortDateString()%></td>
                    <td><%=gelen_ogr.adres%></td>
                    <td><a href="ogrenci_sil.aspx?og_no=<%=gelen_ogr.og_no %>" class="btn btn-danger">SİL</a></td>
                    <td><a href="ogrenci_duzenle.aspx?og_no=<%=gelen_ogr.og_no %>" class="btn btn-primary">DÜZENLE</a></td>
                </tr>



                <%   
                    }
                %>
            </table>



        </div>
    </form>
</body>
</html>
