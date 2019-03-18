Imports GattlingBooks.dUsuario

Public Class Login
    Inherits System.Web.UI.Page
    Dim usuario As dUsuario = New dUsuario

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        If txtCorreo.Text = "" Then
            alert.Text = "El campo correo está vacío."
        ElseIf txtContrasena.Text = "" Then
            alert.Text = "Campo contraseña está vacío."
        Else
            alert.Text = usuario.logearse(txtCorreo.Text, txtContrasena.Text)
            Response.Redirect("Libros.aspx")
        End If
    End Sub


End Class