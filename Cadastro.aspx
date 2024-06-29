<%@ Page Language="vb" AutoEventWireup="false" CodeFile="Cadastro.aspx.vb" Inherits="Cadastro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Usuário</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav>
                <a href="Default.aspx">Página Inicial</a> |
                <a href="Cadastro.aspx">Cadastro</a> |
                <a href="Perfil.aspx">Perfil</a> |
                <a href="Login.aspx">Login</a>
            </nav>
            <h1>Cadastro de Usuário</h1>
            <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="NomeTextBox" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="Telefone"></asp:Label>
            <asp:TextBox ID="TelefoneTextBox" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label4" runat="server" Text="Senha"></asp:Label>
            <asp:TextBox ID="SenhaTextBox" runat="server" TextMode="Password"></asp:TextBox><br />

            <asp:Label ID="Label5" runat="server" Text="Endereço"></asp:Label>
            <asp:TextBox ID="EnderecoTextBox" runat="server"></asp:TextBox><br />

            <asp:Button ID="SubmitButton" runat="server" Text="Cadastrar" OnClick="SubmitButton_Click" /><br />
            <asp:Label ID="MessageLabel" runat="server" Text="" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
