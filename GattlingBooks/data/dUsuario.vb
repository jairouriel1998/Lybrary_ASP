Imports System.Data.SqlClient
Public Class dUsuario
    Inherits conection
    Dim comandos As New SqlCommand
    Dim usuarioActual As eUsuario = New eUsuario

    Public Function logearse(ByRef correo As String, ByRef contrasena As String) As String
        Try
            conexionBD()
            comandos = New SqlCommand("sp_sLogin")
            comandos.CommandType = CommandType.StoredProcedure
            comandos.Connection = conectar
            comandos.Parameters.AddWithValue("@correo", correo)
            comandos.Parameters.AddWithValue("@contrasena", contrasena)
            If comandos.ExecuteNonQuery Then
                Dim tabla As New DataTable
                Dim adaptador As New SqlDataAdapter(comandos)
                adaptador.Fill(tabla)
                usuarioActual.IdUsuario1 = tabla.Rows.Item(0)(0)
                usuarioActual.Nombres1 = tabla.Rows.Item(0)(1)
                usuarioActual.Apellidos1 = tabla.Rows.Item(0)(2)
                Return "Autenticación exitosa."
            Else
                Return "El registro no existe"
            End If
        Catch evento As Exception
            MsgBox(evento.Message)
        Finally
            desconexionBD()
        End Try
        Return "Autenticacion fallida"
    End Function

    Public Function registrarse(ByRef nombres As String, ByRef apellidos As String, ByRef correo As String, ByRef contrasena As String) As Boolean
        Try
            conexionBD()
            comandos = New SqlCommand("sp_iUsuario")
            comandos.CommandType = CommandType.StoredProcedure
            comandos.Connection = conectar
            comandos.Parameters.AddWithValue("@nombres", nombres)
            comandos.Parameters.AddWithValue("@apellidos", apellidos)
            comandos.Parameters.AddWithValue("@correo", correo)
            comandos.Parameters.AddWithValue("@contrasena", contrasena)
            If comandos.ExecuteNonQuery Then
                Return True
            Else
                Return False
            End If
        Catch evento As Exception
            MsgBox(evento.Message)
            Return False
        Finally
            desconexionBD()
        End Try
    End Function

End Class
