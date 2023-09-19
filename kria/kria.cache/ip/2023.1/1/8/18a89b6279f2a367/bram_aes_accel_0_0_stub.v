// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 19 14:54:24 2023
// Host        : DESKTOP-MHGG8FQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bram_aes_accel_0_0_stub.v
// Design      : bram_aes_accel_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "aes_accel,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, key_in, ina_tdata, ina_tvalid, 
  ina_tready, outa_tdata, outa_tvalid, outa_tready)
/* synthesis syn_black_box black_box_pad_pin="rst_n,key_in[127:0],ina_tdata[127:0],ina_tvalid,ina_tready,outa_tdata[127:0],outa_tvalid,outa_tready" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input [127:0]key_in;
  input [127:0]ina_tdata;
  input ina_tvalid;
  output ina_tready;
  output [127:0]outa_tdata;
  output outa_tvalid;
  input outa_tready;
endmodule
