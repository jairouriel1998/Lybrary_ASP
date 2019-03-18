Public Class Prestamos
    Inherits System.Web.UI.Page
    Dim id_usuario As Integer
    Private Const V As Boolean = True
    Private tabla As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Sub setUser(idUsuario As Integer)
        id_usuario = idUsuario
    End Sub

    Protected Sub gridPrestamos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gridPrestamos.SelectedIndexChanged

    End Sub
End Class