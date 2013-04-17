<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Hoteis.Paginas.Reserva.Cadastrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastrar Reserva</h1>
    <div>
        <div class="linha">
            <asp:Label ID="lblHotel" runat="server" Text="Hotel" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlHoteis" runat="server" DataTextField="nome" DataValueField="codigo" CssClass="dropdown" AppendDataBoundItems="True" AutoPostBack="True" OnDataBinding="ddlHoteis_DataBinding" OnSelectedIndexChanged="ddlHoteis_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <div class="linha">
            <asp:Label ID="lblCliente" runat="server" Text="Cliente" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlClientes" runat="server" DataTextField="nome" DataValueField="cpf" CssClass="dropdown" AppendDataBoundItems="True" OnDataBinding="ddlClientes_DataBinding"></asp:DropDownList>
        </div>
    </div>
    <div>
        <div class="linha">
            <asp:Label ID="lblQuarto" runat="server" Text="Quarto" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlQuartos" runat="server" DataTextField="nrQuarto" DataValueField="nrQuarto" CssClass="dropdown" AppendDataBoundItems="True" OnDataBinding="ddlQuartos_DataBinding"></asp:DropDownList>
        </div>
        <div class="linha">
            <asp:Label ID="lblDataReserva" runat="server" Text="Data de Reserva" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtDataReserva" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:CustomValidator ID="cvData" runat="server" ControlToValidate="txtDataReserva" ErrorMessage="Campo 'Data de Reserva' deve ser maior ou igual a data de hoje" Text="*" OnServerValidate="cvData_ServerValidate"></asp:CustomValidator>
            <ajaxToolkit:MaskedEditExtender ID="meeDataReserva" runat="server" MaskType="Date" Mask="99/99/9999" UserDateFormat="DayMonthYear" ClearMaskOnLostFocus="false" TargetControlID="txtDataReserva"></ajaxToolkit:MaskedEditExtender>
        </div>
    </div>
    <div style="text-align: center;">
        <asp:Button ID="btnSalvar" runat="server" CssClass="btn info" Text="Salvar" OnClick="btnSalvar_Click" />
        <asp:Button ID="btnVoltar" runat="server" CssClass="btn default" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="false" />
    </div>
</asp:Content>
