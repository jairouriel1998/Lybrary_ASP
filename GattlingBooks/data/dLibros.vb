Imports System.Data.SqlClient
Public Class dLibros
    Inherits conection
    Dim tabla As New DataTable
    Dim comandos As New SqlCommand

    Public Function mostrar() As DataTable
        Try
            conexionBD()
            comandos = New SqlCommand("sp_sLibros")
            comandos.CommandType = CommandType.StoredProcedure
            comandos.Connection = conectar
            If comandos.ExecuteNonQuery Then
                Dim tabla As New DataTable
                Dim adaptador As New SqlDataAdapter(comandos)
                adaptador.Fill(tabla)
                Return tabla
            Else
                Return Nothing
            End If
        Catch evento As Exception
            MsgBox(evento.Message)
            Return Nothing
        Finally
            desconexionBD()
        End Try
    End Function

    Public Function guardarLibro(ByRef isbn As String, ByRef titulo As String, ByRef autor As String, ByRef categoria As String, ByRef disponibles As Integer) As Boolean
        Try
            conexionBD()
            comandos = New SqlCommand("sp_iLibro")
            comandos.CommandType = CommandType.StoredProcedure
            comandos.Connection = conectar
            comandos.Parameters.AddWithValue("@ISBN", isbn)
            comandos.Parameters.AddWithValue("@titulo", titulo)
            comandos.Parameters.AddWithValue("@autor", autor)
            comandos.Parameters.AddWithValue("@categoria", categoria)
            comandos.Parameters.AddWithValue("@disponibles", disponibles)
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

    Public Function eliminarLibro(id_libro As Integer) As Boolean
        Try
            conexionBD()
            comandos = New SqlCommand("sp_eLibro")
            comandos.CommandType = CommandType.StoredProcedure
            comandos.Connection = conectar
            comandos.Parameters.AddWithValue("@idLibro", id_libro)
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
