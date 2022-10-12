// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z007s-clg400-1,HLS_INPUT_CLOCK=13.333000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=11.024000,HLS_SYN_LAT=20,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=46,HLS_SYN_LUT=302,HLS_VERSION=2020_1}" *)

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
        a_address1,
        a_ce1,
        a_q1,
        b_address0,
        b_ce0,
        b_q0,
        b_address1,
        b_ce1,
        b_q1,
        res_address0,
        res_ce0,
        res_we0,
        res_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_pp0_stage0 = 4'd2;
parameter    ap_ST_fsm_pp0_stage1 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] a_address0;
output   a_ce0;
input  [7:0] a_q0;
output  [3:0] a_address1;
output   a_ce1;
input  [7:0] a_q1;
output  [3:0] b_address0;
output   b_ce0;
input  [7:0] b_q0;
output  [3:0] b_address1;
output   b_ce1;
input  [7:0] b_q1;
output  [3:0] res_address0;
output   res_ce0;
output   res_we0;
output  [15:0] res_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] a_address0;
reg a_ce0;
reg a_ce1;
reg[3:0] b_address0;
reg b_ce0;
reg b_ce1;
reg res_ce0;
reg res_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [3:0] indvar_flatten_reg_139;
reg   [1:0] i_0_reg_150;
reg   [1:0] j_0_reg_161;
wire   [0:0] icmp_ln54_fu_172_p2;
reg   [0:0] icmp_ln54_reg_358;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] add_ln54_fu_178_p2;
reg   [3:0] add_ln54_reg_362;
reg    ap_enable_reg_pp0_iter0;
wire   [1:0] select_ln57_fu_196_p3;
reg   [1:0] select_ln57_reg_367;
wire   [1:0] select_ln57_1_fu_204_p3;
reg   [1:0] select_ln57_1_reg_374;
wire  signed [4:0] sub_ln60_fu_228_p2;
reg  signed [4:0] sub_ln60_reg_379;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
wire  signed [15:0] grp_fu_342_p3;
reg  signed [15:0] add_ln60_reg_415;
wire   [1:0] j_fu_316_p2;
reg   [1:0] j_reg_420;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [3:0] ap_phi_mux_indvar_flatten_phi_fu_143_p4;
wire    ap_block_pp0_stage0;
reg   [1:0] ap_phi_mux_i_0_phi_fu_154_p4;
reg   [1:0] ap_phi_mux_j_0_phi_fu_165_p4;
wire  signed [63:0] sext_ln60_6_fu_234_p1;
wire  signed [63:0] sext_ln60_8_fu_245_p1;
wire   [63:0] zext_ln57_fu_250_p1;
wire   [63:0] zext_ln60_6_fu_265_p1;
wire  signed [63:0] sext_ln60_7_fu_275_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln60_5_fu_289_p1;
wire  signed [63:0] sext_ln57_fu_329_p1;
wire  signed [15:0] grp_fu_350_p3;
wire   [0:0] icmp_ln56_fu_190_p2;
wire   [1:0] i_fu_184_p2;
wire   [3:0] tmp_fu_216_p3;
wire   [4:0] zext_ln60_1_fu_224_p1;
wire   [4:0] zext_ln60_fu_212_p1;
wire   [4:0] add_ln60_3_fu_239_p2;
wire   [3:0] zext_ln60_3_fu_255_p1;
wire   [3:0] add_ln60_5_fu_259_p2;
wire   [4:0] add_ln60_2_fu_270_p2;
wire   [2:0] zext_ln60_4_fu_280_p1;
wire   [2:0] add_ln60_4_fu_283_p2;
wire  signed [7:0] mul_ln60_2_fu_310_p0;
wire  signed [7:0] mul_ln60_2_fu_310_p1;
wire   [4:0] zext_ln60_2_fu_321_p1;
wire   [4:0] add_ln57_fu_324_p2;
wire   [15:0] grp_fu_342_p2;
wire    ap_CS_fsm_state5;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
    .din2(grp_fu_342_p2),
    .dout(grp_fu_342_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U2(
    .din0(b_q0),
    .din1(a_q0),
    .din2(add_ln60_reg_415),
    .dout(grp_fu_350_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_reg_358 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_0_reg_150 <= select_ln57_1_reg_374;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_150 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_reg_358 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        indvar_flatten_reg_139 <= add_ln54_reg_362;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_139 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_reg_358 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_0_reg_161 <= j_reg_420;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_161 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln54_reg_362 <= add_ln54_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_reg_358 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_ln60_reg_415 <= grp_fu_342_p3;
        j_reg_420 <= j_fu_316_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln54_reg_358 <= icmp_ln54_fu_172_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_fu_172_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln57_1_reg_374 <= select_ln57_1_fu_204_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln57_reg_367 <= select_ln57_fu_196_p3;
        sub_ln60_reg_379 <= sub_ln60_fu_228_p2;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            a_address0 = sext_ln60_7_fu_275_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            a_address0 = sext_ln60_6_fu_234_p1;
        end else begin
            a_address0 = 'bx;
        end
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_ce1 = 1'b1;
    end else begin
        a_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln54_fu_172_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_reg_358 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_0_phi_fu_154_p4 = select_ln57_1_reg_374;
    end else begin
        ap_phi_mux_i_0_phi_fu_154_p4 = i_0_reg_150;
    end
end

always @ (*) begin
    if (((icmp_ln54_reg_358 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_indvar_flatten_phi_fu_143_p4 = add_ln54_reg_362;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_143_p4 = indvar_flatten_reg_139;
    end
end

always @ (*) begin
    if (((icmp_ln54_reg_358 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_0_phi_fu_165_p4 = j_reg_420;
    end else begin
        ap_phi_mux_j_0_phi_fu_165_p4 = j_0_reg_161;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            b_address0 = zext_ln60_5_fu_289_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            b_address0 = zext_ln57_fu_250_p1;
        end else begin
            b_address0 = 'bx;
        end
    end else begin
        b_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_ce1 = 1'b1;
    end else begin
        b_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        res_ce0 = 1'b1;
    end else begin
        res_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_reg_358 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        res_we0 = 1'b1;
    end else begin
        res_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln54_fu_172_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln54_fu_172_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address1 = sext_ln60_8_fu_245_p1;

assign add_ln54_fu_178_p2 = (ap_phi_mux_indvar_flatten_phi_fu_143_p4 + 4'd1);

assign add_ln57_fu_324_p2 = ($signed(sub_ln60_reg_379) + $signed(zext_ln60_2_fu_321_p1));

assign add_ln60_2_fu_270_p2 = ($signed(sub_ln60_reg_379) + $signed(5'd1));

assign add_ln60_3_fu_239_p2 = ($signed(sub_ln60_fu_228_p2) + $signed(5'd2));

assign add_ln60_4_fu_283_p2 = (zext_ln60_4_fu_280_p1 + 3'd3);

assign add_ln60_5_fu_259_p2 = (zext_ln60_3_fu_255_p1 + 4'd6);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign b_address1 = zext_ln60_6_fu_265_p1;

assign grp_fu_342_p2 = ($signed(mul_ln60_2_fu_310_p0) * $signed(mul_ln60_2_fu_310_p1));

assign i_fu_184_p2 = (ap_phi_mux_i_0_phi_fu_154_p4 + 2'd1);

assign icmp_ln54_fu_172_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_143_p4 == 4'd9) ? 1'b1 : 1'b0);

assign icmp_ln56_fu_190_p2 = ((ap_phi_mux_j_0_phi_fu_165_p4 == 2'd3) ? 1'b1 : 1'b0);

assign j_fu_316_p2 = (select_ln57_reg_367 + 2'd1);

assign mul_ln60_2_fu_310_p0 = b_q1;

assign mul_ln60_2_fu_310_p1 = a_q1;

assign res_address0 = sext_ln57_fu_329_p1;

assign res_d0 = grp_fu_350_p3;

assign select_ln57_1_fu_204_p3 = ((icmp_ln56_fu_190_p2[0:0] === 1'b1) ? i_fu_184_p2 : ap_phi_mux_i_0_phi_fu_154_p4);

assign select_ln57_fu_196_p3 = ((icmp_ln56_fu_190_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_j_0_phi_fu_165_p4);

assign sext_ln57_fu_329_p1 = $signed(add_ln57_fu_324_p2);

assign sext_ln60_6_fu_234_p1 = sub_ln60_fu_228_p2;

assign sext_ln60_7_fu_275_p1 = $signed(add_ln60_2_fu_270_p2);

assign sext_ln60_8_fu_245_p1 = $signed(add_ln60_3_fu_239_p2);

assign sub_ln60_fu_228_p2 = (zext_ln60_1_fu_224_p1 - zext_ln60_fu_212_p1);

assign tmp_fu_216_p3 = {{select_ln57_1_fu_204_p3}, {2'd0}};

assign zext_ln57_fu_250_p1 = select_ln57_fu_196_p3;

assign zext_ln60_1_fu_224_p1 = tmp_fu_216_p3;

assign zext_ln60_2_fu_321_p1 = select_ln57_reg_367;

assign zext_ln60_3_fu_255_p1 = select_ln57_fu_196_p3;

assign zext_ln60_4_fu_280_p1 = select_ln57_reg_367;

assign zext_ln60_5_fu_289_p1 = add_ln60_4_fu_283_p2;

assign zext_ln60_6_fu_265_p1 = add_ln60_5_fu_259_p2;

assign zext_ln60_fu_212_p1 = select_ln57_1_fu_204_p3;

endmodule //matrixmul
