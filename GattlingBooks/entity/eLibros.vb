Public Class eLibros
    Dim idLibro As Integer
    Dim ISBN, titulo, autor, categoria As String
    Dim disponibles As Integer

    Public Sub New(idLibro As Integer, iSBN As String, titulo As String, autor As String, categoria As String, disponibles As Integer)
        Me.idLibro = idLibro
        Me.ISBN = iSBN
        Me.titulo = titulo
        Me.autor = autor
        Me.categoria = categoria
        Me.disponibles = disponibles
    End Sub

    Public Sub New()
    End Sub

    Public Property IdLibro1 As Integer
        Get
            Return idLibro
        End Get
        Set(value As Integer)
            idLibro = value
        End Set
    End Property

    Public Property ISBN1 As String
        Get
            Return ISBN
        End Get
        Set(value As String)
            ISBN = value
        End Set
    End Property

    Public Property Titulo1 As String
        Get
            Return titulo
        End Get
        Set(value As String)
            titulo = value
        End Set
    End Property

    Public Property Autor1 As String
        Get
            Return autor
        End Get
        Set(value As String)
            autor = value
        End Set
    End Property

    Public Property Categoria1 As String
        Get
            Return categoria
        End Get
        Set(value As String)
            categoria = value
        End Set
    End Property

    Public Property Disponibles1 As Integer
        Get
            Return disponibles
        End Get
        Set(value As Integer)
            disponibles = value
        End Set
    End Property
End Class
