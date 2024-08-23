set display_name {Differential Output Buffer}

set core [ipx::current_core]

set_property DISPLAY_NAME $display_name $core
set_property DESCRIPTION $display_name $core

core_parameter DIFF_BUFFER_WIDTH {DIFF BUFFER WIDTH} {Width of the differential buffer and I/O port size.}

