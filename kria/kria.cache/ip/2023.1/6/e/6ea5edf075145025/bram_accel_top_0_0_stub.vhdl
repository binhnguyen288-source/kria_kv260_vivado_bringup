-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Mon Aug 14 11:29:52 2023
-- Host        : binh-VirtualBox running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bram_accel_top_0_0_stub.vhdl
-- Design      : bram_accel_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_awaddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_awlock : in STD_LOGIC;
    s_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_awvalid : in STD_LOGIC;
    s_awready : out STD_LOGIC;
    s_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_wlast : in STD_LOGIC;
    s_wvalid : in STD_LOGIC;
    s_wready : out STD_LOGIC;
    s_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_bvalid : out STD_LOGIC;
    s_bready : in STD_LOGIC;
    s_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_araddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_arlock : in STD_LOGIC;
    s_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_arvalid : in STD_LOGIC;
    s_arready : out STD_LOGIC;
    s_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_rlast : out STD_LOGIC;
    s_rvalid : out STD_LOGIC;
    s_rready : in STD_LOGIC;
    m_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_awaddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    m_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_awlock : out STD_LOGIC;
    m_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_awvalid : out STD_LOGIC;
    m_awready : in STD_LOGIC;
    m_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_wlast : out STD_LOGIC;
    m_wvalid : out STD_LOGIC;
    m_wready : in STD_LOGIC;
    m_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_bvalid : in STD_LOGIC;
    m_bready : out STD_LOGIC;
    m_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_araddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    m_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_arlock : out STD_LOGIC;
    m_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_arvalid : out STD_LOGIC;
    m_arready : in STD_LOGIC;
    m_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_rlast : in STD_LOGIC;
    m_rvalid : in STD_LOGIC;
    m_rready : out STD_LOGIC;
    m_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    intr_out : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,s_awid[15:0],s_awaddr[27:0],s_awlen[7:0],s_awsize[2:0],s_awburst[1:0],s_awlock,s_awcache[3:0],s_awprot[2:0],s_awqos[3:0],s_awuser[15:0],s_awvalid,s_awready,s_wdata[127:0],s_wstrb[15:0],s_wlast,s_wvalid,s_wready,s_bid[15:0],s_bresp[1:0],s_bvalid,s_bready,s_arid[15:0],s_araddr[27:0],s_arlen[7:0],s_arsize[2:0],s_arburst[1:0],s_arlock,s_arcache[3:0],s_arprot[2:0],s_arqos[3:0],s_aruser[15:0],s_arvalid,s_arready,s_rid[15:0],s_rdata[127:0],s_rresp[1:0],s_rlast,s_rvalid,s_rready,m_aruser[0:0],m_awuser[0:0],m_awid[5:0],m_awaddr[48:0],m_awlen[7:0],m_awsize[2:0],m_awburst[1:0],m_awlock,m_awcache[3:0],m_awprot[2:0],m_awvalid,m_awready,m_wdata[127:0],m_wstrb[15:0],m_wlast,m_wvalid,m_wready,m_bid[5:0],m_bresp[1:0],m_bvalid,m_bready,m_arid[5:0],m_araddr[48:0],m_arlen[7:0],m_arsize[2:0],m_arburst[1:0],m_arlock,m_arcache[3:0],m_arprot[2:0],m_arvalid,m_arready,m_rid[5:0],m_rdata[127:0],m_rresp[1:0],m_rlast,m_rvalid,m_rready,m_awqos[3:0],m_arqos[3:0],intr_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "accel_top,Vivado 2023.1";
begin
end;
