GHDL=ghdl
VCD_FILE=test.vcd
# GHDLFLAGS= -g --ieee=synopsys --workdir=work --work=work -O0
GHDLFLAGS= -O0 -g
SIMFLAGS=--stop-time=5ms --vcd=$(VCD_FILE)
SOURCES := ${wildcard *.vhd}
OBJECTS=$(patsubst %.vhd, %.o, $(SOURCES))
OBJECTS2=$(patsubst %.vhd, %, $(SOURCES))

############################
## The design to simulate ##
TOP_FILE=half_adder_tb
############################

.PHONY: pretty
.PHONY: sim

# Binary depends on the object file
%: %.o
	$(GHDL) -e $(GHDLFLAGS) $@

# Object file depends on source
%.o: %.vhd
	$(GHDL) -a $(GHDLFLAGS) $<

run: $(OBJECTS) $(OBJECTS2)
	$(GHDL) -r $(GHDLFLAGS) $(TOP_FILE) $(SIMFLAGS)

sim: run
	gtkwave $(WAVE_FLAGS) $(VCD_FILE)

FORCE:

clean:
	rm -rf work
