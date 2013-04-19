<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Hoteis.Paginas.Tipo.Cadastrar" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastrar Tipo</h1>
    <div>
        <asp:Label ID="lblIdTipo" runat="server" Text="Código" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtIdTipo" runat="server" CssClass="textbox" MaxLength="6"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTipo" runat="server" ControlToValidate="txtIdTipo" ErrorMessage="Campo 'Código' é obrigatório" Text="*"></asp:RequiredFieldValidator>
        <ajaxToolkit:FilteredTextBoxExtender ID="ftbIdTipo" runat="server" FilterType="Numbers" TargetControlID="txtIdTipo"></ajaxToolkit:FilteredTextBoxExtender>
    </div>
    <div>
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtDescricao" runat="server" CssClass="textbox large" MaxLength="40"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDescricao" runat="server" ControlToValidate="txtDescricao" ErrorMessage="Campo 'Descrição' é obrigatório" Text="*"></asp:RequiredFieldValidator>
    </div>
    <div style="text-align: center;">
        <asp:Button ID="btnSalvar" runat="server" CssClass="btn info" Text="Salvar" OnClick="btnSalvar_Click" />
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn default" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="false" />
    </div>
</asp:Content>
