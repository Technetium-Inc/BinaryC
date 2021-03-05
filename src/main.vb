Module BinaryC
    Function ReadFile(fn As String) As String
        Dim file As String

        Using scanner As System.IO.StreamReader = New System.IO.StreamReader(fn, True)
            file = scanner.ReadToEnd
        End Using

        Return file
    End Function

    Function Compile(text As String) As String
        text = Replace(text, "0000", "Module")
        text = Replace(text, "0001", "End")
        text = Replace(text, "0010", "Sub")
        text = Replace(text, "0011", "Main")
        text = Replace(text, "0100", "Console.WriteLine")
        text = Replace(text, "0101", "Console.ReadLine")
        text = Replace(text, "0110", "Console.Write")
        text = Replace(text, "0111", "Function")
        text = Replace(text, "1000", "Return")
        text = Replace(text, "1001", "As")
        text = Replace(text, "1010", "String")
        text = Replace(text, "1011", "args")
        text = Replace(text, "1100", "Using")
        text = Replace(text, "1101", "System")
        text = Replace(text, "1110", "For")
        text = Replace(text, "1111", "While")
        Return text
    End Function

    Sub Main(args As String())
        ' Read the file
        Dim code As String = ReadFile(args(0))
        ' Lex the code
        Dim toWrite As String = Compile(code)
        Console.WriteLine(Compile(toWrite))
    End Sub
End Module