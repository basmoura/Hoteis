<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Cadastrar.aspx.cs" Inherits="Hoteis.Paginas.Hotel.Cadastrar" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastrar Hotel
    </h1>
    <div>
        <div class="linha">
            <asp:Label ID="lblCodigo" runat="server" Text="Código" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtCodigo" runat="server" CssClass="textbox small" MaxLength="6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Campo 'Código' é obrigatório" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
            <ajaxToolkit:FilteredTextBoxExtender ID="ftbCodigo" runat="server" FilterType="Numbers" TargetControlID="txtCodigo">
            </ajaxToolkit:FilteredTextBoxExtender>
        </div>
        <div class="linha">
            <asp:Label ID="lblNome" runat="server" Text="Nome" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtNome" runat="server" CssClass="textbox" Width="252px" MaxLength="60"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo 'Nome' é obrigatório" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div>
        <div class="linha">
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtEndereco" runat="server" CssClass="textbox" Width="330px" MaxLength="80"></asp:TextBox>
        </div>
    </div>
    <div>
        <asp:Label ID="lblTelefone" runat="server" Text="Telefone" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtTelefone" runat="server" CssClass="textbox medium"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revTelefone" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Campo 'Telefone' está inválido" Text="*" ValidationExpression="^\(\d{2}\)\d{4}-\d{4}$"></asp:RegularExpressionValidator>
        <ajaxToolkit:MaskedEditExtender ID="meeTelefone" runat="server" MaskType="Number" Mask="(99)9999-9999" ClearMaskOnLostFocus="false" TargetControlID="txtTelefone">
        </ajaxToolkit:MaskedEditExtender>
    </div>
    <div>
        <div class="linha">
            <asp:Label ID="lblCidade" runat="server" Text="Cidade" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtCidade" runat="server" CssClass="textbox" MaxLength="20"></asp:TextBox>
        </div>
        <div class="linha">
            <asp:Label ID="lblEstado" runat="server" Text="Estado" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtEstado" runat="server" CssClass="textbox" MaxLength="20"></asp:TextBox>
        </div>
    </div>
    <div style="text-align: center;">
        <asp:Button ID="btnSalvar" runat="server" CssClass="btn info" Text="Salvar" OnClick="btnSalvar_Click" />
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn default" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="false" />
    </div>
</asp:Content>
