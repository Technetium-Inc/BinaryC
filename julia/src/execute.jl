
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

function execute_binary_c(execute_code::String)::String
	for (key, value) in commands
		execute_code = replace(execute_code, key => value)
	end
	return execute_code
end

function write_to_file(execute_code::String):Nothing
end