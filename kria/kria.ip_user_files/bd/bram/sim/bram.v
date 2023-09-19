//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Sep 19 14:51:52 2023
//Host        : DESKTOP-MHGG8FQ running 64-bit major release  (build 9200)
//Command     : generate_target bram.bd
//Design      : bram
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bram,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bram,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bram.hwdef" *) 
module bram
   (fan_ctrl_0);
  output fan_ctrl_0;

  wire [127:0]accel_top_0_accel_aes_key;
  wire accel_top_0_fan_ctrl;
  wire accel_top_0_intr_out;
  wire [48:0]accel_top_0_m_ARADDR;
  wire [1:0]accel_top_0_m_ARBURST;
  wire [3:0]accel_top_0_m_ARCACHE;
  wire [5:0]accel_top_0_m_ARID;
  wire [7:0]accel_top_0_m_ARLEN;
  wire accel_top_0_m_ARLOCK;
  wire [2:0]accel_top_0_m_ARPROT;
  wire [3:0]accel_top_0_m_ARQOS;
  wire accel_top_0_m_ARREADY;
  wire [2:0]accel_top_0_m_ARSIZE;
  wire [0:0]accel_top_0_m_ARUSER;
  wire accel_top_0_m_ARVALID;
  wire [48:0]accel_top_0_m_AWADDR;
  wire [1:0]accel_top_0_m_AWBURST;
  wire [3:0]accel_top_0_m_AWCACHE;
  wire [5:0]accel_top_0_m_AWID;
  wire [7:0]accel_top_0_m_AWLEN;
  wire accel_top_0_m_AWLOCK;
  wire [2:0]accel_top_0_m_AWPROT;
  wire [3:0]accel_top_0_m_AWQOS;
  wire accel_top_0_m_AWREADY;
  wire [2:0]accel_top_0_m_AWSIZE;
  wire [0:0]accel_top_0_m_AWUSER;
  wire accel_top_0_m_AWVALID;
  wire [5:0]accel_top_0_m_BID;
  wire accel_top_0_m_BREADY;
  wire [1:0]accel_top_0_m_BRESP;
  wire accel_top_0_m_BVALID;
  wire [127:0]accel_top_0_m_RDATA;
  wire [5:0]accel_top_0_m_RID;
  wire accel_top_0_m_RLAST;
  wire accel_top_0_m_RREADY;
  wire [1:0]accel_top_0_m_RRESP;
  wire accel_top_0_m_RVALID;
  wire [127:0]accel_top_0_m_WDATA;
  wire accel_top_0_m_WLAST;
  wire accel_top_0_m_WREADY;
  wire [15:0]accel_top_0_m_WSTRB;
  wire accel_top_0_m_WVALID;
  wire [127:0]accel_top_0_toaccel_TDATA;
  wire accel_top_0_toaccel_TREADY;
  wire accel_top_0_toaccel_TVALID;
  wire [127:0]aes_accel_0_outa_TDATA;
  wire aes_accel_0_outa_TREADY;
  wire aes_accel_0_outa_TVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign fan_ctrl_0 = accel_top_0_fan_ctrl;
  bram_accel_top_0_1 accel_top_0
       (.accel_aes_key(accel_top_0_accel_aes_key),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .fan_ctrl(accel_top_0_fan_ctrl),
        .fromaccel_tdata(aes_accel_0_outa_TDATA),
        .fromaccel_tready(aes_accel_0_outa_TREADY),
        .fromaccel_tvalid(aes_accel_0_outa_TVALID),
        .intr_out(accel_top_0_intr_out),
        .m_araddr(accel_top_0_m_ARADDR),
        .m_arburst(accel_top_0_m_ARBURST),
        .m_arcache(accel_top_0_m_ARCACHE),
        .m_arid(accel_top_0_m_ARID),
        .m_arlen(accel_top_0_m_ARLEN),
        .m_arlock(accel_top_0_m_ARLOCK),
        .m_arprot(accel_top_0_m_ARPROT),
        .m_arqos(accel_top_0_m_ARQOS),
        .m_arready(accel_top_0_m_ARREADY),
        .m_arsize(accel_top_0_m_ARSIZE),
        .m_aruser(accel_top_0_m_ARUSER),
        .m_arvalid(accel_top_0_m_ARVALID),
        .m_awaddr(accel_top_0_m_AWADDR),
        .m_awburst(accel_top_0_m_AWBURST),
        .m_awcache(accel_top_0_m_AWCACHE),
        .m_awid(accel_top_0_m_AWID),
        .m_awlen(accel_top_0_m_AWLEN),
        .m_awlock(accel_top_0_m_AWLOCK),
        .m_awprot(accel_top_0_m_AWPROT),
        .m_awqos(accel_top_0_m_AWQOS),
        .m_awready(accel_top_0_m_AWREADY),
        .m_awsize(accel_top_0_m_AWSIZE),
        .m_awuser(accel_top_0_m_AWUSER),
        .m_awvalid(accel_top_0_m_AWVALID),
        .m_bid(accel_top_0_m_BID),
        .m_bready(accel_top_0_m_BREADY),
        .m_bresp(accel_top_0_m_BRESP),
        .m_bvalid(accel_top_0_m_BVALID),
        .m_rdata(accel_top_0_m_RDATA),
        .m_rid(accel_top_0_m_RID),
        .m_rlast(accel_top_0_m_RLAST),
        .m_rready(accel_top_0_m_RREADY),
        .m_rresp(accel_top_0_m_RRESP),
        .m_rvalid(accel_top_0_m_RVALID),
        .m_wdata(accel_top_0_m_WDATA),
        .m_wlast(accel_top_0_m_WLAST),
        .m_wready(accel_top_0_m_WREADY),
        .m_wstrb(accel_top_0_m_WSTRB),
        .m_wvalid(accel_top_0_m_WVALID),
        .rst_n(proc_sys_reset_0_peripheral_aresetn),
        .s_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR[27:0]),
        .s_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .s_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .s_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .s_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .s_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .s_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .s_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .s_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .s_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .s_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .s_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .s_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR[27:0]),
        .s_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .s_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .s_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .s_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .s_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .s_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .s_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .s_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .s_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .s_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .s_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .s_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .s_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .s_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .s_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .s_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .s_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .s_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .s_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .s_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .s_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .s_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .s_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .s_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .s_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .s_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .toaccel_tdata(accel_top_0_toaccel_TDATA),
        .toaccel_tready(accel_top_0_toaccel_TREADY),
        .toaccel_tvalid(accel_top_0_toaccel_TVALID));
  bram_aes_accel_0_0 aes_accel_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .ina_tdata(accel_top_0_toaccel_TDATA),
        .ina_tready(accel_top_0_toaccel_TREADY),
        .ina_tvalid(accel_top_0_toaccel_TVALID),
        .key_in(accel_top_0_accel_aes_key),
        .outa_tdata(aes_accel_0_outa_TDATA),
        .outa_tready(aes_accel_0_outa_TREADY),
        .outa_tvalid(aes_accel_0_outa_TVALID),
        .rst_n(proc_sys_reset_0_peripheral_aresetn));
  bram_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  bram_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(accel_top_0_intr_out),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr(accel_top_0_m_ARADDR),
        .saxigp0_arburst(accel_top_0_m_ARBURST),
        .saxigp0_arcache(accel_top_0_m_ARCACHE),
        .saxigp0_arid(accel_top_0_m_ARID),
        .saxigp0_arlen(accel_top_0_m_ARLEN),
        .saxigp0_arlock(accel_top_0_m_ARLOCK),
        .saxigp0_arprot(accel_top_0_m_ARPROT),
        .saxigp0_arqos(accel_top_0_m_ARQOS),
        .saxigp0_arready(accel_top_0_m_ARREADY),
        .saxigp0_arsize(accel_top_0_m_ARSIZE),
        .saxigp0_aruser(accel_top_0_m_ARUSER),
        .saxigp0_arvalid(accel_top_0_m_ARVALID),
        .saxigp0_awaddr(accel_top_0_m_AWADDR),
        .saxigp0_awburst(accel_top_0_m_AWBURST),
        .saxigp0_awcache(accel_top_0_m_AWCACHE),
        .saxigp0_awid(accel_top_0_m_AWID),
        .saxigp0_awlen(accel_top_0_m_AWLEN),
        .saxigp0_awlock(accel_top_0_m_AWLOCK),
        .saxigp0_awprot(accel_top_0_m_AWPROT),
        .saxigp0_awqos(accel_top_0_m_AWQOS),
        .saxigp0_awready(accel_top_0_m_AWREADY),
        .saxigp0_awsize(accel_top_0_m_AWSIZE),
        .saxigp0_awuser(accel_top_0_m_AWUSER),
        .saxigp0_awvalid(accel_top_0_m_AWVALID),
        .saxigp0_bid(accel_top_0_m_BID),
        .saxigp0_bready(accel_top_0_m_BREADY),
        .saxigp0_bresp(accel_top_0_m_BRESP),
        .saxigp0_bvalid(accel_top_0_m_BVALID),
        .saxigp0_rdata(accel_top_0_m_RDATA),
        .saxigp0_rid(accel_top_0_m_RID),
        .saxigp0_rlast(accel_top_0_m_RLAST),
        .saxigp0_rready(accel_top_0_m_RREADY),
        .saxigp0_rresp(accel_top_0_m_RRESP),
        .saxigp0_rvalid(accel_top_0_m_RVALID),
        .saxigp0_wdata(accel_top_0_m_WDATA),
        .saxigp0_wlast(accel_top_0_m_WLAST),
        .saxigp0_wready(accel_top_0_m_WREADY),
        .saxigp0_wstrb(accel_top_0_m_WSTRB),
        .saxigp0_wvalid(accel_top_0_m_WVALID),
        .saxihpc0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule
