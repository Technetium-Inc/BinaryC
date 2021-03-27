include("./execute.jl")


mutable struct BinaryCFile
	filename::String
end

function is_valid_file(file::BinaryCFile):Nothing
	if isfile(file.filename)
		file  = open(file.filename, "r")

		file_read_data = read(file, String)
		execute_binary_c(file_read_data)

		close(file)
	else
		error("$(file.filename) does not exist")
	end
	return Nothing
end