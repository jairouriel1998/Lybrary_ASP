Imports System.Data.SqlClient

Public Class conection
    Protected conectar As New SqlConnection

    Protected Function conexionBD() As Boolean
        Try
            conectar = New SqlConnection("data source=.\SQLEXPRESS;initial catalog=LibraryDB; integrated security=true")
            conectar.Open()
            Return True
        Catch evento As Exception
            MsgBox(evento.Message)
            Return False
        End Try
    End Function

    Protected Function desconexionBD() As Boolean
        Try
            If conectar.State = ConnectionState.Open Then
                conectar.Close()
                Return True
            Else
                Return False
            End If
        Catch evento As Exception
            MsgBox(evento.Message)
            Return False
        End Try
    End Function
End Class
