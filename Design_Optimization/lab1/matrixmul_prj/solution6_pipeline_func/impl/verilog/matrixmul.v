// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z007s-clg400-1,HLS_INPUT_CLOCK=13.333000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=10.210000,HLS_SYN_LAT=6,HLS_SYN_TPT=5,HLS_SYN_MEM=0,HLS_SYN_DSP=18,HLS_SYN_FF=487,HLS_SYN_LUT=574,HLS_VERSION=2020_1}" *)

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
        res_d0,
        res_address1,
        res_ce1,
        res_we1,
        res_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] a_address0;
output   a_ce0;
input  [23:0] a_q0;
output  [1:0] a_address1;
output   a_ce1;
input  [23:0] a_q1;
output  [1:0] b_address0;
output   b_ce0;
input  [23:0] b_q0;
output  [1:0] b_address1;
output   b_ce1;
input  [23:0] b_q1;
output  [3:0] res_address0;
output   res_ce0;
output   res_we0;
output  [15:0] res_d0;
output  [3:0] res_address1;
output   res_ce1;
output   res_we1;
output  [15:0] res_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[1:0] a_address0;
reg a_ce0;
reg a_ce1;
reg[1:0] b_address0;
reg b_ce0;
reg b_ce1;
reg[3:0] res_address0;
reg res_ce0;
reg res_we0;
reg[15:0] res_d0;
reg[3:0] res_address1;
reg res_ce1;
reg res_we1;
reg[15:0] res_d1;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_11001;
reg   [7:0] reg_252;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state7_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
reg  signed [7:0] reg_256;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire  signed [15:0] sext_ln60_fu_264_p1;
reg  signed [15:0] sext_ln60_reg_579;
wire  signed [15:0] sext_ln60_1_fu_272_p1;
reg  signed [15:0] sext_ln60_1_reg_584;
wire  signed [15:0] sext_ln60_4_fu_276_p1;
reg  signed [15:0] sext_ln60_4_reg_590;
wire  signed [15:0] sext_ln60_5_fu_280_p1;
reg  signed [15:0] sext_ln60_5_reg_595;
wire  signed [15:0] grp_fu_434_p3;
reg  signed [15:0] add_ln60_reg_601;
wire  signed [15:0] sext_ln60_6_fu_294_p1;
reg  signed [15:0] sext_ln60_6_reg_606;
reg  signed [7:0] tmp_7_reg_612;
wire  signed [15:0] sext_ln60_8_fu_318_p1;
reg  signed [15:0] sext_ln60_8_reg_617;
wire  signed [15:0] grp_fu_442_p3;
reg  signed [15:0] add_ln60_2_reg_623;
wire   [7:0] trunc_ln60_4_fu_328_p1;
reg  signed [7:0] trunc_ln60_4_reg_633;
reg  signed [7:0] tmp_6_reg_638;
reg   [7:0] tmp_9_reg_643;
wire  signed [15:0] sext_ln60_2_fu_352_p1;
reg  signed [15:0] sext_ln60_2_reg_653;
wire  signed [15:0] sext_ln60_3_fu_356_p1;
reg  signed [15:0] sext_ln60_3_reg_658;
wire  signed [15:0] sext_ln60_7_fu_360_p1;
reg  signed [15:0] sext_ln60_7_reg_664;
wire  signed [15:0] sext_ln60_9_fu_367_p1;
reg  signed [15:0] sext_ln60_9_reg_670;
wire  signed [15:0] sext_ln60_11_fu_371_p1;
reg  signed [15:0] sext_ln60_11_reg_676;
wire  signed [15:0] grp_fu_466_p3;
reg  signed [15:0] add_ln60_4_reg_682;
wire  signed [15:0] sext_ln60_12_fu_380_p1;
reg  signed [15:0] sext_ln60_12_reg_687;
wire  signed [15:0] sext_ln60_14_fu_383_p1;
reg  signed [15:0] sext_ln60_14_reg_693;
wire  signed [15:0] grp_fu_473_p3;
reg  signed [15:0] add_ln60_6_reg_699;
wire   [7:0] trunc_ln60_5_fu_391_p1;
reg   [7:0] trunc_ln60_5_reg_704;
wire   [7:0] grp_fu_232_p4;
reg   [7:0] tmp_11_reg_709;
wire  signed [15:0] sext_ln60_10_fu_395_p1;
reg  signed [15:0] sext_ln60_10_reg_714;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_11001;
wire  signed [15:0] sext_ln60_13_fu_399_p1;
reg  signed [15:0] sext_ln60_13_reg_720;
wire  signed [15:0] grp_fu_494_p3;
reg  signed [15:0] add_ln60_8_reg_726;
wire  signed [15:0] grp_fu_500_p3;
reg  signed [15:0] add_ln60_10_reg_731;
wire  signed [15:0] sext_ln60_15_fu_410_p1;
reg  signed [15:0] sext_ln60_15_reg_736;
wire  signed [15:0] sext_ln60_17_fu_413_p1;
reg  signed [15:0] sext_ln60_17_reg_741;
wire  signed [15:0] grp_fu_518_p3;
reg  signed [15:0] add_ln60_12_reg_746;
wire  signed [15:0] grp_fu_525_p3;
reg  signed [15:0] add_ln60_14_reg_751;
wire  signed [15:0] grp_fu_552_p3;
reg  signed [15:0] add_ln60_17_reg_756;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire  signed [15:0] grp_fu_450_p3;
wire  signed [15:0] grp_fu_458_p3;
wire  signed [15:0] grp_fu_480_p3;
wire  signed [15:0] grp_fu_487_p3;
wire  signed [15:0] grp_fu_506_p3;
wire  signed [15:0] grp_fu_512_p3;
wire  signed [15:0] grp_fu_532_p3;
wire  signed [15:0] grp_fu_539_p3;
wire   [7:0] trunc_ln60_fu_260_p1;
wire  signed [7:0] trunc_ln60_1_fu_268_p1;
wire   [7:0] grp_fu_242_p4;
wire  signed [7:0] mul_ln60_2_fu_284_p0;
wire  signed [7:0] mul_ln60_2_fu_284_p1;
wire  signed [7:0] trunc_ln60_2_fu_290_p1;
wire   [7:0] tmp_8_fu_308_p4;
wire  signed [7:0] mul_ln60_5_fu_322_p0;
wire  signed [7:0] mul_ln60_5_fu_322_p1;
wire  signed [7:0] trunc_ln60_3_fu_363_p1;
wire  signed [7:0] mul_ln60_8_fu_375_p0;
wire  signed [7:0] mul_ln60_8_fu_375_p1;
wire  signed [7:0] mul_ln60_11_fu_386_p0;
wire  signed [7:0] mul_ln60_11_fu_386_p1;
wire  signed [7:0] mul_ln60_14_fu_402_p0;
wire  signed [7:0] mul_ln60_14_fu_402_p1;
wire  signed [7:0] mul_ln60_17_fu_406_p0;
wire  signed [7:0] mul_ln60_17_fu_406_p1;
wire  signed [7:0] mul_ln60_20_fu_416_p0;
wire  signed [7:0] mul_ln60_20_fu_416_p1;
wire  signed [7:0] mul_ln60_23_fu_421_p0;
wire  signed [7:0] mul_ln60_23_fu_421_p1;
wire  signed [7:0] mul_ln60_26_fu_430_p0;
wire  signed [7:0] mul_ln60_26_fu_430_p1;
wire  signed [7:0] grp_fu_434_p1;
wire   [15:0] grp_fu_434_p2;
wire  signed [7:0] grp_fu_442_p1;
wire   [15:0] grp_fu_442_p2;
wire  signed [7:0] grp_fu_450_p1;
wire  signed [7:0] grp_fu_458_p1;
wire  signed [7:0] grp_fu_466_p1;
wire   [15:0] grp_fu_466_p2;
wire  signed [7:0] grp_fu_473_p0;
wire   [15:0] grp_fu_473_p2;
wire  signed [7:0] grp_fu_480_p1;
wire  signed [7:0] grp_fu_487_p0;
wire  signed [7:0] grp_fu_494_p0;
wire  signed [7:0] grp_fu_494_p1;
wire   [15:0] grp_fu_494_p2;
wire  signed [7:0] grp_fu_500_p0;
wire  signed [7:0] grp_fu_500_p1;
wire   [15:0] grp_fu_500_p2;
wire  signed [7:0] grp_fu_506_p0;
wire  signed [7:0] grp_fu_506_p1;
wire  signed [7:0] grp_fu_512_p0;
wire  signed [7:0] grp_fu_512_p1;
wire  signed [7:0] grp_fu_518_p0;
wire  signed [7:0] grp_fu_518_p1;
wire   [15:0] grp_fu_518_p2;
wire  signed [7:0] grp_fu_525_p0;
wire  signed [7:0] grp_fu_525_p1;
wire   [15:0] grp_fu_525_p2;
wire  signed [7:0] grp_fu_532_p0;
wire  signed [7:0] grp_fu_532_p1;
wire  signed [15:0] sext_ln60_16_fu_426_p1;
wire  signed [7:0] grp_fu_539_p0;
wire  signed [7:0] grp_fu_539_p1;
wire  signed [7:0] grp_fu_546_p0;
wire  signed [7:0] grp_fu_546_p1;
wire   [15:0] grp_fu_546_p2;
wire  signed [7:0] grp_fu_552_p0;
wire  signed [7:0] grp_fu_552_p1;
wire  signed [15:0] grp_fu_546_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U1(
    .din0(trunc_ln60_1_fu_268_p1),
    .din1(grp_fu_434_p1),
    .din2(grp_fu_434_p2),
    .dout(grp_fu_434_p3)
);

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U2(
    .din0(trunc_ln60_2_fu_290_p1),
    .din1(grp_fu_442_p1),
    .din2(grp_fu_442_p2),
    .dout(grp_fu_442_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U3(
    .din0(reg_256),
    .din1(grp_fu_450_p1),
    .din2(add_ln60_reg_601),
    .dout(grp_fu_450_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U4(
    .din0(tmp_7_reg_612),
    .din1(grp_fu_458_p1),
    .din2(add_ln60_2_reg_623),
    .dout(grp_fu_458_p3)
);

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U5(
    .din0(trunc_ln60_3_fu_363_p1),
    .din1(grp_fu_466_p1),
    .din2(grp_fu_466_p2),
    .dout(grp_fu_466_p3)
);

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U6(
    .din0(grp_fu_473_p0),
    .din1(trunc_ln60_4_reg_633),
    .din2(grp_fu_473_p2),
    .dout(grp_fu_473_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U7(
    .din0(reg_256),
    .din1(grp_fu_480_p1),
    .din2(add_ln60_4_reg_682),
    .dout(grp_fu_480_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U8(
    .din0(grp_fu_487_p0),
    .din1(tmp_6_reg_638),
    .din2(add_ln60_6_reg_699),
    .dout(grp_fu_487_p3)
);

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U9(
    .din0(grp_fu_494_p0),
    .din1(grp_fu_494_p1),
    .din2(grp_fu_494_p2),
    .dout(grp_fu_494_p3)
);

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U10(
    .din0(grp_fu_500_p0),
    .din1(grp_fu_500_p1),
    .din2(grp_fu_500_p2),
    .dout(grp_fu_500_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U11(
    .din0(grp_fu_506_p0),
    .din1(grp_fu_506_p1),
    .din2(add_ln60_8_reg_726),
    .dout(grp_fu_506_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U12(
    .din0(grp_fu_512_p0),
    .din1(grp_fu_512_p1),
    .din2(add_ln60_10_reg_731),
    .dout(grp_fu_512_p3)
);

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U13(
    .din0(grp_fu_518_p0),
    .din1(grp_fu_518_p1),
    .din2(grp_fu_518_p2),
    .dout(grp_fu_518_p3)
);

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U14(
    .din0(grp_fu_525_p0),
    .din1(grp_fu_525_p1),
    .din2(grp_fu_525_p2),
    .dout(grp_fu_525_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U15(
    .din0(grp_fu_532_p0),
    .din1(grp_fu_532_p1),
    .din2(add_ln60_12_reg_746),
    .dout(grp_fu_532_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U16(
    .din0(grp_fu_539_p0),
    .din1(grp_fu_539_p1),
    .din2(add_ln60_14_reg_751),
    .dout(grp_fu_539_p3)
);

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U17(
    .din0(grp_fu_546_p0),
    .din1(grp_fu_546_p1),
    .din2(grp_fu_546_p2),
    .dout(grp_fu_546_p3)
);

matrixmul_mac_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulcud_U18(
    .din0(grp_fu_552_p0),
    .din1(grp_fu_552_p1),
    .din2(grp_fu_546_p3),
    .dout(grp_fu_552_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add_ln60_10_reg_731 <= grp_fu_500_p3;
        add_ln60_8_reg_726 <= grp_fu_494_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        add_ln60_12_reg_746 <= grp_fu_518_p3;
        add_ln60_14_reg_751 <= grp_fu_525_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln60_17_reg_756 <= grp_fu_552_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        add_ln60_2_reg_623 <= grp_fu_442_p3;
        add_ln60_reg_601 <= grp_fu_434_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        add_ln60_4_reg_682 <= grp_fu_466_p3;
        add_ln60_6_reg_699 <= grp_fu_473_p3;
        tmp_11_reg_709 <= {{a_q0[23:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_252 <= {{a_q0[15:8]}};
        reg_256 <= {{b_q0[15:8]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        sext_ln60_10_reg_714 <= sext_ln60_10_fu_395_p1;
        sext_ln60_13_reg_720 <= sext_ln60_13_fu_399_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sext_ln60_11_reg_676 <= sext_ln60_11_fu_371_p1;
        sext_ln60_12_reg_687 <= sext_ln60_12_fu_380_p1;
        sext_ln60_14_reg_693 <= sext_ln60_14_fu_383_p1;
        sext_ln60_2_reg_653 <= sext_ln60_2_fu_352_p1;
        sext_ln60_3_reg_658 <= sext_ln60_3_fu_356_p1;
        sext_ln60_7_reg_664 <= sext_ln60_7_fu_360_p1;
        sext_ln60_9_reg_670 <= sext_ln60_9_fu_367_p1;
        trunc_ln60_5_reg_704 <= trunc_ln60_5_fu_391_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sext_ln60_15_reg_736 <= sext_ln60_15_fu_410_p1;
        sext_ln60_17_reg_741 <= sext_ln60_17_fu_413_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sext_ln60_1_reg_584 <= sext_ln60_1_fu_272_p1;
        sext_ln60_4_reg_590 <= sext_ln60_4_fu_276_p1;
        sext_ln60_5_reg_595 <= sext_ln60_5_fu_280_p1;
        sext_ln60_6_reg_606 <= sext_ln60_6_fu_294_p1;
        sext_ln60_8_reg_617 <= sext_ln60_8_fu_318_p1;
        sext_ln60_reg_579 <= sext_ln60_fu_264_p1;
        tmp_6_reg_638 <= {{a_q1[15:8]}};
        tmp_7_reg_612 <= {{b_q1[15:8]}};
        tmp_9_reg_643 <= {{a_q1[23:16]}};
        trunc_ln60_4_reg_633 <= trunc_ln60_4_fu_328_p1;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address0 = 64'd2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address0 = 64'd0;
        end else begin
            a_address0 = 'bx;
        end
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_ce1 = 1'b1;
    end else begin
        a_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_address0 = 64'd2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_address0 = 64'd0;
        end else begin
            b_address0 = 'bx;
        end
    end else begin
        b_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        b_ce1 = 1'b1;
    end else begin
        b_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        res_address0 = 64'd8;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        res_address0 = 64'd6;
    end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        res_address0 = 64'd5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        res_address0 = 64'd3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        res_address0 = 64'd1;
    end else begin
        res_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        res_address1 = 64'd7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        res_address1 = 64'd4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        res_address1 = 64'd2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        res_address1 = 64'd0;
    end else begin
        res_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        res_ce0 = 1'b1;
    end else begin
        res_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        res_ce1 = 1'b1;
    end else begin
        res_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        res_d0 = add_ln60_17_reg_756;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        res_d0 = grp_fu_532_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        res_d0 = grp_fu_512_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        res_d0 = grp_fu_487_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        res_d0 = grp_fu_458_p3;
    end else begin
        res_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        res_d1 = grp_fu_539_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        res_d1 = grp_fu_506_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        res_d1 = grp_fu_480_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        res_d1 = grp_fu_450_p3;
    end else begin
        res_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        res_we0 = 1'b1;
    end else begin
        res_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        res_we1 = 1'b1;
    end else begin
        res_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address1 = 64'd1;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_start == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign b_address1 = 64'd1;

assign grp_fu_232_p4 = {{a_q0[23:16]}};

assign grp_fu_242_p4 = {{b_q0[23:16]}};

assign grp_fu_434_p1 = sext_ln60_fu_264_p1;

assign grp_fu_434_p2 = ($signed(mul_ln60_2_fu_284_p0) * $signed(mul_ln60_2_fu_284_p1));

assign grp_fu_442_p1 = sext_ln60_fu_264_p1;

assign grp_fu_442_p2 = ($signed(mul_ln60_5_fu_322_p0) * $signed(mul_ln60_5_fu_322_p1));

assign grp_fu_450_p1 = sext_ln60_2_fu_352_p1;

assign grp_fu_458_p1 = sext_ln60_2_fu_352_p1;

assign grp_fu_466_p1 = sext_ln60_reg_579;

assign grp_fu_466_p2 = ($signed(mul_ln60_8_fu_375_p0) * $signed(mul_ln60_8_fu_375_p1));

assign grp_fu_473_p0 = sext_ln60_1_reg_584;

assign grp_fu_473_p2 = ($signed(mul_ln60_11_fu_386_p0) * $signed(mul_ln60_11_fu_386_p1));

assign grp_fu_480_p1 = sext_ln60_2_reg_653;

assign grp_fu_487_p0 = sext_ln60_3_reg_658;

assign grp_fu_494_p0 = sext_ln60_6_reg_606;

assign grp_fu_494_p1 = sext_ln60_12_reg_687;

assign grp_fu_494_p2 = ($signed(mul_ln60_14_fu_402_p0) * $signed(mul_ln60_14_fu_402_p1));

assign grp_fu_500_p0 = sext_ln60_9_reg_670;

assign grp_fu_500_p1 = sext_ln60_12_reg_687;

assign grp_fu_500_p2 = ($signed(mul_ln60_17_fu_406_p0) * $signed(mul_ln60_17_fu_406_p1));

assign grp_fu_506_p0 = sext_ln60_7_reg_664;

assign grp_fu_506_p1 = sext_ln60_13_reg_720;

assign grp_fu_512_p0 = sext_ln60_10_reg_714;

assign grp_fu_512_p1 = sext_ln60_13_reg_720;

assign grp_fu_518_p0 = sext_ln60_1_reg_584;

assign grp_fu_518_p1 = sext_ln60_15_fu_410_p1;

assign grp_fu_518_p2 = ($signed(mul_ln60_20_fu_416_p0) * $signed(mul_ln60_20_fu_416_p1));

assign grp_fu_525_p0 = sext_ln60_6_reg_606;

assign grp_fu_525_p1 = sext_ln60_15_fu_410_p1;

assign grp_fu_525_p2 = ($signed(mul_ln60_23_fu_421_p0) * $signed(mul_ln60_23_fu_421_p1));

assign grp_fu_532_p0 = sext_ln60_3_reg_658;

assign grp_fu_532_p1 = sext_ln60_16_fu_426_p1;

assign grp_fu_539_p0 = sext_ln60_7_reg_664;

assign grp_fu_539_p1 = sext_ln60_16_fu_426_p1;

assign grp_fu_546_p0 = sext_ln60_9_reg_670;

assign grp_fu_546_p1 = sext_ln60_15_reg_736;

assign grp_fu_546_p2 = ($signed(mul_ln60_26_fu_430_p0) * $signed(mul_ln60_26_fu_430_p1));

assign grp_fu_552_p0 = sext_ln60_10_reg_714;

assign grp_fu_552_p1 = sext_ln60_16_fu_426_p1;

assign mul_ln60_11_fu_386_p0 = sext_ln60_5_reg_595;

assign mul_ln60_11_fu_386_p1 = tmp_9_reg_643;

assign mul_ln60_14_fu_402_p0 = sext_ln60_8_reg_617;

assign mul_ln60_14_fu_402_p1 = sext_ln60_14_reg_693;

assign mul_ln60_17_fu_406_p0 = sext_ln60_11_reg_676;

assign mul_ln60_17_fu_406_p1 = sext_ln60_14_reg_693;

assign mul_ln60_20_fu_416_p0 = sext_ln60_5_reg_595;

assign mul_ln60_20_fu_416_p1 = sext_ln60_17_fu_413_p1;

assign mul_ln60_23_fu_421_p0 = sext_ln60_8_reg_617;

assign mul_ln60_23_fu_421_p1 = sext_ln60_17_fu_413_p1;

assign mul_ln60_26_fu_430_p0 = sext_ln60_11_reg_676;

assign mul_ln60_26_fu_430_p1 = sext_ln60_17_reg_741;

assign mul_ln60_2_fu_284_p0 = grp_fu_242_p4;

assign mul_ln60_2_fu_284_p1 = sext_ln60_4_fu_276_p1;

assign mul_ln60_5_fu_322_p0 = tmp_8_fu_308_p4;

assign mul_ln60_5_fu_322_p1 = sext_ln60_4_fu_276_p1;

assign mul_ln60_8_fu_375_p0 = grp_fu_242_p4;

assign mul_ln60_8_fu_375_p1 = sext_ln60_4_reg_590;

assign sext_ln60_10_fu_395_p1 = reg_256;

assign sext_ln60_11_fu_371_p1 = $signed(grp_fu_242_p4);

assign sext_ln60_12_fu_380_p1 = trunc_ln60_4_reg_633;

assign sext_ln60_13_fu_399_p1 = tmp_6_reg_638;

assign sext_ln60_14_fu_383_p1 = $signed(tmp_9_reg_643);

assign sext_ln60_15_fu_410_p1 = $signed(trunc_ln60_5_reg_704);

assign sext_ln60_16_fu_426_p1 = $signed(reg_252);

assign sext_ln60_17_fu_413_p1 = $signed(tmp_11_reg_709);

assign sext_ln60_1_fu_272_p1 = trunc_ln60_1_fu_268_p1;

assign sext_ln60_2_fu_352_p1 = $signed(reg_252);

assign sext_ln60_3_fu_356_p1 = reg_256;

assign sext_ln60_4_fu_276_p1 = $signed(grp_fu_232_p4);

assign sext_ln60_5_fu_280_p1 = $signed(grp_fu_242_p4);

assign sext_ln60_6_fu_294_p1 = trunc_ln60_2_fu_290_p1;

assign sext_ln60_7_fu_360_p1 = tmp_7_reg_612;

assign sext_ln60_8_fu_318_p1 = $signed(tmp_8_fu_308_p4);

assign sext_ln60_9_fu_367_p1 = trunc_ln60_3_fu_363_p1;

assign sext_ln60_fu_264_p1 = $signed(trunc_ln60_fu_260_p1);

assign tmp_8_fu_308_p4 = {{b_q1[23:16]}};

assign trunc_ln60_1_fu_268_p1 = b_q0[7:0];

assign trunc_ln60_2_fu_290_p1 = b_q1[7:0];

assign trunc_ln60_3_fu_363_p1 = b_q0[7:0];

assign trunc_ln60_4_fu_328_p1 = a_q1[7:0];

assign trunc_ln60_5_fu_391_p1 = a_q0[7:0];

assign trunc_ln60_fu_260_p1 = a_q0[7:0];

endmodule //matrixmul