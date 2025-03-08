run: build exec
exec: shadowing
build: empty c_build
empty:


c_build: 
	cmake -B build
	cmake --build build

simple-globals:
	build/vslc -s < vsl_programs/ps4-symbols/simple-globals.vsl

simple-locals:
	build/vslc -s < vsl_programs/ps4-symbols/simple-locals.vsl

locals:
	build/vslc -s < vsl_programs/ps4-symbols/locals.vsl

strings:
	build/vslc -s < vsl_programs/ps4-symbols/strings.vsl

simple-strings:
	build/vslc -s < vsl_programs/ps4-symbols/simple-strings.vsl

shadowing:
	build/vslc -s < vsl_programs/ps4-symbols/shadowing.vsl