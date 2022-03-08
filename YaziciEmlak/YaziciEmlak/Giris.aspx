<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="YaziciEmlak.Giris" %>

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
    <div class="ust-menu" >
        <div class="logo">
            <img src="ertugrul2/icon/yaziciemlak.png" style="width: 100%;height: 80px;">
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


    <div class="govde" style="background-image: url(ertugrul2/img/house.jpg);padding-top: 10%;">
        <div class="giris">
            <div class="giris-icon" style="background-image: url(ertugrul2/icon/login.png);"> </div>
            <div class="form">
                <form runat="server" method="post">
                    <h4>Kullanıcı Adı:</h4>
                    <asp:TextBox ID="TxtKullanici" type="text" placeholder="Kullanıcı Adınızı Giriniz" runat="server" required=""></asp:TextBox>
                    <h4>Şifre: </h4>
                    <asp:TextBox ID="TxtParola" type="password" placeholder="Parola Giriniz" runat="server" required=""></asp:TextBox>
                    <br> <br>
                    <button>Giriş Yap</button>
                </form>
            </div>
        </div>
    </div>





    <div class="alt-menu">
        <h5>Yazıcı Emlak 2022</h5>
        <div class="iconlar">
            <a href="#"><img src="ertugrul2/icon/insta.svg"></a>
            <a href="#"><img src="ertugrul2/icon/mail.svg"></a>
        </div>
    </div>
</body>
</html>
