Public Class eUsuario
    Dim idUsuario As Integer
    Dim nombres, apellidos, correo, contrasena As String

    Public Sub New(idUsuario As Integer, nombres As String, apellidos As String, correo As String, contrasena As String)
        Me.idUsuario = idUsuario
        Me.nombres = nombres
        Me.apellidos = apellidos
        Me.correo = correo
        Me.contrasena = contrasena
    End Sub

    Public Sub New()
    End Sub

    Public Property IdUsuario1 As Integer
        Get
            Return idUsuario
        End Get
        Set(value As Integer)
            idUsuario = value
        End Set
    End Property

    Public Property Nombres1 As String
        Get
            Return nombres
        End Get
        Set(value As String)
            nombres = value
        End Set
    End Property

    Public Property Apellidos1 As String
        Get
            Return apellidos
        End Get
        Set(value As String)
            apellidos = value
        End Set
    End Property

    Public Property Correo1 As String
        Get
            Return correo
        End Get
        Set(value As String)
            correo = value
        End Set
    End Property

    Public Property Contrasena1 As String
        Get
            Return contrasena
        End Get
        Set(value As String)
            contrasena = value
        End Set
    End Property
End Class
