#GPIO LEDs
set_property PACKAGE_PIN AT32 [get_ports init_calib_complete]
set_property IOSTANDARD LVCMOS12 [get_ports init_calib_complete]
set_property PACKAGE_PIN AV34 [get_ports user_link_up_0]
set_property IOSTANDARD LVCMOS12 [get_ports user_link_up_0]
#set_property PACKAGE_PIN AY30 [get_ports user_link_up_1]
#set_property IOSTANDARD LVCMOS12 [get_ports user_link_up_1]
#set_property PACKAGE_PIN BB32 [get_ports gpio_led_3]
#set_property IOSTANDARD LVCMOS12 [get_ports gpio_led_3]
#set_property PACKAGE_PIN BF32 [get_ports gpio_led_4]
#set_property IOSTANDARD LVCMOS12 [get_ports gpio_led_4]
#set_property PACKAGE_PIN AU37 [get_ports gpio_led_5]
#set_property IOSTANDARD LVCMOS12 [get_ports gpio_led_5]
#set_property PACKAGE_PIN AV36 [get_ports gpio_led_6]
#set_property IOSTANDARD LVCMOS12 [get_ports gpio_led_6]
#set_property PACKAGE_PIN BA37 [get_ports gpio_led_7]
#set_property IOSTANDARD LVCMOS12 [get_ports gpio_led_7]

