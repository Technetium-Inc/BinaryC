
mutable struct BinaryCFile
	filename::String

	function BinaryCFile(file::String)
		filename = file
	end
end

function is_valid_file(file::BinaryCFile)
	println(file)
end