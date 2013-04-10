<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CadastroQuartos.aspx.cs" Inherits="Hoteis.Paginas.CadastroQuartos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>
        Cadastro de Quartos</h1>
    <div>
        <asp:Label ID="lblHotel" runat="server" Text="Hotel" CssClass="label"></asp:Label><br />
        <asp:DropDownList ID="ddlHoteis" runat="server" CssClass="dropdown">
        </asp:DropDownList>
    </div>
</asp:Content>
