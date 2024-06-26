#RTL simulation, single pattern
vcs -R -sverilog tb.sv LASER.sv +define+P1+USECOLOR +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+LASER.fsdb

#RTL simulation, all pattern
#vcs -R -sverilog tb.sv LASER.sv +define+USECOLOR +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+LASER.fsdb 

#Gate-Level simuation
vcs -R -sverilog tb.sv LASER_syn.v +define+USECOLOR+SDF +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+LASER.fsdb -v /usr/cad/CBDK/CBDK_IC_Contest_v2.5/Verilog/tsmc13_neg.v +maxdelays
