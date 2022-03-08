<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="IlanGuncelle.aspx.cs" Inherits="YaziciEmlak.IlanGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <h2 style="color: red; margin-left: 20px">İLAN GÜNCELLE</h2>
    <br />

    <form runat="server" style="margin-left: 20px" class="form-group">
        <div>
            <asp:Label for="TxtAdres" Style="color: red" runat="server" Text="Adres"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtAdres" required="" runat="server" CssClass="form-control" placeholder="Adres Giriniz"></asp:TextBox>
        </div>
        <br />
          <div>
            <asp:Label for="TxtResimYolu" Style="color: red" runat="server" Text="Resim Yolu"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtResimYolu" required="" runat="server" CssClass="form-control" placeholder="Resim Yolu Giriniz"></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:Label for="FileUpload1" runat="server" Style="color: red" Text="Resim "></asp:Label>
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        </div>
        <br />
        <asp:Button ID="BtnIlanGuncelle" runat="server" Text="İlanı Güncelle" CssClass="btn btn-warning" OnClick="BtnIlanGuncelle_Click"  />
    </form>
    <br />
</asp:Content>
