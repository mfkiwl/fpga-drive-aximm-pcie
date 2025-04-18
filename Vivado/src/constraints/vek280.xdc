#----------------------------------------------------------------------------------------
# Constraints for Opsero FPGA Drive FMC Gen4 ref design for VEK280 using 2x SSDs
#----------------------------------------------------------------------------------------

# SSD1 PCI Express reset (perst_0)
set_property PACKAGE_PIN AV30 [get_ports {perst_0[0]}]; # LA00_CC_P
set_property IOSTANDARD LVCMOS15 [get_ports {perst_0[0]}]

# SSD2 PCI Express reset (perst_1)
set_property PACKAGE_PIN BA31 [get_ports {perst_1[0]}]; # LA04_P
set_property IOSTANDARD LVCMOS15 [get_ports {perst_1[0]}]

# SSD1 PE Detect (pedet_0, not connected in the design)
# set_property PACKAGE_PIN AW30 [get_ports {pedet_0[0]}]; # LA00_CC_N
# set_property IOSTANDARD LVCMOS15 [get_ports {pedet_0[0]}]

# SSD2 PE Detect (pedet_1, not connected in the design)
# set_property PACKAGE_PIN BB31 [get_ports {pedet_1[0]}]; # LA04_N
# set_property IOSTANDARD LVCMOS15 [get_ports {pedet_1[0]}]

# Disable signal for 3.3V power supply for SSD2 (disable_ssd2_pwr)
set_property PACKAGE_PIN AW32 [get_ports disable_ssd2_pwr]; # LA07_P
set_property IOSTANDARD LVCMOS15 [get_ports disable_ssd2_pwr]

##############################
# PCIe reference clock 100MHz
##############################

# SSD1 ref clock
set_property PACKAGE_PIN W32 [get_ports {ref_clk_0_clk_p[0]}]; # GBTCLK0_M2C_P
set_property PACKAGE_PIN W33 [get_ports {ref_clk_0_clk_n[0]}]; # GBTCLK0_M2C_N
create_clock -period 10.000 -name ref_clk_0_clk_p -waveform {0.000 5.000} [get_ports ref_clk_0_clk_p]

# SSD2 ref clock
set_property PACKAGE_PIN N34 [get_ports {ref_clk_1_clk_p[0]}]; # GBTCLK1_M2C_P
set_property PACKAGE_PIN N35 [get_ports {ref_clk_1_clk_n[0]}]; # GBTCLK1_M2C_N
create_clock -period 10.000 -name ref_clk_1_clk_p -waveform {0.000 5.000} [get_ports ref_clk_1_clk_p]

############################
# SSD1 Gigabit transceivers
############################

set_property PACKAGE_PIN K36 [get_ports {pci_exp_0_gtx_p[0]}]; # DP0_C2M_P
set_property PACKAGE_PIN K37 [get_ports {pci_exp_0_gtx_n[0]}]; # DP0_C2M_N
set_property PACKAGE_PIN J39 [get_ports {pci_exp_0_grx_p[0]}]; # DP0_M2C_P
set_property PACKAGE_PIN J40 [get_ports {pci_exp_0_grx_n[0]}]; # DP0_M2C_N

set_property PACKAGE_PIN H36 [get_ports {pci_exp_0_gtx_p[1]}]; # DP1_C2M_P
set_property PACKAGE_PIN H37 [get_ports {pci_exp_0_gtx_n[1]}]; # DP1_C2M_N
set_property PACKAGE_PIN H41 [get_ports {pci_exp_0_grx_p[1]}]; # DP1_M2C_P
set_property PACKAGE_PIN H42 [get_ports {pci_exp_0_grx_n[1]}]; # DP1_M2C_N

set_property PACKAGE_PIN F36 [get_ports {pci_exp_0_gtx_p[2]}]; # DP2_C2M_P
set_property PACKAGE_PIN F37 [get_ports {pci_exp_0_gtx_n[2]}]; # DP2_C2M_N
set_property PACKAGE_PIN G39 [get_ports {pci_exp_0_grx_p[2]}]; # DP2_M2C_P
set_property PACKAGE_PIN G40 [get_ports {pci_exp_0_grx_n[2]}]; # DP2_M2C_N

set_property PACKAGE_PIN E34 [get_ports {pci_exp_0_gtx_p[3]}]; # DP3_C2M_P
set_property PACKAGE_PIN E35 [get_ports {pci_exp_0_gtx_n[3]}]; # DP3_C2M_N
set_property PACKAGE_PIN F41 [get_ports {pci_exp_0_grx_p[3]}]; # DP3_M2C_P
set_property PACKAGE_PIN F42 [get_ports {pci_exp_0_grx_n[3]}]; # DP3_M2C_N

############################
# SSD2 Gigabit transceivers
############################

set_property PACKAGE_PIN D36 [get_ports {pci_exp_1_gtx_p[0]}]; # DP4_C2M_P
set_property PACKAGE_PIN D37 [get_ports {pci_exp_1_gtx_n[0]}]; # DP4_C2M_N
set_property PACKAGE_PIN E39 [get_ports {pci_exp_1_grx_p[0]}]; # DP4_M2C_P
set_property PACKAGE_PIN E40 [get_ports {pci_exp_1_grx_n[0]}]; # DP4_M2C_N

set_property PACKAGE_PIN C34 [get_ports {pci_exp_1_gtx_p[1]}]; # DP5_C2M_P
set_property PACKAGE_PIN C35 [get_ports {pci_exp_1_gtx_n[1]}]; # DP5_C2M_N
set_property PACKAGE_PIN D41 [get_ports {pci_exp_1_grx_p[1]}]; # DP5_M2C_P
set_property PACKAGE_PIN D42 [get_ports {pci_exp_1_grx_n[1]}]; # DP5_M2C_N

set_property PACKAGE_PIN B36 [get_ports {pci_exp_1_gtx_p[2]}]; # DP6_C2M_P
set_property PACKAGE_PIN B37 [get_ports {pci_exp_1_gtx_n[2]}]; # DP6_C2M_N
set_property PACKAGE_PIN C39 [get_ports {pci_exp_1_grx_p[2]}]; # DP6_M2C_P
set_property PACKAGE_PIN C40 [get_ports {pci_exp_1_grx_n[2]}]; # DP6_M2C_N

set_property PACKAGE_PIN A34 [get_ports {pci_exp_1_gtx_p[3]}]; # DP7_C2M_P
set_property PACKAGE_PIN A35 [get_ports {pci_exp_1_gtx_n[3]}]; # DP7_C2M_N
set_property PACKAGE_PIN A39 [get_ports {pci_exp_1_grx_p[3]}]; # DP7_M2C_P
set_property PACKAGE_PIN A40 [get_ports {pci_exp_1_grx_n[3]}]; # DP7_M2C_N

