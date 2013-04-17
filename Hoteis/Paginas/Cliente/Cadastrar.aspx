<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Hoteis.Paginas.Cliente.Cadastrar" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastrar Cliente</h1>
    <div>
        <div class="linha">
            <asp:Label ID="lblCpf" runat="server" Text="CPF" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtCPF" runat="server" CssClass="textbox" MaxLength="14"></asp:TextBox>
            <ajaxToolkit:FilteredTextBoxExtender ID="ftbCpf" runat="server" FilterType="Custom, Numbers" ValidChars=".-" TargetControlID="txtCpf"></ajaxToolkit:FilteredTextBoxExtender>
            <asp:RequiredFieldValidator ID="rfvCpf" runat="server" ErrorMessage="Campo 'CPF' é obrigatório" ControlToValidate="txtCpf" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div class="linha">
            <asp:Label ID="lblDataNascimento" runat="server" Text="Data de Nascimento" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtDataNascimento" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDataNascimento" runat="server" ControlToValidate="txtDataNascimento" ErrorMessage="Campo 'Data de Nascimento' é obrigatório" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revDataNascimento" runat="server" ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4}|[0-9]{2})$" ControlToValidate="txtDataNascimento" ErrorMessage="Campo 'Data de Nascimento' está inválido" Text="*"></asp:RegularExpressionValidator>
            <ajaxToolkit:MaskedEditExtender ID="meeDataNascimento" runat="server" MaskType="Date" Mask="99/99/9999" UserDateFormat="DayMonthYear" ClearMaskOnLostFocus="false" TargetControlID="txtDataNascimento"></ajaxToolkit:MaskedEditExtender>
        </div>
        <div>
            <asp:Label ID="lblNome" runat="server" Text="Nome" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtNome" runat="server" CssClass="textbox medium" MaxLength="30"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox medium" MaxLength="20"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Campo 'Email' está inválido" Text="*"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtEndereco" runat="server" CssClass="textbox medium" MaxLength="50"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblTelefone" runat="server" Text="Telefone" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtTelefone" runat="server" CssClass="textbox medium"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revTelefone" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Campo 'Telefone' está inválido" Text="*" ValidationExpression="^\(\d{2}\)\d{4}-\d{4}$"></asp:RegularExpressionValidator>
            <ajaxToolkit:MaskedEditExtender ID="meeTelefone" runat="server" MaskType="Number" Mask="(99)9999-9999" ClearMaskOnLostFocus="false" TargetControlID="txtTelefone">
            </ajaxToolkit:MaskedEditExtender>
        </div>
        <div class="linha">
            <asp:Label ID="lblSexo" runat="server" Text="Sexo" CssClass="label"></asp:Label><br />
            <asp:RadioButtonList ID="rbtSexo" runat="server" CssClass="radiobutton" RepeatDirection="Horizontal">
                <asp:ListItem Value="M" Text="Masculino"></asp:ListItem>
                <asp:ListItem Value="F" Text="Feminino">Feminino</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="linha">
            <asp:Label ID="lblEstado" runat="server" Text="Estado" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlEstado" runat="server" CssClass="dropdown" Width="150px">
                <asp:ListItem Value="0">Selecione</asp:ListItem>
                <asp:ListItem Value="A">Alagoas</asp:ListItem>
                <asp:ListItem Value="B">Bahia</asp:ListItem>
                <asp:ListItem Value="S">Sergipe</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="text-align: center;">
            <asp:Button ID="btnSalvar" runat="server" CssClass="btn info" Text="Salvar" OnClick="btnSalvar_Click" />
            <asp:Button ID="btnVoltar" runat="server" CssClass="btn default" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="false" />
        </div>
    </div>
</asp:Content>
