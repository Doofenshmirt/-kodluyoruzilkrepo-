<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogrenci_duzenle.aspx.cs" Inherits="Veritabani_uygulamasi.ogrenci_duzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.table{--bs-table-color-type:initial;--bs-table-bg-type:initial;--bs-table-color-state:initial;--bs-table-bg-state:initial;--bs-table-color:var(--bs-emphasis-color);--bs-table-bg:var(--bs-body-bg);--bs-table-border-color:var(--bs-border-color);--bs-table-accent-bg:transparent;--bs-table-striped-color:var(--bs-emphasis-color);--bs-table-striped-bg:rgba(var(--bs-emphasis-color-rgb), 0.05);--bs-table-active-color:var(--bs-emphasis-color);--bs-table-active-bg:rgba(var(--bs-emphasis-color-rgb), 0.1);--bs-table-hover-color:var(--bs-emphasis-color);--bs-table-hover-bg:rgba(var(--bs-emphasis-color-rgb), 0.075);width:100%;margin-bottom:1rem;vertical-align:top;border-color:var(--bs-table-border-color)}table{caption-side:bottom;border-collapse:collapse}*,::after,::before{box-sizing:border-box}.table>tbody{vertical-align:inherit}tbody,td,tfoot,th,thead,tr{border-color:inherit;border-style:solid;border-width:0}.form-control{transition:none}.form-control{display:block;width:100%;padding:.375rem .75rem;font-size:1rem;font-weight:400;line-height:1.5;color:var(--bs-body-color);-webkit-appearance:none;-moz-appearance:none;appearance:none;background-color:var(--bs-body-bg);background-clip:padding-box;border:var(--bs-border-width) solid var(--bs-border-color);border-radius:var(--bs-border-radius);transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}textarea.form-control{min-height:calc(1.5em + .75rem + calc(var(--bs-border-width) * 2))}textarea{resize:vertical}.btn-success{--bs-btn-color:#fff;--bs-btn-bg:#198754;--bs-btn-border-color:#198754;--bs-btn-hover-color:#fff;--bs-btn-hover-bg:#157347;--bs-btn-hover-border-color:#146c43;--bs-btn-focus-shadow-rgb:60,153,110;--bs-btn-active-color:#fff;--bs-btn-active-bg:#146c43;--bs-btn-active-border-color:#13653f;--bs-btn-active-shadow:inset 0 3px 5px rgba(0, 0, 0, 0.125);--bs-btn-disabled-color:#fff;--bs-btn-disabled-bg:#198754;--bs-btn-disabled-border-color:#198754}.btn{transition:none}.btn{--bs-btn-padding-x:0.75rem;--bs-btn-padding-y:0.375rem;--bs-btn-font-family: ;--bs-btn-font-size:1rem;--bs-btn-font-weight:400;--bs-btn-line-height:1.5;--bs-btn-color:var(--bs-body-color);--bs-btn-bg:transparent;--bs-btn-border-width:var(--bs-border-width);--bs-btn-border-color:transparent;--bs-btn-border-radius:var(--bs-border-radius);--bs-btn-hover-border-color:transparent;--bs-btn-box-shadow:inset 0 1px 0 rgba(255, 255, 255, 0.15),0 1px 1px rgba(0, 0, 0, 0.075);--bs-btn-disabled-opacity:0.65;--bs-btn-focus-box-shadow:0 0 0 0.25rem rgba(var(--bs-btn-focus-shadow-rgb), .5);display:inline-block;padding:var(--bs-btn-padding-y) var(--bs-btn-padding-x);font-family:var(--bs-btn-font-family);font-size:var(--bs-btn-font-size);font-weight:var(--bs-btn-font-weight);line-height:var(--bs-btn-line-height);color:var(--bs-btn-color);text-align:center;text-decoration:none;vertical-align:middle;cursor:pointer;-webkit-user-select:none;-moz-user-select:none;user-select:none;border:var(--bs-btn-border-width) solid var(--bs-btn-border-color);border-radius:var(--bs-btn-border-radius);background-color:var(--bs-btn-bg);transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button}</style>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table  class="table table-striped">
                <tr>
                    <td class="auto-style1">Öğrenci Numarası:</td>
                    <td>
                        <asp:TextBox ID="ogno_txt" runat="server" CssClass="form-control" Width="100" ReadOnly="True"></asp:TextBox>
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
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Güncelle" CssClass="btn btn-success" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
