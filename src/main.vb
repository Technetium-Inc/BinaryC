Module Main
    Sub Main(args As String())
        Dim file As String

        Using scanner As System.IO.StreamReader = New System.IO.StreamReader(args(0), True)
            file = scanner.ReadToEnd
        End Using
        Console.Writeline(file)
    End Sub
End Module