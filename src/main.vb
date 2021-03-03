Module BinaryC
    Function ReadFile(fn As String) As String
        Dim file As String

        Using scanner As System.IO.StreamReader = New System.IO.StreamReader(fn, True)
            file = scanner.ReadToEnd
        End Using

        Return file
    End Function
    Sub Main(args As String())
        Console.WriteLine(ReadFile(args(0)))
    End Sub
End Module