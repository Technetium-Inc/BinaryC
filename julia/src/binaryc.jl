module binaryc

include("./file.jl")

function parse_command_arguments(argument::Array{String, 1})::Int64
	if(length(argument) == 0)
		return 0
	end
	required_command = argument[1]
	if(endswith(required_command, ".binc"))
		file = BinaryCFile(required_command)
	else
		error("$required_command not a binary c file")
	end

	return 1
end

parse_command_arguments(ARGS)

end