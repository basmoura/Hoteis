<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Hoteis.Paginas.AreaDeLazer.Cadastrar" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastrar Área de Lazer</h1>
    <div class="linha">
        <asp:Label ID="lblCodigo" runat="server" Text="Código" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtCodigo" runat="server" MaxLength="6" CssClass="textbox"></asp:TextBox>
        <ajaxToolkit:FilteredTextBoxExtender ID="fteCodigo" runat="server" FilterType="Numbers" TargetControlID="txtCodigo"></ajaxToolkit:FilteredTextBoxExtender>
        <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Campo 'Código' é obrigatório" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div class="linha">
        <asp:Label ID="lblHotel" runat="server" Text="Hotel" CssClass="label"></asp:Label><br />
        <asp:DropDownList ID="ddlHoteis" runat="server" DataTextField="nome" DataValueField="codigo" CssClass="dropdown" AppendDataBoundItems="True" OnDataBinding="ddlHoteis_DataBinding">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvHoteis" runat="server" ControlToValidate="ddlHoteis" ErrorMessage="Campo 'Hotel' é obrigatório" Text="*" InitialValue="0"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtDescricao" runat="server" CssClass="textbox medium" MaxLength="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDescricao" runat="server" ControlToValidate="txtDescricao" ErrorMessage="Campo 'Descrição' é obrigatório" Text="*"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="lblMaximoPessoas" runat="server" Text="Número máximo de pessoas" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtMaximoPessoas" runat="server" CssClass="textbox medium" MaxLength="5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMaximoPessoas" runat="server" ControlToValidate="txtMaximoPessoas" ErrorMessage="Campo 'Número máximo de pessoas' é obrigatório" Text="*"></asp:RequiredFieldValidator>
        <ajaxToolkit:FilteredTextBoxExtender ID="fteMaximoPessoas" runat="server" FilterType="Numbers" TargetControlID="txtMaximoPessoas"></ajaxToolkit:FilteredTextBoxExtender>
    </div>
    <div style="text-align: center;">
        <asp:Button ID="btnSalvar" runat="server" CssClass="btn info" Text="Salvar" OnClick="btnSalvar_Click" />
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn default" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="false" />
    </div>
</asp:Content>
