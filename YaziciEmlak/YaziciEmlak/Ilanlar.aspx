<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ilanlar.aspx.cs" Inherits="YaziciEmlak.Ilanlar" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asp.Net</title>
    <link rel="stylesheet" href="ertugrul2/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="ust-menu">
        <div class="logo">
            <img src="ertugrul2/icon/yaziciemlak.png" style="width: 100%; height: 80px;">
        </div>
        <div class="baslik">
            <ul>
             <li><a href="Index.aspx">Anasayfa</a></li>
                <li><a href="Ilanlar.aspx">İlanlarımız</a></li>
                <li><a href="Hakkimizda.aspx">Hakkımızda</a></li>
                <li><a href="Giris.aspx">Giriş Yap</a></li>
                <li><a href="Kayit.aspx">Kayıt Ol</a></li>
            </ul>
        </div>
    </div>

    <div class="govde">
        <div class="galeri">
            <div class="sutun">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="foto">
                            <img src="<%#Eval("ResimYolu")%>">
                            <div class="adres"><%#Eval("Adres")%></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <div class="sutun">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="foto">
                            <img src="<%#Eval("ResimYolu")%>">
                            <div class="adres"><%#Eval("Adres")%></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <div class="sutun">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <div class="foto">
                            <img src="<%#Eval("ResimYolu")%>">
                            <div class="adres"><%#Eval("Adres")%></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>



    <div class="alt-menu">
        <h5>Yazıcı Emlak 2022</h5>
        <div class="iconlar">
            <a href="#">
                <img src="ertugrul2/icon/insta.svg"></a>
            <a href="#">
                <img src="ertugrul2/icon/mail.svg"></a>
        </div>
    </div>
</body>
</html>
