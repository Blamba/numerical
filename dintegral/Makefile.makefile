SOURCES=$(wildcard *.f90)
EXECUTABLES=$(SOURCES:.f90=)

all: $(EXECUTABLES)

%: %.f90
	gfortran -o $@ $@.f90 ssp.lib

clean:
	rm $(EXECUTABLES)

vars:
	@echo 'sources: $(SOURCES)'
	@echo 'executables: $(EXECUTABLES)'
