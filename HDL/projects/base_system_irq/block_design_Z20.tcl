# Create processing_system7
cell xilinx.com:ip:processing_system7:5.5 ps_0 {
  PCW_IMPORT_BOARD_PRESET cfg/stemlab_sdr.xml
  PCW_USE_FABRIC_INTERRUPT 1 
  PCW_IRQ_F2P_INTR 1  
} {
  M_AXI_GP0_ACLK ps_0/FCLK_CLK0
}


# Create all required interconnections
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {
  make_external {FIXED_IO, DDR}
  Master Disable
  Slave Disable
} [get_bd_cells ps_0]

# Create proc_sys_reset
cell xilinx.com:ip:proc_sys_reset:5.0 rst_0


# Create axi_cfg_register
cell pavel-demin:user:axi_cfg_register:1.0 cfg_0 {
  CFG_DATA_WIDTH 32
  AXI_ADDR_WIDTH 32
  AXI_DATA_WIDTH 32
}

# Create all required interconnections
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {
  Master /ps_0/M_AXI_GP0
  Clk Auto
} [get_bd_intf_pins cfg_0/S_AXI]

set_property RANGE 4K [get_bd_addr_segs ps_0/Data/SEG_cfg_0_reg0]
set_property OFFSET 0x40000000 [get_bd_addr_segs ps_0/Data/SEG_cfg_0_reg0]

cell xilinx.com:ip:xlconcat:2.1 irq_concat_0 {
    NUM_PORTS 1
}

# Create xlslice
cell xilinx.com:ip:xlslice:1.0 cfg_slice_0 {
  DIN_WIDTH 32 DIN_FROM 15 DIN_TO 0 DOUT_WIDTH 16
} {
  Din cfg_0/cfg_data
}
connect_bd_net [get_bd_pins irq_concat_0/In0] [get_bd_pins cfg_slice_0/Dout]
connect_bd_net [get_bd_pins ps_0/IRQ_F2P] [get_bd_pins irq_concat_0/Dout]

