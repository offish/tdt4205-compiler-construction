run: build exec
exec: simple-strings
build: empty c_build
empty:


c_build: 
	cmake -B build
	cmake --build build

locals:
	build/vslc -s < vsl_programs/ps4-symbols/locals.vsl

shadowing:
	build/vslc -s < vsl_programs/ps4-symbols/shadowing.vsl

simple-globals:
	build/vslc -s < vsl_programs/ps4-symbols/simple-globals.vsl

simple-locals:
	build/vslc -s < vsl_programs/ps4-symbols/simple-locals.vsl

simple-strings:
	build/vslc -s < vsl_programs/ps4-symbols/simple-strings.vsl

strings:
	build/vslc -s < vsl_programs/ps4-symbols/strings.vsl
