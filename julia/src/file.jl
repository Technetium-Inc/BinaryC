include("./execute.jl")


mutable struct BinaryCFile
	filename::String
end

@doc raw"""
Check if the filename exists, if yes read the file and
execute the code, else throw an exception
"""
function is_valid_file(file::BinaryCFile):Nothing
	if isfile(file.filename)
		file  = open(file.filename, "r")

		file_read_data = read(file, String)
		compiled_code = execute_binary_c(file_read_data)

		write_to_file(compiled_code)

		close(file)
	else
		error("$(file.filename) does not exist")
	end
	return Nothing
end