# PCI Express reset (perst) - IOSTANDARD determined by VADJ which is fixed to 1.8V on VCU118
set_property PACKAGE_PIN AL35 [get_ports {perst_0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {perst_0[0]}]

# PEDET - AL36 - IOSTANDARD determined by VADJ which is fixed to 1.8V on VCU118

# PCI Express reference clock 100MHz
# IOSTANDARD for GT reference clock does not need to be specified
set_property PACKAGE_PIN AK38 [get_ports {ref_clk_0_clk_p[0]}]
set_property PACKAGE_PIN AK39 [get_ports {ref_clk_0_clk_n[0]}]
create_clock -period 10.000 -name ref_clk_0_clk_p -waveform {0.000 5.000} [get_ports ref_clk_0_clk_p]

# MGT locations (SSD1: Bank 121 X0Y8-X0Y11, SSD2: Bank 126 X0Y28-X0Y31)
set_property LOC GTYE4_CHANNEL_X0Y8 [get_cells -hier -filter {NAME =~ *_i/axi_pcie_0/*/gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST}]
set_property LOC GTYE4_CHANNEL_X0Y9 [get_cells -hier -filter {NAME =~ *_i/axi_pcie_0/*/gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST}]
set_property LOC GTYE4_CHANNEL_X0Y10 [get_cells -hier -filter {NAME =~ *_i/axi_pcie_0/*/gtye4_channel_gen.gen_gtye4_channel_inst[2].GTYE4_CHANNEL_PRIM_INST}]
set_property LOC GTYE4_CHANNEL_X0Y11 [get_cells -hier -filter {NAME =~ *_i/axi_pcie_0/*/gtye4_channel_gen.gen_gtye4_channel_inst[3].GTYE4_CHANNEL_PRIM_INST}]

# VCU118 FMCP transceivers for SSD1 are best aligned with PCIE_X0Y1
set_property LOC PCIE40E4_X0Y1 [get_cells -hier -filter {NAME =~ *_i/axi_pcie_0/*/pcie_4_0_e4_inst}]

# BPI flash physical constraints for VCU118

#set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[0]]
#set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[1]]
#set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[2]]
#set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[3]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[4]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[5]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[6]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[7]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[8]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[9]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[10]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[11]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[12]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[13]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[14]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_dq_io[15]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[0]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[1]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[2]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[3]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[4]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[5]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[6]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[7]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[8]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[9]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[10]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[11]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[12]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[13]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[14]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[15]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[16]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[17]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[18]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[19]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[20]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[21]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[22]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[23]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[24]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_address[25]]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_adv_ldn]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_we_n]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_oe_n]
set_property IOSTANDARD LVCMOS18 [get_ports Linear_Flash_wait[0]]


#set_property PACKAGE_PIN AP11 [get_ports Linear_Flash_dq_io[0]]
#set_property PACKAGE_PIN AN11 [get_ports Linear_Flash_dq_io[1]]
#set_property PACKAGE_PIN AM11 [get_ports Linear_Flash_dq_io[2]]
#set_property PACKAGE_PIN AL11 [get_ports Linear_Flash_dq_io[3]]
set_property PACKAGE_PIN AM19 [get_ports Linear_Flash_dq_io[4]]
set_property PACKAGE_PIN AM18 [get_ports Linear_Flash_dq_io[5]]
set_property PACKAGE_PIN AN20 [get_ports Linear_Flash_dq_io[6]]
set_property PACKAGE_PIN AP20 [get_ports Linear_Flash_dq_io[7]]
set_property PACKAGE_PIN AN19 [get_ports Linear_Flash_dq_io[8]]
set_property PACKAGE_PIN AN18 [get_ports Linear_Flash_dq_io[9]]
set_property PACKAGE_PIN AR18 [get_ports Linear_Flash_dq_io[10]]
set_property PACKAGE_PIN AR17 [get_ports Linear_Flash_dq_io[11]]
set_property PACKAGE_PIN AT20 [get_ports Linear_Flash_dq_io[12]]
set_property PACKAGE_PIN AT19 [get_ports Linear_Flash_dq_io[13]]
set_property PACKAGE_PIN AT17 [get_ports Linear_Flash_dq_io[14]]
set_property PACKAGE_PIN AU17 [get_ports Linear_Flash_dq_io[15]]
set_property PACKAGE_PIN AR20 [get_ports Linear_Flash_address[0]]
set_property PACKAGE_PIN AR19 [get_ports Linear_Flash_address[1]]
set_property PACKAGE_PIN AV20 [get_ports Linear_Flash_address[2]]
set_property PACKAGE_PIN AW20 [get_ports Linear_Flash_address[3]]
set_property PACKAGE_PIN AU19 [get_ports Linear_Flash_address[4]]
set_property PACKAGE_PIN AU18 [get_ports Linear_Flash_address[5]]
set_property PACKAGE_PIN AV19 [get_ports Linear_Flash_address[6]]
set_property PACKAGE_PIN AV18 [get_ports Linear_Flash_address[7]]
set_property PACKAGE_PIN AW18 [get_ports Linear_Flash_address[8]]
set_property PACKAGE_PIN AY18 [get_ports Linear_Flash_address[9]]
set_property PACKAGE_PIN AY19 [get_ports Linear_Flash_address[10]]
set_property PACKAGE_PIN BA19 [get_ports Linear_Flash_address[11]]
set_property PACKAGE_PIN BA17 [get_ports Linear_Flash_address[12]]
set_property PACKAGE_PIN BB17 [get_ports Linear_Flash_address[13]]
set_property PACKAGE_PIN BB19 [get_ports Linear_Flash_address[14]]
set_property PACKAGE_PIN BC19 [get_ports Linear_Flash_address[15]]
set_property PACKAGE_PIN BB18 [get_ports Linear_Flash_address[16]]
set_property PACKAGE_PIN BC18 [get_ports Linear_Flash_address[17]]
set_property PACKAGE_PIN AY20 [get_ports Linear_Flash_address[18]]
set_property PACKAGE_PIN BA20 [get_ports Linear_Flash_address[19]]
set_property PACKAGE_PIN BD18 [get_ports Linear_Flash_address[20]]
set_property PACKAGE_PIN BD17 [get_ports Linear_Flash_address[21]]
set_property PACKAGE_PIN BC20 [get_ports Linear_Flash_address[22]]
set_property PACKAGE_PIN BD20 [get_ports Linear_Flash_address[23]]
set_property PACKAGE_PIN BE18 [get_ports Linear_Flash_address[24]]
set_property PACKAGE_PIN BE17 [get_ports Linear_Flash_address[25]]
set_property PACKAGE_PIN AW17 [get_ports Linear_Flash_adv_ldn]
set_property PACKAGE_PIN BF16 [get_ports Linear_Flash_we_n]
set_property PACKAGE_PIN BF17 [get_ports Linear_Flash_oe_n]
set_property PACKAGE_PIN AL19 [get_ports Linear_Flash_wait[0]]

# Configuration via BPI flash for VCU118
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CONFIG_MODE BPI16 [current_design]
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]