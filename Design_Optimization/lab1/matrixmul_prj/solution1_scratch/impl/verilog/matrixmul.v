// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z007s-clg400-1,HLS_INPUT_CLOCK=13.333000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.702000,HLS_SYN_LAT=79,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=44,HLS_SYN_LUT=184,HLS_VERSION=2020_1}" *)

module matrixmul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_q0,
        b_address0,
        b_ce0,
        b_q0,
        res_address0,
        res_ce0,
        res_we0,
        res_d0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] a_address0;
output   a_ce0;
input  [7:0] a_q0;
output  [3:0] b_address0;
output   b_ce0;
input  [7:0] b_q0;
output  [3:0] res_address0;
output   res_ce0;
output   res_we0;
output  [15:0] res_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg b_ce0;
reg res_ce0;
reg res_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] i_fu_130_p2;
reg   [1:0] i_reg_257;
wire    ap_CS_fsm_state2;
wire   [4:0] sub_ln60_fu_152_p2;
reg   [4:0] sub_ln60_reg_262;
wire   [0:0] icmp_ln54_fu_124_p2;
wire   [1:0] j_fu_164_p2;
reg   [1:0] j_reg_271;
wire    ap_CS_fsm_state3;
wire   [4:0] zext_ln57_fu_170_p1;
reg   [4:0] zext_ln57_reg_276;
wire   [0:0] icmp_ln56_fu_158_p2;
reg   [3:0] res_addr_reg_281;
wire   [1:0] k_fu_190_p2;
reg   [1:0] k_reg_289;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln59_fu_184_p2;
wire  signed [15:0] grp_fu_246_p3;
wire    ap_CS_fsm_state5;
reg   [1:0] i_0_reg_78;
reg   [1:0] j_0_reg_89;
reg   [15:0] res_load_reg_100;
reg   [1:0] k_0_reg_113;
wire  signed [63:0] sext_ln57_fu_179_p1;
wire  signed [63:0] sext_ln60_2_fu_205_p1;
wire  signed [63:0] sext_ln60_3_fu_233_p1;
wire   [3:0] tmp_2_fu_140_p3;
wire   [4:0] zext_ln60_1_fu_148_p1;
wire   [4:0] zext_ln60_fu_136_p1;
wire   [4:0] add_ln57_fu_174_p2;
wire   [4:0] zext_ln60_2_fu_196_p1;
wire   [4:0] add_ln60_1_fu_200_p2;
wire   [3:0] tmp_3_fu_210_p3;
wire   [4:0] zext_ln60_3_fu_218_p1;
wire   [4:0] sub_ln60_1_fu_222_p2;
wire   [4:0] add_ln60_2_fu_228_p2;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U1(
    .din0(b_q0),
    .din1(a_q0),
    .din2(res_load_reg_100),
    .dout(grp_fu_246_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln56_fu_158_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_78 <= i_reg_257;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_78 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln59_fu_184_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        j_0_reg_89 <= j_reg_271;
    end else if (((icmp_ln54_fu_124_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_89 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        k_0_reg_113 <= k_reg_289;
    end else if (((icmp_ln56_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        k_0_reg_113 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        res_load_reg_100 <= grp_fu_246_p3;
    end else if (((icmp_ln56_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        res_load_reg_100 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_257 <= i_fu_130_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_271 <= j_fu_164_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        k_reg_289 <= k_fu_190_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln56_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        res_addr_reg_281 <= sext_ln57_fu_179_p1;
        zext_ln57_reg_276[1 : 0] <= zext_ln57_fu_170_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_fu_124_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sub_ln60_reg_262 <= sub_ln60_fu_152_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_fu_124_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_fu_124_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        res_ce0 = 1'b1;
    end else begin
        res_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        res_we0 = 1'b1;
    end else begin
        res_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln54_fu_124_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln56_fu_158_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln59_fu_184_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = sext_ln60_2_fu_205_p1;

assign add_ln57_fu_174_p2 = (sub_ln60_reg_262 + zext_ln57_fu_170_p1);

assign add_ln60_1_fu_200_p2 = (sub_ln60_reg_262 + zext_ln60_2_fu_196_p1);

assign add_ln60_2_fu_228_p2 = (sub_ln60_1_fu_222_p2 + zext_ln57_reg_276);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign b_address0 = sext_ln60_3_fu_233_p1;

assign i_fu_130_p2 = (i_0_reg_78 + 2'd1);

assign icmp_ln54_fu_124_p2 = ((i_0_reg_78 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln56_fu_158_p2 = ((j_0_reg_89 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln59_fu_184_p2 = ((k_0_reg_113 == 2'd3) ? 1'b1 : 1'b0);

assign j_fu_164_p2 = (j_0_reg_89 + 2'd1);

assign k_fu_190_p2 = (k_0_reg_113 + 2'd1);

assign res_address0 = res_addr_reg_281;

assign res_d0 = res_load_reg_100;

assign sext_ln57_fu_179_p1 = $signed(add_ln57_fu_174_p2);

assign sext_ln60_2_fu_205_p1 = $signed(add_ln60_1_fu_200_p2);

assign sext_ln60_3_fu_233_p1 = $signed(add_ln60_2_fu_228_p2);

assign sub_ln60_1_fu_222_p2 = (zext_ln60_3_fu_218_p1 - zext_ln60_2_fu_196_p1);

assign sub_ln60_fu_152_p2 = (zext_ln60_1_fu_148_p1 - zext_ln60_fu_136_p1);

assign tmp_2_fu_140_p3 = {{i_0_reg_78}, {2'd0}};

assign tmp_3_fu_210_p3 = {{k_0_reg_113}, {2'd0}};

assign zext_ln57_fu_170_p1 = j_0_reg_89;

assign zext_ln60_1_fu_148_p1 = tmp_2_fu_140_p3;

assign zext_ln60_2_fu_196_p1 = k_0_reg_113;

assign zext_ln60_3_fu_218_p1 = tmp_3_fu_210_p3;

assign zext_ln60_fu_136_p1 = i_0_reg_78;

always @ (posedge ap_clk) begin
    zext_ln57_reg_276[4:2] <= 3'b000;
end

endmodule //matrixmul
