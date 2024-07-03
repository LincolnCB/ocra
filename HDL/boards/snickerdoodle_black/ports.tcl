### ADC

# May be vestigial, switched to single ended
create_bd_port -dir I adc_clk_i

### LED

create_bd_port -dir O -from 7 -to 0 led_o

### Baseline GPIO ports

create_bd_port -dir IO -from 24 -to 0 gpio0_tri_io
create_bd_port -dir IO -from 24 -to 0 gpio1_tri_io
create_bd_port -dir IO -from 24 -to 0 gpio2_tri_io
create_bd_port -dir IO -from 24 -to 0 gpio3_tri_io
create_bd_port -dir IO -from 24 -to 0 gpio4_tri_io
