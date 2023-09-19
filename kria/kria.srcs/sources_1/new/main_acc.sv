`timescale 1ns / 1ps

module buffer_fifo #(
    parameter DEPTH = 512,
    parameter WIDTH = 128
) (
    input   wire                    clk,
    input   wire                    rst_n,
    input   wire                    wren,
    input   wire[WIDTH-1:0]         wdata,
    input   wire                    rden,
    output  reg[WIDTH-1:0]          rdata,
    output  reg                     empty,
    output  reg                     full,
    output  wire[$clog2(DEPTH):0]   rdptr_nxt,
    output  wire[$clog2(DEPTH):0]   wrptr_nxt
);
    localparam DEPTH_W = $clog2(DEPTH);

    reg[WIDTH-1:0] mem[DEPTH];
    reg[DEPTH_W:0] rdptr = {(DEPTH_W + 1){1'b0}};
    reg[DEPTH_W:0] wrptr = {(DEPTH_W + 1){1'b0}};


    wire empty_w = rdptr == wrptr;

    always_ff @(posedge clk)
        if (wren)
            mem[wrptr[DEPTH_W-1:0]] <= wdata;
    

    assign wrptr_nxt = wren ? wrptr + 1'b1 : wrptr;

    always_ff @(posedge clk)
        if (!rst_n)
            wrptr <= {(DEPTH_W + 1){1'b0}};
        else
            wrptr <= wrptr_nxt;
    
    
    initial empty = 1'b1;
    wire reg_rden = empty | rden;

    reg latch_empty = 1'b1;
    wire latch_rden = latch_empty | reg_rden;

    always_ff @(posedge clk)
        if (!rst_n)
            latch_empty <= 1'b1;
        else if (latch_rden)
            latch_empty <= empty_w;
    
    reg[WIDTH-1:0] latch_data;
    always_ff @(posedge clk)
        if (latch_rden)
            latch_data <= mem[rdptr[DEPTH_W-1:0]];

    always_ff @(posedge clk)
        if (!rst_n)
            empty <= 1'b1;
        else if (reg_rden)
            empty <= latch_empty;
    
    always_ff @(posedge clk)
        if (reg_rden)
            rdata <= latch_data;
    
    assign rdptr_nxt = (latch_rden & ~empty_w) ? rdptr + 1'b1 : rdptr;
    always_ff @(posedge clk)
        if (!rst_n)
            rdptr <= {(DEPTH_W + 1){1'b0}};
        else
            rdptr <= rdptr_nxt;
    


    initial full = 1'b1;
    always_ff @(posedge clk)
        if (!rst_n)
            full <= 1'b1;
        else
            full <= {~rdptr_nxt[DEPTH_W], rdptr_nxt[DEPTH_W-1:0]} == wrptr_nxt;

    
endmodule

module aes_block #(
    parameter KEY_CONST = 0,
    parameter ENC_LAST = 0
) (
    input wire clk,
    input wire rst_n,
    input wire enable,
    input wire data_valid_in,
    input wire[127:0] key_in,
    input wire[127:0] data_in,

    output wire[127:0] key_out,
    output wire[127:0] data_out,
    output reg data_valid_out
);

    wire[7:0] sbox[256] = {
        8'h63,8'h7c,8'h77,8'h7b,8'hf2,8'h6b,8'h6f,8'hc5,8'h30,8'h01,8'h67,8'h2b,8'hfe,8'hd7,8'hab,8'h76,
        8'hca,8'h82,8'hc9,8'h7d,8'hfa,8'h59,8'h47,8'hf0,8'had,8'hd4,8'ha2,8'haf,8'h9c,8'ha4,8'h72,8'hc0,
        8'hb7,8'hfd,8'h93,8'h26,8'h36,8'h3f,8'hf7,8'hcc,8'h34,8'ha5,8'he5,8'hf1,8'h71,8'hd8,8'h31,8'h15,
        8'h04,8'hc7,8'h23,8'hc3,8'h18,8'h96,8'h05,8'h9a,8'h07,8'h12,8'h80,8'he2,8'heb,8'h27,8'hb2,8'h75,
        8'h09,8'h83,8'h2c,8'h1a,8'h1b,8'h6e,8'h5a,8'ha0,8'h52,8'h3b,8'hd6,8'hb3,8'h29,8'he3,8'h2f,8'h84,
        8'h53,8'hd1,8'h00,8'hed,8'h20,8'hfc,8'hb1,8'h5b,8'h6a,8'hcb,8'hbe,8'h39,8'h4a,8'h4c,8'h58,8'hcf,
        8'hd0,8'hef,8'haa,8'hfb,8'h43,8'h4d,8'h33,8'h85,8'h45,8'hf9,8'h02,8'h7f,8'h50,8'h3c,8'h9f,8'ha8,
        8'h51,8'ha3,8'h40,8'h8f,8'h92,8'h9d,8'h38,8'hf5,8'hbc,8'hb6,8'hda,8'h21,8'h10,8'hff,8'hf3,8'hd2,
        8'hcd,8'h0c,8'h13,8'hec,8'h5f,8'h97,8'h44,8'h17,8'hc4,8'ha7,8'h7e,8'h3d,8'h64,8'h5d,8'h19,8'h73,
        8'h60,8'h81,8'h4f,8'hdc,8'h22,8'h2a,8'h90,8'h88,8'h46,8'hee,8'hb8,8'h14,8'hde,8'h5e,8'h0b,8'hdb,
        8'he0,8'h32,8'h3a,8'h0a,8'h49,8'h06,8'h24,8'h5c,8'hc2,8'hd3,8'hac,8'h62,8'h91,8'h95,8'he4,8'h79,
        8'he7,8'hc8,8'h37,8'h6d,8'h8d,8'hd5,8'h4e,8'ha9,8'h6c,8'h56,8'hf4,8'hea,8'h65,8'h7a,8'hae,8'h08,
        8'hba,8'h78,8'h25,8'h2e,8'h1c,8'ha6,8'hb4,8'hc6,8'he8,8'hdd,8'h74,8'h1f,8'h4b,8'hbd,8'h8b,8'h8a,
        8'h70,8'h3e,8'hb5,8'h66,8'h48,8'h03,8'hf6,8'h0e,8'h61,8'h35,8'h57,8'hb9,8'h86,8'hc1,8'h1d,8'h9e,
        8'he1,8'hf8,8'h98,8'h11,8'h69,8'hd9,8'h8e,8'h94,8'h9b,8'h1e,8'h87,8'he9,8'hce,8'h55,8'h28,8'hdf,
        8'h8c,8'ha1,8'h89,8'h0d,8'hbf,8'he6,8'h42,8'h68,8'h41,8'h99,8'h2d,8'h0f,8'hb0,8'h54,8'hbb,8'h16
    };
    function[31:0] bswap(input bit[31:0] word);
        return {word[7:0], word[15:8], word[23:16], word[31:24]};
    endfunction
    wire[31:0] key[4]   = {bswap(key_in[31:0]), bswap(key_in[63:32]), bswap(key_in[95:64]), bswap(key_in[127:96])};
    wire[31:0] state[4] = {bswap(data_in[31:0]), bswap(data_in[63:32]), bswap(data_in[95:64]), bswap(data_in[127:96])};

    wire[31:0] keytemp = {
        sbox[key[3][23:16]] ^ KEY_CONST, 
        sbox[key[3][15:8]], 
        sbox[key[3][7:0]], 
        sbox[key[3][31:24]]
    };
    initial data_valid_out = 1'b0;
    always_ff @(posedge clk)
        if (!rst_n)
            data_valid_out <= 1'b0;
        else if (enable)
            data_valid_out <= data_valid_in;
    reg[31:0] key_q[4];
    wire[31:0] key_nxt[4] = {
                keytemp ^ key[0],
                keytemp ^ key[0] ^ key[1],
                keytemp ^ key[0] ^ key[1] ^ key[2],
                keytemp ^ key[0] ^ key[1] ^ key[2] ^ key[3]
            };
    always_ff @(posedge clk)
        if (enable)
            key_q <= key_nxt;
    assign key_out = {bswap(key_q[3]), bswap(key_q[2]), bswap(key_q[1]), bswap(key_q[0])};

    wire[7:0] ssr[16] = {
        sbox[state[0][31:24]], sbox[state[1][23:16]], sbox[state[2][15:8]], sbox[state[3][7:0]],
        sbox[state[1][31:24]], sbox[state[2][23:16]], sbox[state[3][15:8]], sbox[state[0][7:0]],
        sbox[state[2][31:24]], sbox[state[3][23:16]], sbox[state[0][15:8]], sbox[state[1][7:0]],
        sbox[state[3][31:24]], sbox[state[0][23:16]], sbox[state[1][15:8]], sbox[state[2][7:0]]
    };
    
    reg[7:0] mul2[16];
    always_comb
        for (int i = 0; i < 16; ++i)
            mul2[i] = {ssr[i][6:4], ssr[i][7] ^ ssr[i][3], ssr[i][7] ^ ssr[i][2], ssr[i][1], ssr[i][7] ^ ssr[i][0], ssr[i][7]};
    
    
    reg[7:0] mix[16];
    always_comb
        for (int i = 0; i < 16; i += 4) begin
            mix[i + 0]  = mul2[i + 0] ^ mul2[i + 1] ^ ssr[i + 1] ^ ssr[i + 2] ^ ssr[i + 3];
            mix[i + 1]  = ssr[i + 0] ^ mul2[i + 1] ^ mul2[i + 2] ^ ssr[i + 2] ^ ssr[i + 3];
            mix[i + 2]  = ssr[i + 0] ^ ssr[i + 1] ^ mul2[i + 2] ^ mul2[i + 3] ^ ssr[i + 3];
            mix[i + 3]  = mul2[i + 0] ^ ssr[i + 0] ^ ssr[i + 1] ^ ssr[i + 2] ^ mul2[i + 3];
        end
    
    
    
    wire[7:0] sel[16];

    generate
        if (ENC_LAST) begin
            assign sel = ssr;
        end
        else begin
            assign sel = mix;
        end
    endgenerate
    
    
    wire[31:0] final_enc[4] = {
        key_nxt[0] ^ {sel[0], sel[1], sel[2], sel[3]},
        key_nxt[1] ^ {sel[4], sel[5], sel[6], sel[7]},
        key_nxt[2] ^ {sel[8], sel[9], sel[10], sel[11]},
        key_nxt[3] ^ {sel[12], sel[13], sel[14], sel[15]}
    };
    reg[31:0] data_out_q[4];
    always_ff @(posedge clk)
        if (enable)
            data_out_q <= final_enc;
    
    assign data_out = {bswap(data_out_q[3]), bswap(data_out_q[2]), bswap(data_out_q[1]), bswap(data_out_q[0])};

endmodule

module main_acc(
    input wire clk,
    input wire rst_n,
    input wire i_req,
    output wire o_gnt,
    input wire[127:0] data_in,
    input wire[127:0] key_in,

    output wire[127:0] data_out,
    output wire o_req,
    input wire i_gnt
);
    wire[127:0] data[10];
    wire[127:0] key[10];
    wire[9:0] d_in_valid;
    assign data[0] = key_in ^ data_in;
    assign key[0] = key_in;
    assign d_in_valid[0] = i_req;

    wire[127:0] d_out[10];
    wire[127:0] k_out[10];
    wire[9:0] d_out_valid;
    wire[9:0] gnt;
    assign gnt[9] = i_gnt | ~d_out_valid[9];
    generate
        for (genvar i = 9; i > 0; --i) begin
            assign gnt[i - 1] = gnt[i] | ~d_out_valid[i - 1];
        end
    endgenerate
    generate
        for (genvar i = 0; i < 10; ++i) begin
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


    
    assign o_gnt = gnt[0];
    assign data_out = d_out[9];
    assign o_req = d_out_valid[9];
endmodule