-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Sep 19 14:54:30 2023
-- Host        : DESKTOP-MHGG8FQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/nguye/Documents/GitHub/kria_kv260_vivado_bringup/kria/kria.gen/sources_1/bd/bram/ip/bram_aes_accel_0_0/bram_aes_accel_0_0_stub.vhdl
-- Design      : bram_aes_accel_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bram_aes_accel_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    key_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ina_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ina_tvalid : in STD_LOGIC;
    ina_tready : out STD_LOGIC;
    outa_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    outa_tvalid : out STD_LOGIC;
    outa_tready : in STD_LOGIC
  );

end bram_aes_accel_0_0;

architecture stub of bram_aes_accel_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,key_in[127:0],ina_tdata[127:0],ina_tvalid,ina_tready,outa_tdata[127:0],outa_tvalid,outa_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "aes_accel,Vivado 2023.1";
begin
end;
