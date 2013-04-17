<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Hoteis.Paginas.Reserva.Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastrar Reserva</h1>
    <div>
        <div class="linha">
            <asp:Label ID="lblHotel" runat="server" Text="Hotel" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlHoteis" runat="server" DataTextField="nome" DataValueField="codigo" CssClass="dropdown"></asp:DropDownList>
        </div>
        <div class="linha">
            <asp:Label ID="lblCliente" runat="server" Text="Cliente" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlClientes" runat="server" DataTextField="nome" DataValueField="nome" CssClass="dropdown"></asp:DropDownList>
        </div>
    </div>
    <div>
        <div class="linha">
            <asp:Label ID="lblQuarto" runat="server" Text="Quarto" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlQuartos" runat="server" DataTextField="nrQuarto" DataValueField="nrQuarto" CssClass="dropdown"></asp:DropDownList>
        </div>
        <div class="linha">
            <asp:Label ID="lblDataReserva" runat="server" Text="Data de Reserva" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtDataReserva" runat="server" CssClass="textbox"></asp:TextBox>
        </div>
    </div>
</asp:Content>
