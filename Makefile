run: build exec
build: empty c_build
empty:

c_build: 
	cmake -B build
	cmake --build build

exec:
	build/vslc -s < vsl_programs/ps4-symbols/simple-globals.vsl