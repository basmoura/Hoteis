<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Hoteis.Paginas.AreaDeLazer.Cadastrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastrar Área de Lazer</h1>
    <div class="linha">
        <asp:Label ID="lblCodigo" runat="server" Text="Código" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtCodigo" runat="server" MaxLength="6" CssClass="textbox"></asp:TextBox>
    </div>
    <div class="linha">
        <asp:Label ID="lblHotel" runat="server" Text="Hotel" CssClass="label"></asp:Label><br />
        <asp:DropDownList ID="ddlHoteis" runat="server" DataTextField="nome" DataValueField="codigo" CssClass="dropdown" AppendDataBoundItems="True" OnDataBinding="ddlHoteis_DataBinding">
        </asp:DropDownList>
    </div>
</asp:Content>
