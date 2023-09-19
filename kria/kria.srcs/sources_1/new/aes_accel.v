`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 02:37:25 PM
// Design Name: 
// Module Name: aes_accel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module aes_accel(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF ina:outa, ASSOCIATED_RESET rst_n" *)
    input wire clk,
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input wire rst_n,
    input wire[127:0] key_in,
    
    input wire[127:0] ina_tdata,
    input wire ina_tvalid,
    output wire ina_tready,
    
    output wire[127:0] outa_tdata,
    output wire outa_tvalid,
    input wire outa_tready
);
    wire[127:0] data[0:9];
    wire[127:0] key[0:9];
    wire[9:0] d_in_valid;
    assign data[0] = key_in ^ ina_tdata;
    assign key[0] = key_in;
    assign d_in_valid[0] = ina_tvalid;

    wire[127:0] d_out[0:9];
    wire[127:0] k_out[0:9];
    wire[9:0] d_out_valid;
    wire[9:0] gnt;
    assign gnt[9] = outa_tready | ~d_out_valid[9];
    genvar i;
    generate
        for (i = 9; i > 0; i = i - 1) begin
            assign gnt[i - 1] = gnt[i] | ~d_out_valid[i - 1];
        end
    endgenerate
    generate
        for (i = 0; i < 10; i = i + 1) begin
            aes_block #(
                .KEY_CONST(i == 9 ? 8'h36 :
                           i == 8 ? 8'h1B : 
                           (8'h1 << i)),
                .ENC_LAST(i == 9)
            ) aesblock0 (
                .clk(clk),
                .rst_n(rst_n),
                .enable(gnt[i]),
                .data_valid_in(d_in_valid[i]),
                .data_in(data[i]),
                .key_in(key[i]),
                .data_out(d_out[i]),
                .key_out(k_out[i]),
                .data_valid_out(d_out_valid[i])
            );
            if (i != 9) begin
                assign data[i + 1] = d_out[i];
                assign key[i + 1] = k_out[i];
                assign d_in_valid[i + 1] = d_out_valid[i];
            end
        end
    endgenerate


    
    assign ina_tready = gnt[0];
    assign outa_tdata = d_out[9];
    assign outa_tvalid = d_out_valid[9];
endmodule
