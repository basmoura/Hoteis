<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Hoteis.Paginas.Cliente.Index" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Clientes</h1>
    <div style="text-align: right;">
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn add" OnClick="btnCadastrar_Click" />
    </div>
    <br />
    <div class="grid">
        <asp:GridView ID="gvwClientes" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="Nenhum cliente cadastrado" CssClass="gridview">
            <Columns>
                <asp:TemplateField HeaderText="CPF">
                    <ItemTemplate>
                        <asp:Label ID="lblCPF" runat="server" Text='<%# Eval("cpf") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <asp:Label ID="lblNome" runat="server" Text='<%# Eval("nome") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Data de Nascimento">
                    <ItemTemplate>
                        <asp:Label ID="lblDataNascimento" runat="server" Text='<%# Eval("dataNascimento") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Sexo">
                    <ItemTemplate>
                        <asp:Label ID="lblSexo" runat="server" Text='<%# Eval("sexo") %>'></asp:Label>
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
