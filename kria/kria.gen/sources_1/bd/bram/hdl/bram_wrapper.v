//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Fri Sep  8 13:47:27 2023
//Host        : binh-VirtualBox running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target bram_wrapper.bd
//Design      : bram_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bram_wrapper
   (fan_ctrl_0);
  output fan_ctrl_0;

  wire fan_ctrl_0;

  bram bram_i
       (.fan_ctrl_0(fan_ctrl_0));
endmodule
