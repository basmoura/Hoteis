<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Hoteis.Paginas.Atividade.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Atividades</h1>
    <div style="text-align: right;">
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn add" OnClick="btnCadastrar_Click" />
    </div>
    <br />
    <div class="grid">
<%--        <asp:GridView ID="gvwAtividades" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="Nenhum cliente cadastrado" CssClass="gridview">
            <Columns>
                <asp:TemplateField HeaderText="Código">
                    <ItemTemplate>
                        <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Descrição">
                    <ItemTemplate>
                        <asp:Label ID="lblDescricao" runat="server" Text='<%# Eval("descricao") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Máximo de Pessoas">
                    <ItemTemplate>
                        <asp:Label ID="lblMaximoPessoas" runat="server" Text='<%# Eval("capacidadeMaxima") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>--%>
    </div>
</asp:Content>
