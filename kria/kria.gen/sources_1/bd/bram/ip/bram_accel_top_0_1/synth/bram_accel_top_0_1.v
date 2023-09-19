// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:accel_top:1.0
// IP Revision: 1

(* X_CORE_INFO = "accel_top,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "bram_accel_top_0_1,accel_top,{}" *)
(* CORE_GENERATION_INFO = "bram_accel_top_0_1,accel_top,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=accel_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,M_UW=1,M_IDW=6,M_AW=49,M_DW=128,S_AW=28,S_DW=128,S_IDW=16}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bram_accel_top_0_1 (
  clk,
  rst_n,
  s_awid,
  s_awaddr,
  s_awlen,
  s_awsize,
  s_awburst,
  s_awlock,
  s_awcache,
  s_awprot,
  s_awqos,
  s_awuser,
  s_awvalid,
  s_awready,
  s_wdata,
  s_wstrb,
  s_wlast,
  s_wvalid,
  s_wready,
  s_bid,
  s_bresp,
  s_bvalid,
  s_bready,
  s_arid,
  s_araddr,
  s_arlen,
  s_arsize,
  s_arburst,
  s_arlock,
  s_arcache,
  s_arprot,
  s_arqos,
  s_aruser,
  s_arvalid,
  s_arready,
  s_rid,
  s_rdata,
  s_rresp,
  s_rlast,
  s_rvalid,
  s_rready,
  m_aruser,
  m_awuser,
  m_awid,
  m_awaddr,
  m_awlen,
  m_awsize,
  m_awburst,
  m_awlock,
  m_awcache,
  m_awprot,
  m_awvalid,
  m_awready,
  m_wdata,
  m_wstrb,
  m_wlast,
  m_wvalid,
  m_wready,
  m_bid,
  m_bresp,
  m_bvalid,
  m_bready,
  m_arid,
  m_araddr,
  m_arlen,
  m_arsize,
  m_arburst,
  m_arlock,
  m_arcache,
  m_arprot,
  m_arvalid,
  m_arready,
  m_rid,
  m_rdata,
  m_rresp,
  m_rlast,
  m_rvalid,
  m_rready,
  m_awqos,
  m_arqos,
  intr_out,
  fan_ctrl
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF mymodule_slv:m, ASSOCIATED_RESET rst_n, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bram_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWID" *)
input wire [15 : 0] s_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWADDR" *)
input wire [27 : 0] s_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWLEN" *)
input wire [7 : 0] s_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWSIZE" *)
input wire [2 : 0] s_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWBURST" *)
input wire [1 : 0] s_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWLOCK" *)
input wire s_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWCACHE" *)
input wire [3 : 0] s_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWPROT" *)
input wire [2 : 0] s_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWQOS" *)
input wire [3 : 0] s_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWUSER" *)
input wire [15 : 0] s_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWVALID" *)
input wire s_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWREADY" *)
output wire s_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WDATA" *)
input wire [127 : 0] s_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WSTRB" *)
input wire [15 : 0] s_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WLAST" *)
input wire s_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WVALID" *)
input wire s_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WREADY" *)
output wire s_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv BID" *)
output wire [15 : 0] s_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv BRESP" *)
output wire [1 : 0] s_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv BVALID" *)
output wire s_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv BREADY" *)
input wire s_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARID" *)
input wire [15 : 0] s_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARADDR" *)
input wire [27 : 0] s_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARLEN" *)
input wire [7 : 0] s_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARSIZE" *)
input wire [2 : 0] s_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARBURST" *)
input wire [1 : 0] s_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARLOCK" *)
input wire s_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARCACHE" *)
input wire [3 : 0] s_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARPROT" *)
input wire [2 : 0] s_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARQOS" *)
input wire [3 : 0] s_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARUSER" *)
input wire [15 : 0] s_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARVALID" *)
input wire s_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARREADY" *)
output wire s_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RID" *)
output wire [15 : 0] s_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RDATA" *)
output wire [127 : 0] s_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RRESP" *)
output wire [1 : 0] s_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RLAST" *)
output wire s_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RVALID" *)
output wire s_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mymodule_slv, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299997009, ID_WIDTH 16, ADDR_WIDTH 28, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bram_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS \
4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RREADY" *)
input wire s_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARUSER" *)
output wire [0 : 0] m_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWUSER" *)
output wire [0 : 0] m_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWID" *)
output wire [5 : 0] m_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWADDR" *)
output wire [48 : 0] m_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWLEN" *)
output wire [7 : 0] m_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWSIZE" *)
output wire [2 : 0] m_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWBURST" *)
output wire [1 : 0] m_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWLOCK" *)
output wire m_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWCACHE" *)
output wire [3 : 0] m_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWPROT" *)
output wire [2 : 0] m_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWVALID" *)
output wire m_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWREADY" *)
input wire m_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m WDATA" *)
output wire [127 : 0] m_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m WSTRB" *)
output wire [15 : 0] m_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m WLAST" *)
output wire m_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m WVALID" *)
output wire m_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m WREADY" *)
input wire m_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m BID" *)
input wire [5 : 0] m_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m BRESP" *)
input wire [1 : 0] m_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m BVALID" *)
input wire m_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m BREADY" *)
output wire m_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARID" *)
output wire [5 : 0] m_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARADDR" *)
output wire [48 : 0] m_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARLEN" *)
output wire [7 : 0] m_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARSIZE" *)
output wire [2 : 0] m_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARBURST" *)
output wire [1 : 0] m_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARLOCK" *)
output wire m_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARCACHE" *)
output wire [3 : 0] m_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARPROT" *)
output wire [2 : 0] m_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARVALID" *)
output wire m_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARREADY" *)
input wire m_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m RID" *)
input wire [5 : 0] m_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m RDATA" *)
input wire [127 : 0] m_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m RRESP" *)
input wire [1 : 0] m_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m RLAST" *)
input wire m_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m RVALID" *)
input wire m_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m RREADY" *)
output wire m_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m AWQOS" *)
output wire [3 : 0] m_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299997009, ID_WIDTH 6, ADDR_WIDTH 49, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bram_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_T\
HREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m ARQOS" *)
output wire [3 : 0] m_arqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME intr_out, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 intr_out INTERRUPT" *)
output wire intr_out;
output wire fan_ctrl;

  accel_top #(
    .M_UW(1),
    .M_IDW(6),
    .M_AW(49),
    .M_DW(128),
    .S_AW(28),
    .S_DW(128),
    .S_IDW(16)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .s_awid(s_awid),
    .s_awaddr(s_awaddr),
    .s_awlen(s_awlen),
    .s_awsize(s_awsize),
    .s_awburst(s_awburst),
    .s_awlock(s_awlock),
    .s_awcache(s_awcache),
    .s_awprot(s_awprot),
    .s_awqos(s_awqos),
    .s_awuser(s_awuser),
    .s_awvalid(s_awvalid),
    .s_awready(s_awready),
    .s_wdata(s_wdata),
    .s_wstrb(s_wstrb),
    .s_wlast(s_wlast),
    .s_wvalid(s_wvalid),
    .s_wready(s_wready),
    .s_bid(s_bid),
    .s_bresp(s_bresp),
    .s_bvalid(s_bvalid),
    .s_bready(s_bready),
    .s_arid(s_arid),
    .s_araddr(s_araddr),
    .s_arlen(s_arlen),
    .s_arsize(s_arsize),
    .s_arburst(s_arburst),
    .s_arlock(s_arlock),
    .s_arcache(s_arcache),
    .s_arprot(s_arprot),
    .s_arqos(s_arqos),
    .s_aruser(s_aruser),
    .s_arvalid(s_arvalid),
    .s_arready(s_arready),
    .s_rid(s_rid),
    .s_rdata(s_rdata),
    .s_rresp(s_rresp),
    .s_rlast(s_rlast),
    .s_rvalid(s_rvalid),
    .s_rready(s_rready),
    .m_aruser(m_aruser),
    .m_awuser(m_awuser),
    .m_awid(m_awid),
    .m_awaddr(m_awaddr),
    .m_awlen(m_awlen),
    .m_awsize(m_awsize),
    .m_awburst(m_awburst),
    .m_awlock(m_awlock),
    .m_awcache(m_awcache),
    .m_awprot(m_awprot),
    .m_awvalid(m_awvalid),
    .m_awready(m_awready),
    .m_wdata(m_wdata),
    .m_wstrb(m_wstrb),
    .m_wlast(m_wlast),
    .m_wvalid(m_wvalid),
    .m_wready(m_wready),
    .m_bid(m_bid),
    .m_bresp(m_bresp),
    .m_bvalid(m_bvalid),
    .m_bready(m_bready),
    .m_arid(m_arid),
    .m_araddr(m_araddr),
    .m_arlen(m_arlen),
    .m_arsize(m_arsize),
    .m_arburst(m_arburst),
    .m_arlock(m_arlock),
    .m_arcache(m_arcache),
    .m_arprot(m_arprot),
    .m_arvalid(m_arvalid),
    .m_arready(m_arready),
    .m_rid(m_rid),
    .m_rdata(m_rdata),
    .m_rresp(m_rresp),
    .m_rlast(m_rlast),
    .m_rvalid(m_rvalid),
    .m_rready(m_rready),
    .m_awqos(m_awqos),
    .m_arqos(m_arqos),
    .intr_out(intr_out),
    .fan_ctrl(fan_ctrl)
  );
endmodule
