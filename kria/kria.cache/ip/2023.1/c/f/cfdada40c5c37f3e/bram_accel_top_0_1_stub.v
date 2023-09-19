// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Aug 15 13:27:14 2023
// Host        : binh-VirtualBox running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bram_accel_top_0_1_stub.v
// Design      : bram_accel_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "accel_top,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, s_awid, s_awaddr, s_awlen, s_awsize, 
  s_awburst, s_awlock, s_awcache, s_awprot, s_awqos, s_awuser, s_awvalid, s_awready, s_wdata, 
  s_wstrb, s_wlast, s_wvalid, s_wready, s_bid, s_bresp, s_bvalid, s_bready, s_arid, s_araddr, s_arlen, 
  s_arsize, s_arburst, s_arlock, s_arcache, s_arprot, s_arqos, s_aruser, s_arvalid, s_arready, s_rid, 
  s_rdata, s_rresp, s_rlast, s_rvalid, s_rready, m_aruser, m_awuser, m_awid, m_awaddr, m_awlen, 
  m_awsize, m_awburst, m_awlock, m_awcache, m_awprot, m_awvalid, m_awready, m_wdata, m_wstrb, 
  m_wlast, m_wvalid, m_wready, m_bid, m_bresp, m_bvalid, m_bready, m_arid, m_araddr, m_arlen, m_arsize, 
  m_arburst, m_arlock, m_arcache, m_arprot, m_arvalid, m_arready, m_rid, m_rdata, m_rresp, m_rlast, 
  m_rvalid, m_rready, m_awqos, m_arqos, intr_out, fan_ctrl)
/* synthesis syn_black_box black_box_pad_pin="rst_n,s_awid[15:0],s_awaddr[27:0],s_awlen[7:0],s_awsize[2:0],s_awburst[1:0],s_awlock,s_awcache[3:0],s_awprot[2:0],s_awqos[3:0],s_awuser[15:0],s_awvalid,s_awready,s_wdata[127:0],s_wstrb[15:0],s_wlast,s_wvalid,s_wready,s_bid[15:0],s_bresp[1:0],s_bvalid,s_bready,s_arid[15:0],s_araddr[27:0],s_arlen[7:0],s_arsize[2:0],s_arburst[1:0],s_arlock,s_arcache[3:0],s_arprot[2:0],s_arqos[3:0],s_aruser[15:0],s_arvalid,s_arready,s_rid[15:0],s_rdata[127:0],s_rresp[1:0],s_rlast,s_rvalid,s_rready,m_aruser[0:0],m_awuser[0:0],m_awid[5:0],m_awaddr[48:0],m_awlen[7:0],m_awsize[2:0],m_awburst[1:0],m_awlock,m_awcache[3:0],m_awprot[2:0],m_awvalid,m_awready,m_wdata[127:0],m_wstrb[15:0],m_wlast,m_wvalid,m_wready,m_bid[5:0],m_bresp[1:0],m_bvalid,m_bready,m_arid[5:0],m_araddr[48:0],m_arlen[7:0],m_arsize[2:0],m_arburst[1:0],m_arlock,m_arcache[3:0],m_arprot[2:0],m_arvalid,m_arready,m_rid[5:0],m_rdata[127:0],m_rresp[1:0],m_rlast,m_rvalid,m_rready,m_awqos[3:0],m_arqos[3:0],intr_out,fan_ctrl" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input [15:0]s_awid;
  input [27:0]s_awaddr;
  input [7:0]s_awlen;
  input [2:0]s_awsize;
  input [1:0]s_awburst;
  input s_awlock;
  input [3:0]s_awcache;
  input [2:0]s_awprot;
  input [3:0]s_awqos;
  input [15:0]s_awuser;
  input s_awvalid;
  output s_awready;
  input [127:0]s_wdata;
  input [15:0]s_wstrb;
  input s_wlast;
  input s_wvalid;
  output s_wready;
  output [15:0]s_bid;
  output [1:0]s_bresp;
  output s_bvalid;
  input s_bready;
  input [15:0]s_arid;
  input [27:0]s_araddr;
  input [7:0]s_arlen;
  input [2:0]s_arsize;
  input [1:0]s_arburst;
  input s_arlock;
  input [3:0]s_arcache;
  input [2:0]s_arprot;
  input [3:0]s_arqos;
  input [15:0]s_aruser;
  input s_arvalid;
  output s_arready;
  output [15:0]s_rid;
  output [127:0]s_rdata;
  output [1:0]s_rresp;
  output s_rlast;
  output s_rvalid;
  input s_rready;
  output [0:0]m_aruser;
  output [0:0]m_awuser;
  output [5:0]m_awid;
  output [48:0]m_awaddr;
  output [7:0]m_awlen;
  output [2:0]m_awsize;
  output [1:0]m_awburst;
  output m_awlock;
  output [3:0]m_awcache;
  output [2:0]m_awprot;
  output m_awvalid;
  input m_awready;
  output [127:0]m_wdata;
  output [15:0]m_wstrb;
  output m_wlast;
  output m_wvalid;
  input m_wready;
  input [5:0]m_bid;
  input [1:0]m_bresp;
  input m_bvalid;
  output m_bready;
  output [5:0]m_arid;
  output [48:0]m_araddr;
  output [7:0]m_arlen;
  output [2:0]m_arsize;
  output [1:0]m_arburst;
  output m_arlock;
  output [3:0]m_arcache;
  output [2:0]m_arprot;
  output m_arvalid;
  input m_arready;
  input [5:0]m_rid;
  input [127:0]m_rdata;
  input [1:0]m_rresp;
  input m_rlast;
  input m_rvalid;
  output m_rready;
  output [3:0]m_awqos;
  output [3:0]m_arqos;
  output intr_out;
  output fan_ctrl;
endmodule
