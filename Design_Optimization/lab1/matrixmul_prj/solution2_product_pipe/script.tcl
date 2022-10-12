############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrixmul_prj
set_top matrixmul
add_files matrixmul.cpp
add_files -tb matrixmul_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2_product_pipe"
set_part {xc7z007s-clg400-1}
create_clock -period 75MHz -name default
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
set_clock_uncertainty 12.5%
source "./matrixmul_prj/solution2_product_pipe/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
