module binaryc

function parse_command_arguments(argument::String[])::Int64
	if(length(argument) == 0)
		return 0
	required_command = argument[0]
	println(required_command)

	return 1
end