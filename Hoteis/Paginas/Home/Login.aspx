<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hoteis.Paginas.Home.Login" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="/Resources/Styles/Reset.css" />
    <link rel="stylesheet" type="text/css" href="/Resources/Styles/Pagina.css" />
</head>
<body style="background-color: #444">
    <div id="">
        <div class="title">
            hotelli
        </div>
        <div class="login">
            <form id="form1" runat="server" class="form">
                <asp:ValidationSummary ID="ValidationSummary1" CssClass="validationsummary" runat="server" HeaderText="<div class='validationheader'>Para efetuar o login: </div>" DisplayMode="BulletList" EnableClientScript="true" />
                <h1 class="login">Login</h1>
                <div>
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuário" CssClass="label"></asp:Label><br />
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="textbox login" MaxLength="20" Width="285px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Campo 'Usuário' é obrigatório" Text="&nbsp"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label ID="lblSenha" runat="server" Text="Senha" CssClass="label"></asp:Label><br />
                    <asp:TextBox ID="txtSenha" runat="server" CssClass="textbox login" TextMode="Password" MaxLength="8" Width="285px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSenha" runat="server" ControlToValidate="txtSenha" ErrorMessage="Campo 'Senha' é obrigatório" Text="&nbsp"></asp:RequiredFieldValidator>
                </div>
                <div style="text-align: right; padding-bottom: 20px; padding-top: 20px;">
                    <asp:Button ID="btnLogin" runat="server" Text="Entrar" CssClass="btn add" OnClick="btnLogin_Click" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>
