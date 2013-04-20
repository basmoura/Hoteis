<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Hoteis.Paginas.CheckOut.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Checkouts</h1>
    <div>
        <div>
            <asp:Label ID="lblHotel" runat="server" Text="Hotel" CssClass="label"></asp:Label><br />
            <asp:DropDownList ID="ddlHoteis" runat="server" CssClass="dropdown" DataTextField="nome" DataValueField="codigo" AppendDataBoundItems="True" OnDataBinding="ddlHoteis_DataBinding"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvHotel" runat="server" ControlToValidate="ddlHoteis" InitialValue="0" ErrorMessage="Campo 'Hotel' é obrigatório" Text="*"></asp:RequiredFieldValidator>
        </div>
        <div>
            <div class="linha">
                <asp:Label ID="lblDataInicio" runat="server" Text="Data Início" CssClass="label"></asp:Label><br />
                <asp:TextBox ID="txtDataInicio" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDataInicio" runat="server" ControlToValidate="txtDataInicio" ErrorMessage="Campo 'Data Início' é obrigatório" Text="*" InitialValue="__/__/____"></asp:RequiredFieldValidator>
                <ajaxToolkit:MaskedEditExtender ID="meeDataReserva" runat="server" MaskType="Date" Mask="99/99/9999" UserDateFormat="DayMonthYear" ClearMaskOnLostFocus="false" TargetControlID="txtDataInicio"></ajaxToolkit:MaskedEditExtender>
            </div>
            <div class="linha">
                <asp:Label ID="lblAte" runat="server" Text="até" CssClass="label"></asp:Label>
            </div>
            <div class="linha">
                <asp:Label ID="lblDataFim" runat="server" Text="Data Fim" CssClass="label"></asp:Label><br />
                <asp:TextBox ID="txtDataFim" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDataFim" runat="server" ControlToValidate="txtDataFim" ErrorMessage="Campo 'Data Fim' é obrigatório" Text="*" InitialValue="__/__/____"></asp:RequiredFieldValidator>
                <ajaxToolkit:MaskedEditExtender ID="meeDataFim" runat="server" MaskType="Date" Mask="99/99/9999" UserDateFormat="DayMonthYear" ClearMaskOnLostFocus="false" TargetControlID="txtDataFim"></ajaxToolkit:MaskedEditExtender>
            </div>
            <div class="linha">
                <asp:Button ID="btnPesquisar" runat="server" CssClass="btn default" Text="Pesquisar" OnClick="btnPesquisar_Click" />
            </div>
        </div>
    </div>
    <div class="grid">
        <asp:GridView ID="gvwCheckouts" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" EmptyDataText="Nenhum reserva cadastrada" CssClass="gridview">
            <Columns>
                <asp:TemplateField HeaderText="Cliente">
                    <ItemTemplate>
                        <asp:Label ID="lblCliente" runat="server" Text='<%# Eval("Cliente.nome") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Data Saída">
                    <ItemTemplate>
                        <asp:Label ID="lblDtSaida" runat="server" Text='<%# Eval("dataSaida", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nr Dias">
                    <ItemTemplate>
                        <asp:Label ID="lblNrDias" runat="server" Text='<%# Eval("qtdDias") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Valor Total(R$)">
                    <ItemTemplate>
                        <asp:Label ID="lblVlTotal" runat="server" Text='<%# Eval("valorTotal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
