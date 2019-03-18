Public Class Libros
    Inherits System.Web.UI.Page
    Dim librito As dLibros = New dLibros

    Private Sub btnGuardarNuevo_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        If (txtISBN.Text = "" Or txtTitulo.Text = "" Or txtAutor.Text = "" Or txtCategoria.Text = "" Or txtDisponibles.Text = "") Then
            alert.Text = "Debe llenar todos los campos"
        Else
            If (librito.guardarLibro(txtISBN.Text, txtTitulo.Text, txtAutor.Text, txtCategoria.Text, Integer.Parse(txtDisponibles.Text))) Then
                    alert.Text = "Registro guardado en éxito"
                    Response.Redirect("Libros.aspx")
                Else
                    alert.Text = "Error al guardar"
                End If
            End If
    End Sub

    Private Sub dtLibros_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles dtLibros.RowCommand
        alert.Text = "command confirmed"
    End Sub

    Protected Sub dtLibros_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dtLibros.SelectedIndexChanged
        Dim texto As String
        texto = "Elemento selecionado ID: " & dtLibros.SelectedRow.Cells(2).Text
        alert.Text = texto
        txtISBN.Text = dtLibros.SelectedRow.Cells(3).Text
        txtTitulo.Text = dtLibros.SelectedRow.Cells(4).Text
        txtAutor.Text = dtLibros.SelectedRow.Cells(5).Text
        txtCategoria.Text = dtLibros.SelectedRow.Cells(6).Text
        txtCategoria.Text = dtLibros.SelectedRow.Cells(7).Text
    End Sub

    Private Sub dtLibros_RowDeleted(sender As Object, e As GridViewDeletedEventArgs) Handles dtLibros.RowDeleted
        Dim eliminado As Boolean = librito.eliminarLibro(dtLibros.SelectedRow.Cells(2).Text)
        Response.Redirect("Libros.aspx")
        If (eliminado) Then
            alert.Text = "Registro Eliminado"
        Else
            alert.Text = "Error al eliminar"
        End If
    End Sub
End Class