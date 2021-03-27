module binaryc

include("./file.jl")


@doc raw"""
Take the command line arguments and return 0 if there is none
else, check if the first argument endswith a binaryc file extension

if so, create a BinaryCFile object and compiler the compiled_code
else, throw an exception
"""
function parse_command_arguments(argument::Array{String, 1})::Int64
	if(length(argument) == 0)
		return 0
	end
	required_command = argument[1]
	if(endswith(required_command, ".binc"))
		file = BinaryCFile(required_command)
		is_valid_file(file)
	else
		error("$required_command not a binary c file")
	end

	return 1
end

parse_command_arguments(ARGS)

end