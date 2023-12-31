-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Mon Aug 14 13:55:22 2023
-- Host        : binh-VirtualBox running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bram_zynq_ultra_ps_e_0_0_stub.vhdl
-- Design      : bram_zynq_ultra_ps_e_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    maxihpm0_fpd_aclk : in STD_LOGIC;
    maxigp0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_awlock : out STD_LOGIC;
    maxigp0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awvalid : out STD_LOGIC;
    maxigp0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awready : in STD_LOGIC;
    maxigp0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_wlast : out STD_LOGIC;
    maxigp0_wvalid : out STD_LOGIC;
    maxigp0_wready : in STD_LOGIC;
    maxigp0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_bvalid : in STD_LOGIC;
    maxigp0_bready : out STD_LOGIC;
    maxigp0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_arlock : out STD_LOGIC;
    maxigp0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arvalid : out STD_LOGIC;
    maxigp0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_arready : in STD_LOGIC;
    maxigp0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_rlast : in STD_LOGIC;
    maxigp0_rvalid : in STD_LOGIC;
    maxigp0_rready : out STD_LOGIC;
    maxigp0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    saxiacp_fpd_aclk : in STD_LOGIC;
    saxiacp_awuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxiacp_aruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxiacp_awid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    saxiacp_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    saxiacp_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxiacp_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxiacp_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxiacp_awlock : in STD_LOGIC;
    saxiacp_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxiacp_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxiacp_awvalid : in STD_LOGIC;
    saxiacp_awready : out STD_LOGIC;
    saxiacp_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxiacp_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxiacp_wlast : in STD_LOGIC;
    saxiacp_wvalid : in STD_LOGIC;
    saxiacp_wready : out STD_LOGIC;
    saxiacp_bid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    saxiacp_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxiacp_bvalid : out STD_LOGIC;
    saxiacp_bready : in STD_LOGIC;
    saxiacp_arid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    saxiacp_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    saxiacp_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxiacp_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxiacp_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxiacp_arlock : in STD_LOGIC;
    saxiacp_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxiacp_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxiacp_arvalid : in STD_LOGIC;
    saxiacp_arready : out STD_LOGIC;
    saxiacp_rid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    saxiacp_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxiacp_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxiacp_rlast : out STD_LOGIC;
    saxiacp_rvalid : out STD_LOGIC;
    saxiacp_rready : in STD_LOGIC;
    saxiacp_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxiacp_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_acpinact : in STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "maxihpm0_fpd_aclk,maxigp0_awid[15:0],maxigp0_awaddr[39:0],maxigp0_awlen[7:0],maxigp0_awsize[2:0],maxigp0_awburst[1:0],maxigp0_awlock,maxigp0_awcache[3:0],maxigp0_awprot[2:0],maxigp0_awvalid,maxigp0_awuser[15:0],maxigp0_awready,maxigp0_wdata[127:0],maxigp0_wstrb[15:0],maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid[15:0],maxigp0_bresp[1:0],maxigp0_bvalid,maxigp0_bready,maxigp0_arid[15:0],maxigp0_araddr[39:0],maxigp0_arlen[7:0],maxigp0_arsize[2:0],maxigp0_arburst[1:0],maxigp0_arlock,maxigp0_arcache[3:0],maxigp0_arprot[2:0],maxigp0_arvalid,maxigp0_aruser[15:0],maxigp0_arready,maxigp0_rid[15:0],maxigp0_rdata[127:0],maxigp0_rresp[1:0],maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos[3:0],maxigp0_arqos[3:0],saxiacp_fpd_aclk,saxiacp_awuser[1:0],saxiacp_aruser[1:0],saxiacp_awid[4:0],saxiacp_awaddr[39:0],saxiacp_awlen[7:0],saxiacp_awsize[2:0],saxiacp_awburst[1:0],saxiacp_awlock,saxiacp_awcache[3:0],saxiacp_awprot[2:0],saxiacp_awvalid,saxiacp_awready,saxiacp_wdata[127:0],saxiacp_wstrb[15:0],saxiacp_wlast,saxiacp_wvalid,saxiacp_wready,saxiacp_bid[4:0],saxiacp_bresp[1:0],saxiacp_bvalid,saxiacp_bready,saxiacp_arid[4:0],saxiacp_araddr[39:0],saxiacp_arlen[7:0],saxiacp_arsize[2:0],saxiacp_arburst[1:0],saxiacp_arlock,saxiacp_arcache[3:0],saxiacp_arprot[2:0],saxiacp_arvalid,saxiacp_arready,saxiacp_rid[4:0],saxiacp_rdata[127:0],saxiacp_rresp[1:0],saxiacp_rlast,saxiacp_rvalid,saxiacp_rready,saxiacp_awqos[3:0],saxiacp_arqos[3:0],pl_ps_irq0[0:0],pl_resetn0,pl_acpinact,pl_clk0";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "zynq_ultra_ps_e_v3_5_0_zynq_ultra_ps_e,Vivado 2023.1";
begin
end;
