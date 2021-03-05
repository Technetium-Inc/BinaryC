# BinaryC
 Yet another esolang. This one has nothing to do with C (and everything to do with VB) but the name is better than BinaryVB.

## Prerequisites
 A Visual Basic .NET compiler (```vbc```)

## Syntax
 In BinaryC, Common keywords in VB are written in binary. Here is the conversion table:

 BinaryC| VB
 -------|------------------
 0000   | Module
 0001   | End
 0010   | Sub
 0011   | Main
 0100   | Console.WriteLine
 0101   | Console.ReadLine
 0110   | Dim
 0111   | Function
 1000   | Return
 1001   | As
 1010   | String
 1011   | args
 1100   | Using
 1101   | System
 1110   | For
 1111   | While

 ### Examples:
 #### Hello World:

   ```
   0000 0011
   0010 0011()
   0100("Hello World")
   0001 0010
   0001 0000
   ```
    
 Compiles to (without the indentation):

   ```VB
   Module Main
     Sub Main()
       Console.WriteLine("Hello World")
     End Sub
   End Module
   ```

## Downloads
### [1.0.0](https://github.com/technetium-inc/BinaryC/releases/tag/v1.0.0)
[Windows](https://github.com/technetium-inc/BinaryC/releases/download/v1.0.0/binc.exe)