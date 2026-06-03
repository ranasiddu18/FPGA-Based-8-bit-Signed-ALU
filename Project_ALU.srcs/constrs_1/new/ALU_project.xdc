###############################################################################
# CLOCK
###############################################################################

set_property -dict { PACKAGE_PIN N11 IOSTANDARD LVCMOS33 } [get_ports clk]

###############################################################################
# DATA INPUT BUS (SW0-SW7)
###############################################################################

set_property -dict { PACKAGE_PIN L5 IOSTANDARD LVCMOS33 } [get_ports {data_in[0]}]
set_property -dict { PACKAGE_PIN L4 IOSTANDARD LVCMOS33 } [get_ports {data_in[1]}]
set_property -dict { PACKAGE_PIN M4 IOSTANDARD LVCMOS33 } [get_ports {data_in[2]}]
set_property -dict { PACKAGE_PIN M2 IOSTANDARD LVCMOS33 } [get_ports {data_in[3]}]
set_property -dict { PACKAGE_PIN M1 IOSTANDARD LVCMOS33 } [get_ports {data_in[4]}]
set_property -dict { PACKAGE_PIN N3 IOSTANDARD LVCMOS33 } [get_ports {data_in[5]}]
set_property -dict { PACKAGE_PIN N2 IOSTANDARD LVCMOS33 } [get_ports {data_in[6]}]
set_property -dict { PACKAGE_PIN N1 IOSTANDARD LVCMOS33 } [get_ports {data_in[7]}]

###############################################################################
# OPCODE BUS (SW8-SW12)
###############################################################################

set_property -dict { PACKAGE_PIN P1 IOSTANDARD LVCMOS33 } [get_ports {opcode[0]}]
set_property -dict { PACKAGE_PIN P4 IOSTANDARD LVCMOS33 } [get_ports {opcode[1]}]
set_property -dict { PACKAGE_PIN T8 IOSTANDARD LVCMOS33 } [get_ports {opcode[2]}]
set_property -dict { PACKAGE_PIN R8 IOSTANDARD LVCMOS33 } [get_ports {opcode[3]}]
set_property -dict { PACKAGE_PIN N6 IOSTANDARD LVCMOS33 } [get_ports {opcode[4]}]

###############################################################################
# PUSH BUTTONS
###############################################################################

set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33 PULLDOWN true} [get_ports load_a]

set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33 PULLDOWN true} [get_ports load_b]

###############################################################################
# LEDs (RESULT[15:0])
###############################################################################

set_property -dict { PACKAGE_PIN J3 IOSTANDARD LVCMOS33 } [get_ports {led[0]}]
set_property -dict { PACKAGE_PIN H3 IOSTANDARD LVCMOS33 } [get_ports {led[1]}]
set_property -dict { PACKAGE_PIN J1 IOSTANDARD LVCMOS33 } [get_ports {led[2]}]
set_property -dict { PACKAGE_PIN K1 IOSTANDARD LVCMOS33 } [get_ports {led[3]}]
set_property -dict { PACKAGE_PIN L3 IOSTANDARD LVCMOS33 } [get_ports {led[4]}]
set_property -dict { PACKAGE_PIN L2 IOSTANDARD LVCMOS33 } [get_ports {led[5]}]
set_property -dict { PACKAGE_PIN K3 IOSTANDARD LVCMOS33 } [get_ports {led[6]}]
set_property -dict { PACKAGE_PIN K2 IOSTANDARD LVCMOS33 } [get_ports {led[7]}]

set_property -dict { PACKAGE_PIN K5 IOSTANDARD LVCMOS33 } [get_ports {led[8]}]
set_property -dict { PACKAGE_PIN P6 IOSTANDARD LVCMOS33 } [get_ports {led[9]}]
set_property -dict { PACKAGE_PIN R7 IOSTANDARD LVCMOS33 } [get_ports {led[10]}]
set_property -dict { PACKAGE_PIN R6 IOSTANDARD LVCMOS33 } [get_ports {led[11]}]
set_property -dict { PACKAGE_PIN T5 IOSTANDARD LVCMOS33 } [get_ports {led[12]}]
set_property -dict { PACKAGE_PIN R5 IOSTANDARD LVCMOS33 } [get_ports {led[13]}]
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports {led[14]}]
set_property -dict { PACKAGE_PIN T9 IOSTANDARD LVCMOS33 } [get_ports {led[15]}]

###############################################################################
# 7 SEGMENT DIGIT SELECT
###############################################################################

set_property -dict { PACKAGE_PIN F2 IOSTANDARD LVCMOS33 } [get_ports {digit[0]}]
set_property -dict { PACKAGE_PIN E1 IOSTANDARD LVCMOS33 } [get_ports {digit[1]}]
set_property -dict { PACKAGE_PIN G5 IOSTANDARD LVCMOS33 } [get_ports {digit[2]}]
set_property -dict { PACKAGE_PIN G4 IOSTANDARD LVCMOS33 } [get_ports {digit[3]}]

###############################################################################
# 7 SEGMENT SEGMENTS
###############################################################################

set_property -dict { PACKAGE_PIN G2 IOSTANDARD LVCMOS33 } [get_ports {Seven_Seg[0]}]
set_property -dict { PACKAGE_PIN G1 IOSTANDARD LVCMOS33 } [get_ports {Seven_Seg[1]}]
set_property -dict { PACKAGE_PIN H5 IOSTANDARD LVCMOS33 } [get_ports {Seven_Seg[2]}]
set_property -dict { PACKAGE_PIN H4 IOSTANDARD LVCMOS33 } [get_ports {Seven_Seg[3]}]
set_property -dict { PACKAGE_PIN J5 IOSTANDARD LVCMOS33 } [get_ports {Seven_Seg[4]}]
set_property -dict { PACKAGE_PIN J4 IOSTANDARD LVCMOS33 } [get_ports {Seven_Seg[5]}]
set_property -dict { PACKAGE_PIN H2 IOSTANDARD LVCMOS33 } [get_ports {Seven_Seg[6]}]
set_property -dict { PACKAGE_PIN H1 IOSTANDARD LVCMOS33 } [get_ports {Seven_Seg[7]}]