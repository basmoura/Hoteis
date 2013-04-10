<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CadastroHotel.aspx.cs" Inherits="Hoteis.Paginas.CadastroHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>
        Cadastro de Hotéis
    </h1>
    <div>
        <div class="linha">
            <asp:Label ID="lblCodigo" runat="server" Text="Código" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtCodigo" runat="server" CssClass="textbox small"></asp:TextBox>
        </div>
        <div class="linha">
            <asp:Label ID="lblNome" runat="server" Text="Nome" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtNome" runat="server" CssClass="textbox"  Width="252px"></asp:TextBox>
        </div>
    </div>
    <div>
        <div class="linha">
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtEndereco" runat="server" CssClass="textbox" Width="330px"></asp:TextBox>
        </div>
    </div>
    <div>
        <asp:Label ID="lblTelefone" runat="server" Text="Telefone" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtTelefone" runat="server" CssClass="textbox medium"></asp:TextBox>
    </div>
    <div>
        <div class="linha">
            <asp:Label ID="lblCidade" runat="server" Text="Cidade" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtCidade" runat="server" CssClass="textbox"></asp:TextBox>
        </div>
        <div class="linha">
            <asp:Label ID="lblEstado" runat="server" Text="Estado" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtEstado" runat="server" CssClass="textbox"></asp:TextBox>
        </div>
    </div>
    <div style="text-align: center;">
        <asp:Button ID="btnSalvar" runat="server" CssClass="btn info" Text="Salvar" OnClick="btnSalvar_Click" />
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn default" Text="Voltar" />
    </div>
</asp:Content>
