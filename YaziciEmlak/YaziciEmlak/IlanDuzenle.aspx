<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="IlanDuzenle.aspx.cs" Inherits="YaziciEmlak.IlanDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="table table-hover">
        <tr>
            <th>İlan ID
            </th>
            <th>Resim Yolu
            </th>
            <th>Adres
            </th>
            <th>Resim
            </th>
            <th>Sil
            </th>
            <th>Düzenle
            </th>
            <th>Ekle
            </th>
        </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("IlanID") %></td>
                    <td><%# Eval("ResimYolu") %></td>
                    <td><%# Eval("Adres") %></td>
                    <td>
                        <img src="<%#Eval("ResimYolu")%>" height="70" width="90" alt="<%#Eval("ResimYolu")%>"></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"IlanSil.aspx?IlanID="+Eval("IlanID")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"IlanGuncelle.aspx?IlanID="+Eval("IlanID")%>' runat="server" CssClass="btn btn-warning">DÜZENLE</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink3" NavigateUrl="YeniIlanEkle.aspx" runat="server" CssClass="btn btn-success">Yeni İlan Ekle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div style="margin-left: 20px">
    </div>
</asp:Content>
