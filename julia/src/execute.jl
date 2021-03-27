
const commands = Dict{String, String}(
	"0000" => "Module",
	"0001" => "End",
	"0010" => "Sub",
	"0011" => "Main",
 	"0100" => "Console.WriteLine",
 	"0101" =>  "Console.ReadLine",
 	"0110" => "Dim",
 	"0111" => "Function",
 	"1000" => "Return",
 	"1001" => "As",
 	"1010" => "String",
 	"1011" => "args",
 	"1100" => "Using",
 	"1101" => "System",
 	"1110" => "For",
 	"1111" => "While"
)

@doc raw"""
Take the code to execute and replace the keys of commands in 
the execute_code with the corresponding value and return
the value
"""
function execute_binary_c(execute_code::String)::String
	for (key, value) in commands
		execute_code = replace(execute_code, key => value)
	end
	return execute_code
end

@doc raw"""
Write the output_code into the dist folder
"""
function write_to_file(execute_code::String):Nothing
	filepath::String = joinpath(pwd(), "dist")
	if !isdir(filepath)
		mkdir(filepath)
	end

	open(joinpath(filepath, "output.vb"), "w") do output_writer
		write(output_writer, execute_code)
	end

	println("Succesfully compiled into $filepath")
end