<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Cadastrar.aspx.cs" Inherits="Hoteis.Paginas.Quarto.Cadastrar" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastrar Quarto</h1>
    <div>
        <div class="linha">
            <asp:Label ID="lblHotel" runat="server" Text="Hotel" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlHoteis" runat="server" DataTextField="nome" DataValueField="codigo" CssClass="dropdown" AppendDataBoundItems="True" OnDataBinding="ddlHoteis_DataBinding">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvHotel" runat="server" ControlToValidate="ddlHoteis" InitialValue="0" ErrorMessage="Campo 'Hotel' é obrigatório" Text="*"></asp:RequiredFieldValidator>
        </div>
        <div class="linha">
            <asp:Label ID="lblNrQuarto" runat="server" Text="Número do Quarto" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtNrQuarto" runat="server" CssClass="textbox" MaxLength="6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNrQuarto" runat="server" ControlToValidate="txtNrQuarto" ErrorMessage="Campo 'Número do Quarto' é obrigatório" Text="*"></asp:RequiredFieldValidator>
            <ajaxToolkit:FilteredTextBoxExtender ID="ftbNrQuarto" runat="server" FilterType="Numbers" ValidChars="." TargetControlID="txtNrQuarto">
            </ajaxToolkit:FilteredTextBoxExtender>
        </div>
    </div>
    <div>
        <div class="linha">
            <asp:Label ID="lblCamas" runat="server" Text="Camas" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtCamas" runat="server" CssClass="textbox" MaxLength="6"></asp:TextBox>
            <ajaxToolkit:FilteredTextBoxExtender ID="ftbCamas" runat="server" FilterType="Numbers" TargetControlID="txtCamas">
            </ajaxToolkit:FilteredTextBoxExtender>
        </div>
        <div class="linha">
            <asp:Label ID="lblTamanho" runat="server" Text="Tamanho (m²)" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtTamanho" runat="server" CssClass="textbox" MaxLength="6"></asp:TextBox>
            <ajaxToolkit:FilteredTextBoxExtender ID="ftbTamanho" runat="server" FilterType="Custom, Numbers" ValidChars="," TargetControlID="txtTamanho">
            </ajaxToolkit:FilteredTextBoxExtender>
        </div>
    </div>
    <div>
        <div class="linha">
            <asp:Label ID="lvlValorDiaria" runat="server" Text="Valor da Diária (R$)" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtValorDiaria" runat="server" CssClass="textbox" MaxLength="6"></asp:TextBox>
            <ajaxToolkit:FilteredTextBoxExtender ID="ftbValorDiaria" runat="server" FilterType="Custom, Numbers" ValidChars=",." TargetControlID="txtValorDiaria">
            </ajaxToolkit:FilteredTextBoxExtender>
        </div>
        <div class="linha">
            <asp:Label ID="lblTipo" runat="server" Text="Tipo" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlTipo" runat="server" CssClass="dropdown" DataTextField="descricao" DataValueField="id" AppendDataBoundItems="True" OnDataBinding="ddlTipos_DataBinding">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvTipo" runat="server" ControlToValidate="ddlTipo" InitialValue="0" ErrorMessage="Campo 'Tipo' é obrigatório" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div style="text-align: center;">
        <asp:Button ID="btnSalvar" runat="server" CssClass="btn info" Text="Salvar" OnClick="btnSalvar_Click" />
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn default" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="false" />
    </div>
</asp:Content>
