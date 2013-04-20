<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Hoteis.Paginas.CheckOut.Cadastrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastrar Checkout</h1>
    <div class="linha">
        <asp:Label ID="lblCodigo" runat="server" Text="Código" CssClass="label"></asp:Label><br />
        <asp:TextBox ID="txtCodigo" runat="server" CssClass="textbox" MaxLength="6"></asp:TextBox>
        <ajaxToolkit:FilteredTextBoxExtender ID="fteCodigo" runat="server" TargetControlID="txtCodigo" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>
        <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Cmapo 'Código' é obrigatório" Text="*" ValidationGroup="Reserva"></asp:RequiredFieldValidator>
    </div>
    <div class="linha">
        <asp:Button ID="btnPesquisar" runat="server" CssClass="btn default" Text="Pesquisar" OnClick="btnPesquisar_Click" ValidationGroup="Reserva" />
    </div>
    <div>
        <h2>Informações da Reserva</h2>
        <div>
            <div class="linha" style="width: 250px;">
                <asp:Label ID="lblCliente" runat="server" Text="Cliente: " CssClass="label tituloInfo"></asp:Label>
                <asp:Label ID="lblNomeCliente" runat="server" CssClass="label info"></asp:Label>
            </div>
            <div class="linha">
                <asp:Label ID="lblhotel" runat="server" Text="Hotel: " CssClass="label tituloInfo"></asp:Label>
                <asp:Label ID="lblNomeHotel" runat="server" CssClass="label info"></asp:Label>
            </div>
        </div>
        <div>
            <div class="linha" style="width: 250px;">
                <asp:Label ID="lblDataReserva" runat="server" Text="Data Reserva: " CssClass="label tituloInfo"></asp:Label>
                <asp:Label ID="lblVlDataReserva" runat="server" CssClass="label info"></asp:Label>
            </div>
            <div class="linha">
                <asp:Label ID="lblQuarto" runat="server" Text="Quarto: " CssClass="label tituloInfo"></asp:Label>
                <asp:Label ID="lblTipoQuarto" runat="server" CssClass="label info"></asp:Label>
            </div>
        </div>
    </div>
    <div>
        <h2>Informações do Checkout</h2>
        <div>
            <div class="linha" style="width: 250px;">
                <asp:Label ID="lblDataSaida" runat="server" Text="Data da Saída" CssClass="label info"></asp:Label><br />
                <asp:TextBox ID="txtDataSaida" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDataSaid" runat="server" ControlToValidate="txtDataSaida" ErrorMessage="Campo 'Data de Saída' é obrigatório" Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revDataSaida" runat="server" ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4}|[0-9]{2})$" ControlToValidate="txtDataSaida" ErrorMessage="Campo 'Data de Saída' está inválido" Text="*"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="cvData" runat="server" ControlToValidate="txtDataSaida" ErrorMessage="Campo 'Data de Saída' deve ser maior ou igual a data de reserva" Text="*" OnServerValidate="cvData_ServerValidate"></asp:CustomValidator>
                <ajaxToolkit:MaskedEditExtender ID="meeDataReserva" runat="server" MaskType="Date" Mask="99/99/9999" UserDateFormat="DayMonthYear" ClearMaskOnLostFocus="false" TargetControlID="txtDataSaida"></ajaxToolkit:MaskedEditExtender>
            </div>
            <div class="linha">
                <asp:Label ID="lblQtdDias" runat="server" Text="Quantidade de Dias" CssClass="label info"></asp:Label><br />
                <asp:TextBox ID="txtQtdDias" runat="server" CssClass="textbox" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvQtdDias" runat="server" ControlToValidate="txtQtdDias" ErrorMessage="Campo 'Quantidade de Dias' é obrigatório" Text="*"></asp:RequiredFieldValidator>
                <ajaxToolkit:FilteredTextBoxExtender ID="fteQtdDias" runat="server" TargetControlID="txtQtdDias" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>
            </div>
            <div class="linha">
                <asp:Button ID="btnCalcular" runat="server" CssClass="btn default" Text="Calcular" OnClick="btnCalcular_Click" />
            </div>
        </div>
        <div class="linha">
            <asp:Label ID="lblTotal" runat="server" Text="Valor Total(R$): " CssClass="label tituloInfo"></asp:Label>
            <asp:Label ID="lblVlTotal" runat="server" CssClass="label info"></asp:Label>
        </div>
    </div>
    <div style="text-align: center; margin-top: 40px;">
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn info" OnClick="btnSalvar_Click" />
        <asp:Button ID="btnVoltar" runat="server" Text="Voltar" CssClass="btn default" />
    </div>
</asp:Content>
