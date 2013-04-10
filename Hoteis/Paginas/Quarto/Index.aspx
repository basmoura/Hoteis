<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Hoteis.Paginas.Quarto.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Quartos</h1>
    <div style="text-align: right;">
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn add" OnClick="btnCadastrar_Click" />
    </div>
    <br />
    <div class="grid">
        <asp:GridView ID="gvwQuartos" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="Nenhum quarto cadastrado" CssClass="gridview">
            <Columns>
                <asp:TemplateField HeaderText="#">
                    <ItemTemplate>
                        <asp:Label ID="lblNrQuarto" runat="server" Text='<%# Eval("nrQuarto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hotel">
                    <ItemTemplate>
                        <asp:Label ID="lblHotel" runat="server" Text='<%# Eval("Hotel.nome") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Camas">
                    <ItemTemplate>
                        <asp:Label ID="lblNome" runat="server" Text='<%# Eval("qtdCamas") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tamanho">
                    <ItemTemplate>
                        <asp:Label ID="lblEndereco" runat="server" Text='<%# Eval("tamanho") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Diária (R$)">
                    <ItemTemplate>
                        <asp:Label ID="lblTeelfone" runat="server" Text='<%# Eval("vlDiaria") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tipo">
                    <ItemTemplate>
                        <asp:Label ID="lblCidade" runat="server" Text='<%# Eval("TipoQuarto.descricao") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
