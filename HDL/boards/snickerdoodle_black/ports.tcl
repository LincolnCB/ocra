# Single-ended clock (for scanner sync)
create_bd_port -dir I ext_clk_i
# Single-ended trigger
create_bd_port -dir I trigger_i

# Differential ports
create_bd_port -dir O cs_o_p
create_bd_port -dir O cs_o_n
create_bd_port -dir O spi_clk_o_n
create_bd_port -dir O spi_clk_o_p
create_bd_port -dir O ldac_o_p
create_bd_port -dir O ldac_o_n
create_bd_port -dir O -from 3 -to 0 dac_mosi_o_p
create_bd_port -dir O -from 3 -to 0 dac_mosi_o_n


#### Baseline GPIO ports
# create_bd_port -dir IO -from 24 -to 0 gpio0_tri_io
# create_bd_port -dir IO -from 24 -to 0 gpio1_tri_io
# create_bd_port -dir IO -from 24 -to 0 gpio2_tri_io
# create_bd_port -dir IO -from 24 -to 0 gpio3_tri_io
# create_bd_port -dir IO -from 24 -to 0 gpio4_tri_io
