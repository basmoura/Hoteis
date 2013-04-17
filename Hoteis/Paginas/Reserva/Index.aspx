<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Hoteis.Paginas.Reserva.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div>
        <div>
            <div class="linha">
                <asp:Label ID="lblHotel" runat="server" Text="Hotel" CssClass="label"></asp:Label><br />
                <asp:DropDownList ID="ddlHoteis" runat="server" CssClass="dropdown" DataTextField="nome" DataValueField="codigo" AppendDataBoundItems="True" OnDataBinding="ddlHoteis_DataBinding"></asp:DropDownList>
            </div>
            <div class="linha">
                <asp:Label ID="lblCliente" runat="server" Text="Cliente" CssClass="label"></asp:Label><br />
                <asp:TextBox ID="txtCliente" runat="server" CssClass="textbox" MaxLength="20"></asp:TextBox>
            </div>
        </div>
        <div>
            <div class="linha">
                <asp:Label ID="lblDataReserva" runat="server" Text="Data de Reserva" CssClass="label"></asp:Label><br />
                <asp:TextBox ID="txtDataReserva" runat="server" CssClass="textbox"></asp:TextBox>
                <ajaxToolkit:MaskedEditExtender ID="meeDataReserva" runat="server" MaskType="Date" Mask="99/99/9999" UserDateFormat="DayMonthYear" ClearMaskOnLostFocus="false" TargetControlID="txtDataReserva"></ajaxToolkit:MaskedEditExtender>
            </div>
            <div class="linha">
                <asp:Button ID="btnPesquisar" runat="server" CssClass="btn default" Text="Pesquisar" OnClick="btnPesquisar_Click" />
            </div>
        </div>
    </div>
    <h1>Reservas</h1>
    <div style="text-align: right;">
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn add" OnClick="btnCadastrar_Click" />
    </div>
    <br />
    <div class="grid">
        <asp:GridView ID="gvwReservas" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="Nenhum reserva cadastrada" CssClass="gridview">
            <Columns>
                <asp:TemplateField HeaderText="Hotel">
                    <ItemTemplate>
                        <asp:Label ID="lblNrQuarto" runat="server" Text='<%# Eval("hotel") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cliente">
                    <ItemTemplate>
                        <asp:Label ID="lblHotel" runat="server" Text='<%# Eval("cliente") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Data">
                    <ItemTemplate>
                        <asp:Label ID="lblNome" runat="server" Text='<%# Eval("dataReserva") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quarto">
                    <ItemTemplate>
                        <asp:Label ID="lblEndereco" runat="server" Text='<%# Eval("quarto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
