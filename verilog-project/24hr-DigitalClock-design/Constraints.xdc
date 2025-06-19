set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports { clk1 }];
set_property -dict { PACKAGE_PIN L5    IOSTANDARD LVCMOS33 } [get_ports { rst }];

set_property -dict { PACKAGE_PIN F2    IOSTANDARD LVCMOS33 } [get_ports {out[0]}]; 
set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports {out[1]}];
set_property -dict { PACKAGE_PIN G5    IOSTANDARD LVCMOS33 } [get_ports {out[2]}];
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports {out[3]}];

set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports {seg[7]}];
set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports {seg[6]}];
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports {seg[5]}];
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports {seg[4]}];
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports {seg[3]}];
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports {seg[2]}];
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports {seg[1]}];
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports {seg[0]}];
