' Cadastro.aspx.vb
Imports System.Data.SqlClient

Partial Class Cadastro
    Inherits System.Web.UI.Page

    Public Property MessageLabel As Object

    Public Sub SubmitButton_Click(ByVal sender As Object, ByVal e As EventArgs, EnderecoTextBox As Object, SenhaTextBox As Object, EmailTextBox As Object, TelefoneTextBox As Object, NomeTextBox As Object)
        Dim nome As String = NomeTextBox.Text
        Dim telefone As String = TelefoneTextBox.Text
        Dim email As String = EmailTextBox.Text
        Dim senha As String = SenhaTextBox.Text
        Dim endereco As String = EnderecoTextBox.Text

        Dim connString As String = "sua_string_de_conexao"
        Dim query As String = "INSERT INTO Usuarios (Nome, Telefone, Email, Senha, Endereco) VALUES (@Nome, @Telefone, @Email, @Senha, @Endereco)"

        Using conn As New SqlConnection(connString)
            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@Nome", nome)
                cmd.Parameters.AddWithValue("@Telefone", telefone)
                cmd.Parameters.AddWithValue("@Email", email)
                cmd.Parameters.AddWithValue("@Senha", senha)
                cmd.Parameters.AddWithValue("@Endereco", endereco)
                conn.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using
    End Sub
End Class
