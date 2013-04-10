<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Hoteis.Paginas.Hotel.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Hotéis</h1>
    <div style="text-align: right;">
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn add" OnClick="btnCadastrar_Click" />
    </div>
    <br />
    <div class="grid">
        <asp:GridView ID="gvwHoteis" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="Nenhum hotel cadastrado" CssClass="gridview">
            <Columns>
                <asp:TemplateField HeaderText="Código">
                    <ItemTemplate>
                        <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("codigo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <asp:Label ID="lblNome" runat="server" Text='<%# Eval("nome") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Endereço">
                    <ItemTemplate>
                        <asp:Label ID="lblEndereco" runat="server" Text='<%# Eval("endereco") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Telefone">
                    <ItemTemplate>
                        <asp:Label ID="lblTeelfone" runat="server" Text='<%# Eval("telefone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cidade">
                    <ItemTemplate>
                        <asp:Label ID="lblCidade" runat="server" Text='<%# Eval("cidade") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Estado">
                    <ItemTemplate>
                        <asp:Label ID="lblEstado" runat="server" Text='<%# Eval("estado") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
