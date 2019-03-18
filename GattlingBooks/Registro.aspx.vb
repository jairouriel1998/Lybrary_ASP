Public Class Registro
    Inherits System.Web.UI.Page
    Dim usuario As dUsuario = New dUsuario
    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        If (txtNombres.Text = "" Or txtApellidos.Text = "" Or txtCorreo.Text = "" Or txtContrasena.Text = "") Then
            alert.Text = "Debe llenar todos los campos"
        Else
            If (usuario.registrarse(txtNombres.Text, txtApellidos.Text, txtCorreo.Text, txtContrasena.Text)) Then
                alert.Text = "Registro exitoso"
                Response.Redirect("Libros.aspx")
            Else
                alert.Text = "Error al registrarse"
            End If
        End If
    End Sub
End Class