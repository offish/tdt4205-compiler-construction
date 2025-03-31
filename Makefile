run: build exec
exec: simple_if
build: empty c_build
empty:

test:
	cd vsl_programs && \
		make ps6 && \
		make ps6-assemble && \
		make ps6-check

c_build: 
	cmake -B build
	cmake --build build
