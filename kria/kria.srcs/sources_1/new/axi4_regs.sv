`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2023 08:17:06 PM
// Design Name: 
// Module Name: axi4_regs
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


module axi4_regs#(
    parameter DW = 1,
    parameter AW = 1,
    parameter IDW = 1,
    parameter M_AW = 1
) (
    input   wire                        clk,
    input   wire                        rst_n,

    input   wire                        arvalid,
    input   wire[15:0]                  aruser,
    input   wire                        arlock,
    input   wire[3:0]                   arcache,
    input   wire[2:0]                   arprot,
    input   wire[3:0]                   arqos,
    input   wire[IDW-1:0]               arid,
    input   wire[AW-1:0]                araddr,
    input   wire[1:0]                   arburst,
    input   wire[2:0]                   arsize,
    input   wire[7:0]                   arlen,
    output  reg                         arready,

    output  reg[IDW-1:0]                rid,
    output  wire[1:0]                   rresp,
    output  reg[DW-1:0]                 rdata,
    output  reg                         rvalid,
    input   wire                        rready,
    output  wire                        rlast,
    
    input   wire                        awvalid,
    input   wire[15:0]                  awuser,
    input   wire                        awlock,
    input   wire[3:0]                   awcache,
    input   wire[2:0]                   awprot,
    input   wire[3:0]                   awqos,
    input   wire[IDW-1:0]               awid,
    input   wire[AW-1:0]                awaddr,
    input   wire[1:0]                   awburst,
    input   wire[2:0]                   awsize,
    input   wire[7:0]                   awlen,
    output  reg                         awready,
    
    input   wire[DW/8-1:0]              wstrb,
    input   wire[DW-1:0]                wdata,
    input   wire                        wvalid,
    output  reg                         wready,
    input   wire                        wlast,

    output  reg[IDW-1:0]                bid,
    output  wire[1:0]                   bresp,
    output  reg                         bvalid,
    input   wire                        bready,
    
    input   wire[31:0]                  mem_wrptr_nxt,
    output  wire[31:0]                  mem_wrptr,
    output  wire[31:0]                  mem_rdptr,

    input   wire[31:0]                  buf_rdptr_nxt,
    output  wire[31:0]                  buf_wrptr,
    output  wire[31:0]                  buf_rdptr,
    output  wire[31:0]                  fifo_size,
    output  wire[31:0]                  buf_size,

    output  wire[127:0]                 aes_key,
    output  wire[M_AW-1:0]              buf_baseaddr,
    output  wire[M_AW-1:0]              mem_baseaddr          
);
    
    localparam MSIZE = 8;
    localparam LSB = $clog2(DW) - 3;

    reg[DW-1:0] mem[MSIZE];

    initial
        for (int i = 0; i < MSIZE; ++i)
            mem[i] = 128'h0;
    
    
    always_ff @(posedge clk)
        if (!rst_n)
            arready <= 1'b1;
        else if (arready & arvalid)
            arready <= 1'b0;
        else if (rlast & rready & rvalid)
            arready <= 1'b1;
            
    always_ff @(posedge clk)
        if (!rst_n)
            rvalid <= 1'b0;
        else if (arready & arvalid)
            rvalid <= 1'b1;
        else if (rlast & rready & rvalid)
            rvalid <= 1'b0;
    
    reg[AW-1:0] araddr_q;
    reg[1:0] arburst_q;
    reg[7:0] araddr_inc;
    reg[AW-1:0] arwrap_boundary;
    reg[7:0] arlen_q;
    
    assign rlast = arlen_q == 8'd0;
    
    reg[AW-1:0] araddr_nxt;
    
    always_comb
        if (arready & arvalid)
            araddr_nxt = araddr;
        else if (rready & rvalid)
            case (arburst_q)
                2'b00: araddr_nxt = araddr_q;
                2'b01: araddr_nxt = araddr_q + araddr_inc;
                2'b10: araddr_nxt = ((araddr_q & arwrap_boundary) == arwrap_boundary) ? (araddr_q ^ arwrap_boundary) : (araddr_q + araddr_inc);
                2'b11: araddr_nxt = 'x;
            endcase
        else
            araddr_nxt = araddr_q;
    
    always_ff @(posedge clk)
        rdata <= mem[araddr_nxt[LSB+:$clog2(MSIZE)]];
    
    always_ff @(posedge clk)
        araddr_q <= araddr_nxt;
    
    always_ff @(posedge clk)
        if (arready & arvalid)
            arlen_q <= arlen;
        else if (rready & rvalid)
            arlen_q <= arlen_q - 1'b1;
    

    
    always_ff @(posedge clk)
        if (arready & arvalid) begin
            arburst_q       <= arburst;
            araddr_inc      <= 1 << arsize;
            arwrap_boundary <= arlen << arsize;
            rid             <= arid;
        end
            
    always_ff @(posedge clk)
        if (!rst_n)
            wready <= 1'b0;
        else if (awvalid & awready)
            wready <= 1'b1;
        else if (wlast & wready & wvalid)
            wready <= 1'b0;
    
    always_ff @(posedge clk)
        if (!rst_n)
            awready <= 1'b1;
        else if (awvalid & awready)
            awready <= 1'b0;
        else if (bvalid & bready)
            awready <= 1'b1;
    
    always_ff @(posedge clk)
        if (!rst_n)
            bvalid <= 1'b0;
        else if (wlast & wready & wvalid)
            bvalid <= 1'b1;
        else if (bvalid & bready)
            bvalid <= 1'b0;
    
    
    reg[AW-1:0] awaddr_q;
    reg[1:0] awburst_q;
    reg[7:0] awaddr_inc;
    reg[AW-1:0] awwrap_boundary;

    reg[AW-1:0] awaddr_nxt;
    always_comb
        case (awburst_q)
            2'b00: awaddr_nxt = awaddr_q;
            2'b01: awaddr_nxt = awaddr_q + awaddr_inc;
            2'b10: awaddr_nxt = ((awaddr_q & awwrap_boundary) == awwrap_boundary) ? (awaddr_q ^ awwrap_boundary) : (awaddr_q + awaddr_inc);
            2'b11: awaddr_nxt = 'x;
        endcase
    
    always_ff @(posedge clk)
        if (awvalid & awready)
            awaddr_q <= awaddr;
        else if (wvalid & wready)
            awaddr_q <= awaddr_nxt;
    
    always_ff @(posedge clk)
        if (awvalid & awready) begin
            awburst_q       <= awburst;
            awaddr_inc      <= 1 << awsize;
            awwrap_boundary <= awlen << awsize;
            bid             <= awid;    
        end
    

    generate
        for (genvar g = 0; g < MSIZE; ++g) begin
            if (g != 1 && g != 3) begin
                always_ff @(posedge clk)
                    if (!rst_n)
                        mem[g] <= 128'h0;
                    else if (wvalid && wready && awaddr_q[LSB+:$clog2(MSIZE)] == g)
                        for (int i = 0; i < DW/8; ++i)
                            if (wstrb[i])
                                mem[g][(8*i)+:8] <= wdata[(8*i)+:8];
            end
        end
    endgenerate
    
    always_ff @(posedge clk)
        if (!rst_n)
            mem[3] <= 128'h0;
        else
            mem[3] <= buf_rdptr_nxt; 
    
    always_ff @(posedge clk)
        if (!rst_n)
            mem[1] <= 128'h0;
        else
            mem[1] <= mem_wrptr_nxt;
    
    assign mem_rdptr    = mem[0][31:0];
    assign mem_wrptr    = mem[1][31:0];
    assign buf_wrptr    = mem[2][31:0];
    assign buf_rdptr    = mem[3][31:0];
    assign aes_key      = mem[4];
    assign buf_baseaddr = mem[5][M_AW-1:0];
    assign mem_baseaddr = mem[6][M_AW-1:0];
    assign buf_size     = mem[7][31:0];
    assign fifo_size    = mem[7][63:32];

    assign rresp        = 2'b00;
    assign bresp        = 2'b00;
endmodule
			
			
			
			