<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Hoteis.Paginas.Atividade.Cadastrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Cadastro de Atividades</h1>
    <div>
        <div class="linha">
            <asp:Label ID="lblData" runat="server" Text="Data" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtData" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvData" runat="server" ControlToValidate="txtData" ErrorMessage="Campo 'Data' é obrigatório" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revData" runat="server" ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4}|[0-9]{2})$" ControlToValidate="txtData" ErrorMessage="Campo 'Data' está inválido" Text="*"></asp:RegularExpressionValidator>
            <ajaxToolkit:MaskedEditExtender ID="meeData" runat="server" MaskType="Date" Mask="99/99/9999" UserDateFormat="DayMonthYear" ClearMaskOnLostFocus="false" TargetControlID="txtData"></ajaxToolkit:MaskedEditExtender>
        </div>
        <div class="linha">
            <asp:Label ID="lblDescricao" runat="server" Text="Descrição" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtDescricao" runat="server" CssClass="textbox" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDescricao" runat="server" ControlToValidate="txtDescricao" ErrorMessage="Campo 'Descrição' é obrigatório" Text="*"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div>
        <div class="linha">
            <asp:Label ID="lblHotel" runat="server" Text="Hotel" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlHoteis" runat="server" DataTextField="nome" DataValueField="codigo" CssClass="dropdown" AppendDataBoundItems="True" OnDataBinding="ddlHoteis_DataBinding" AutoPostBack="True" OnSelectedIndexChanged="ddlHoteis_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvHoteis" runat="server" ControlToValidate="ddlHoteis" ErrorMessage="Campo 'Hotel' é obrigatório" Text="*" InitialValue="0"></asp:RequiredFieldValidator>
        </div>
        <div class="linha">
            <asp:Label ID="lblAreaLazer" runat="server" Text="Área de Lazer" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlAreaLazer" runat="server" DataTextField="descricao" DataValueField="id" CssClass="dropdown" AppendDataBoundItems="True" OnDataBinding="ddlHoteis_DataBinding">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvAreaLazer" runat="server" ControlToValidate="ddlAreaLazer" ErrorMessage="Campo 'Área de Lazer' é obrigatório" Text="*" InitialValue="0"></asp:RequiredFieldValidator>
        </div>
    </div>
</asp:Content>
