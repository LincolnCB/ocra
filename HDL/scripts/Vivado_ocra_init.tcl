
# source this from your Vivado_init.tcl
set ocra_dir $::env(OCRA_DIR)
set_param board.repoPaths [list ${ocra_dir}/HDL/boards/snickerdoodle_black/brd/1.0/ ${ocra_dir}/HDL/boards/stemlab_125_14/brd/redpitaya/1.1/ ]