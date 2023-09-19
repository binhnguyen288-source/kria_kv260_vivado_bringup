`timescale 1ns / 1ps

module accel_top #(
    // master params
    parameter M_UW = 1,
    parameter M_IDW = 6,
    parameter M_AW = 49,
    parameter M_DW = 128,
    // slave params
    parameter S_AW = 28,
    parameter S_DW = 128,
    parameter S_IDW = 16
) (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF mymodule_slv:m:toaccel:fromaccel, ASSOCIATED_RESET rst_n" *)
    input wire clk,

    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input wire rst_n,

    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWID" *)
    input wire[S_IDW-1:0] s_awid, // Write address ID (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWADDR" *)
    input wire[S_AW-1:0] s_awaddr, // Write address (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWLEN" *)
    input wire[7:0] s_awlen, // Burst length (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWSIZE" *)
    input wire[2:0] s_awsize, // Burst size (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWBURST" *)
    input wire[1:0] s_awburst, // Burst type (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWLOCK" *)
    input wire s_awlock, // Lock type (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWCACHE" *)
    input wire[3:0] s_awcache, // Cache type (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWPROT" *)
    input wire[2:0] s_awprot, // Protection type (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWQOS" *)
    input wire[3:0] s_awqos, // Transaction Quality of Service token (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWUSER" *)
    input wire[15:0] s_awuser, // Write address user sideband (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWVALID" *)
    input wire s_awvalid, // Write address valid (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv AWREADY" *)
    output wire s_awready, // Write address ready (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WDATA" *)
    input wire[S_DW-1:0] s_wdata, // Write data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WSTRB" *)
    input wire[S_DW/8-1:0] s_wstrb, // Write strobes (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WLAST" *)
    input wire s_wlast, // Write last beat (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WVALID" *)
    input wire s_wvalid, // Write valid (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv WREADY" *)
    output wire s_wready, // Write ready (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv BID" *)
    output wire[S_IDW-1:0] s_bid, // Response ID (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv BRESP" *)
    output wire[1:0] s_bresp, // Write response (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv BVALID" *)
    output wire s_bvalid, // Write response valid (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv BREADY" *)
    input wire s_bready, // Write response ready (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARID" *)
    input wire[S_IDW-1:0] s_arid, // Read address ID (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARADDR" *)
    input wire[S_AW-1:0] s_araddr, // Read address (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARLEN" *)
    input wire[7:0] s_arlen, // Burst length (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARSIZE" *)
    input wire[2:0] s_arsize, // Burst size (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARBURST" *)
    input wire[1:0] s_arburst, // Burst type (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARLOCK" *)
    input wire s_arlock, // Lock type (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARCACHE" *)
    input wire[3:0] s_arcache, // Cache type (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARPROT" *)
    input wire[2:0] s_arprot, // Protection type (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARQOS" *)
    input wire[3:0] s_arqos, // Quality of service token (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARUSER" *)
    input wire[15:0] s_aruser, // Read address user sideband (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARVALID" *)
    input wire s_arvalid, // Read address valid (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv ARREADY" *)
    output wire s_arready, // Read address ready (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RID" *)
    output wire[S_IDW-1:0] s_rid, // Read ID tag (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RDATA" *)
    output wire[S_DW-1:0] s_rdata, // Read data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RRESP" *)
    output wire[1:0] s_rresp, // Read response (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RLAST" *)
    output wire s_rlast, // Read last beat (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RVALID" *)
    output wire s_rvalid, // Read valid (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mymodule_slv RREADY" *)
    input wire s_rready, // Read ready (optional)


    output wire[M_UW-1:0]   m_aruser,
    output wire[M_UW-1:0]   m_awuser,

    output wire[M_IDW-1:0]  m_awid,
    output reg[M_AW-1:0]    m_awaddr,
    output wire[7:0]        m_awlen,
    output wire[2:0]        m_awsize,
    output wire[1:0]        m_awburst,
    output wire             m_awlock,
    output wire[3:0]        m_awcache,
    output wire[2:0]        m_awprot,
    output reg              m_awvalid,
    input  wire             m_awready,

    output wire[M_DW-1:0]   m_wdata,
    output wire[M_DW/8-1:0] m_wstrb,
    output wire             m_wlast,
    output wire             m_wvalid,
    input  wire             m_wready,

    input  wire[M_IDW-1:0]  m_bid,
    input  wire[1:0]        m_bresp,
    input  wire             m_bvalid,
    output wire             m_bready,

    output wire[M_IDW-1:0]  m_arid,
    output reg[M_AW-1:0]    m_araddr,
    output wire[7:0]        m_arlen,
    output wire[2:0]        m_arsize,
    output wire[1:0]        m_arburst,
    output wire             m_arlock,
    output wire[3:0]        m_arcache,
    output wire[2:0]        m_arprot,
    output reg              m_arvalid,
    input  wire             m_arready,

    input  wire[M_IDW-1:0]  m_rid,
    input  wire[M_DW-1:0]   m_rdata,
    input  wire[1:0]        m_rresp,
    input  wire             m_rlast,
    input  wire             m_rvalid,
    output wire             m_rready,

    output wire[3:0]        m_awqos,
    output wire[3:0]        m_arqos,

    (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 intr_out INTERRUPT" *)
    (* X_INTERFACE_PARAMETER = "SENSITIVITY LEVEL_HIGH" *)
    output reg intr_out,
    output reg fan_ctrl,
    
    output wire[127:0] accel_aes_key,
    
    output wire[127:0] toaccel_tdata,
    output wire        toaccel_tvalid,
    input  wire        toaccel_tready,
    
    input wire[127:0] fromaccel_tdata,
    input wire        fromaccel_tvalid,
    output wire       fromaccel_tready
);
    
    initial fan_ctrl = 1'b0;
    always @(posedge clk)
        fan_ctrl <= 1'b0;

    assign m_aruser = {M_UW{1'b0}};
    assign m_awuser = {M_UW{1'b0}};
    
    localparam M_AWLEN = 8'd15;
    localparam M_ARLEN = 8'd15;
    localparam M_WBURST_BYTES = (M_AWLEN + 1) * 16;
    localparam M_RBURST_BYTES = (M_ARLEN + 1) * 16;
    
    wire buf_data_reg_valid;
    wire[127:0] buf_data_reg;
    wire buf_data_gnt;

    wire[31:0] mem_wrptr;
    wire[31:0] mem_rdptr;
    wire[31:0] mem_wrptr_nxt = (m_bready & m_bvalid) ? (mem_wrptr + M_WBURST_BYTES) : mem_wrptr;

    wire[31:0] buf_wrptr;
    wire[31:0] buf_rdptr;
    wire[31:0] buf_rdptr_nxt = (m_rready & m_rvalid) ? (buf_rdptr + 16) : buf_rdptr;

    wire[31:0] fifo_size;
    wire[31:0] buf_size;


    wire[127:0] aes_key;
    wire[M_AW-1:0] buf_baseaddr;
    wire[M_AW-1:0] mem_baseaddr;
    axi4_regs #(
        .DW(S_DW),
        .IDW(S_IDW),
        .AW(S_AW),
        .M_AW(M_AW)
    ) slv_regs(
        .clk(clk),
        .rst_n(rst_n),
        
        .arvalid(s_arvalid),
        .aruser(s_aruser),
        .arlock(s_arlock),
        .arcache(s_arcache),
        .arprot(s_arprot),
        .arqos(s_arqos),
        .arid(s_arid),
        .araddr(s_araddr),
        .arburst(s_arburst),
        .arsize(s_arsize),
        .arlen(s_arlen),
        .arready(s_arready),
        .rid(s_rid),
        
        .rresp(s_rresp),
        .rdata(s_rdata),
        .rvalid(s_rvalid),
        .rready(s_rready),
        .rlast(s_rlast),
        
        .awvalid(s_awvalid),
        .awuser(s_awuser),
        .awlock(s_awlock),
        .awcache(s_awcache),
        .awprot(s_awprot),
        .awqos(s_awqos),
        .awid(s_awid),
        .awaddr(s_awaddr),
        .awburst(s_awburst),
        .awsize(s_awsize),
        .awlen(s_awlen),
        .awready(s_awready),
        .bid(s_bid),
        .wstrb(s_wstrb),
        .wdata(s_wdata),
        .wvalid(s_wvalid),
        .wready(s_wready),
        .wlast(s_wlast),
        .bresp(s_bresp),
        .bvalid(s_bvalid),
        .bready(s_bready),
        
        .mem_wrptr_nxt(mem_wrptr_nxt),
        .mem_wrptr(mem_wrptr),
        .mem_rdptr(mem_rdptr),
        .buf_rdptr_nxt(buf_rdptr_nxt),
        .buf_rdptr(buf_rdptr),
        .buf_wrptr(buf_wrptr),
        .aes_key(aes_key),
        .buf_baseaddr(buf_baseaddr),
        .mem_baseaddr(mem_baseaddr),
        .fifo_size(fifo_size),
        .buf_size(buf_size)
    );

    reg[31:0] awaddr_ptr = 32'd0;
    wire[31:0] awaddr_ptr_nxt = (m_awvalid & m_awready) ? (awaddr_ptr + M_WBURST_BYTES) : awaddr_ptr;

    always @(posedge clk)
        if (!rst_n)
            awaddr_ptr <= 32'd0;
        else
            awaddr_ptr <= awaddr_ptr_nxt;
    
    // write address channel
    assign m_awid       = {M_IDW{1'b0}};
    assign m_awqos      = 4'h0;
    assign m_awsize     = 3'b100;
    assign m_awlock     = 1'b0;
    assign m_awcache    = 4'b1111;
    assign m_awprot     = 3'b010;


    always @(posedge clk)
        m_awaddr <= mem_baseaddr + (awaddr_ptr_nxt & (fifo_size - 1));
    assign m_awlen      = M_AWLEN;
    assign m_awburst    = 2'b01;

    
    wire aes_gnt;
    
    wire[127:0] aes_out;
    wire aes_req;
    
    assign accel_aes_key = aes_key;
    assign toaccel_tdata = buf_data_reg;
    assign toaccel_tvalid = buf_data_reg_valid;
    assign buf_data_gnt = toaccel_tready;
    assign aes_out = fromaccel_tdata;
    assign aes_req = fromaccel_tvalid;
    assign fromaccel_tready = aes_gnt;

    localparam TX_FIFODEPTH = 512;
    localparam TXPTR_WIDTH = $clog2(TX_FIFODEPTH);
    localparam TX_INC = M_AWLEN + 1;
    wire[TXPTR_WIDTH:0] swrptr_nxt;
    reg[TXPTR_WIDTH:0] srdptr = {(TXPTR_WIDTH+1){1'b0}};
    wire[TXPTR_WIDTH:0] srdptr_nxt = (m_awvalid & m_awready) ? srdptr + TX_INC : srdptr;
    always @(posedge clk)
        if (!rst_n)
            srdptr <= {(TXPTR_WIDTH+1){1'b0}};
        else
            srdptr <= srdptr_nxt;
    wire[TXPTR_WIDTH:0] tx_sfifo_rdcount_nxt = swrptr_nxt - srdptr_nxt;
    wire[31:0] tx_dfifo_bytescnt_nxt = awaddr_ptr_nxt - mem_rdptr;



    reg tx_fifo_wren_mask = 1'b1;
    always @(posedge clk)
        if (!rst_n)
            tx_fifo_wren_mask <= 1'b1;
        else
            tx_fifo_wren_mask <= swrptr_nxt != {~srdptr_nxt[TXPTR_WIDTH], srdptr_nxt[TXPTR_WIDTH-1:0]};

    wire tx_sfifo_can_read  = tx_sfifo_rdcount_nxt  >= TX_INC;
    wire tx_dfifo_can_write = tx_dfifo_bytescnt_nxt <= fifo_size - M_WBURST_BYTES;

    initial intr_out = 1'b0;
    always @(posedge clk)
        if (!rst_n)
            intr_out <= 1'b0;
        else
            intr_out <= mem_wrptr - mem_rdptr == fifo_size;

    wire tx_fifo_full;
    wire tx_fifo_empty;
    buffer_fifo #(
        .DEPTH(TX_FIFODEPTH),
        .WIDTH(128)
    ) tx_fifo (
        .clk(clk),
        .rst_n(rst_n),
        .wren(aes_req & aes_gnt),
        .wdata(aes_out),
        .rden(m_wvalid & m_wready),
        .rdata(m_wdata),
        .empty(tx_fifo_empty),
        .full(tx_fifo_full),
        .rdptr_nxt(),
        .wrptr_nxt(swrptr_nxt)
    );

    assign aes_gnt = tx_fifo_wren_mask & ~tx_fifo_full;


    
    
    // write data channel
    
    assign m_wvalid = ~tx_fifo_empty;
            
    assign m_wstrb      = {(M_DW/8){1'b1}};

    reg[7:0] m_wlen_q = M_AWLEN;
    always @(posedge clk)
        if (!rst_n)
            m_wlen_q <= M_AWLEN;
        else if (m_wvalid & m_wready)
            m_wlen_q <= m_wlast ? M_AWLEN : m_wlen_q - 1'b1;

    assign m_wlast = m_wlen_q == 8'h0;
    
    // write response channel
    assign m_bready = 1'b1;

    initial m_awvalid = 1'b0;
    always @(posedge clk)
        if (!rst_n)
            m_awvalid <= 1'b0;
        else
            m_awvalid <= tx_sfifo_can_read & tx_dfifo_can_write;

    
    
    // read address channel
    assign m_arid       = {M_IDW{1'b0}};
    assign m_arqos      = 4'h0;
    assign m_arsize     = 3'b100;
    assign m_arlock     = 1'b0;
    assign m_arcache    = 4'b1111;
    assign m_arprot     = 3'b010;
    assign m_arlen      = M_ARLEN;
    assign m_arburst    = 2'b01;

    // read response channel
    

    localparam RX_FIFODEPTH = 512;
    localparam RXPTR_WIDTH  = $clog2(RX_FIFODEPTH);
    localparam RX_INC       = M_ARLEN + 1;

    
    wire rx_fifo_empty;
    // wire rx_fifo_full;
    // assign m_rready = ~rx_fifo_full;

    assign m_rready = 1'b1;


    wire[RXPTR_WIDTH:0] rx_fifo_rdptr_nxt;
    buffer_fifo #(
        .DEPTH(RX_FIFODEPTH),
        .WIDTH(128)
    ) rx_fifo (
        .clk(clk),
        .rst_n(rst_n),
        .wren(m_rvalid & m_rready),
        .wdata(m_rdata),
        .rden(buf_data_gnt),
        .rdata(buf_data_reg),
        .empty(rx_fifo_empty),
        .full(),
        .rdptr_nxt(rx_fifo_rdptr_nxt),
        .wrptr_nxt()
    );
    assign buf_data_reg_valid = ~rx_fifo_empty;
    

    reg[31:0] araddr_ptr = 32'd0;
    wire[31:0] araddr_ptr_nxt = (m_arvalid & m_arready) ? araddr_ptr + M_RBURST_BYTES : araddr_ptr;

    always @(posedge clk)
        if (!rst_n)
            araddr_ptr <= 32'd0;
        else
            araddr_ptr <= araddr_ptr_nxt;

    
    reg[RXPTR_WIDTH:0] rx_fifo_wrptr_pending = {(RXPTR_WIDTH + 1){1'b0}};
    wire[RXPTR_WIDTH:0] rx_fifo_wrptr_pending_nxt = (m_arvalid & m_arready) ? rx_fifo_wrptr_pending + RX_INC : rx_fifo_wrptr_pending;
    always @(posedge clk)
        if (!rst_n)
            rx_fifo_wrptr_pending <= {(RXPTR_WIDTH + 1){1'b0}};
        else
            rx_fifo_wrptr_pending <= rx_fifo_wrptr_pending_nxt;
    
    wire[31:0] rx_sfifo_bytescnt_nxt = buf_wrptr - araddr_ptr_nxt;
    wire[RXPTR_WIDTH:0] rx_dfifo_rdcount_nxt  = rx_fifo_wrptr_pending_nxt - rx_fifo_rdptr_nxt;


    wire rx_sfifo_can_read  = rx_sfifo_bytescnt_nxt >= M_RBURST_BYTES;
    wire rx_dfifo_can_write = rx_dfifo_rdcount_nxt  <= RX_FIFODEPTH - RX_INC;

    always @(posedge clk)
        m_araddr <= buf_baseaddr + (araddr_ptr_nxt & (buf_size - 1));
    initial m_arvalid = 1'b0;
    always @(posedge clk)
        if (!rst_n)
            m_arvalid <= 1'b0;
        else
            m_arvalid <= rx_dfifo_can_write & rx_sfifo_can_read;
    

endmodule