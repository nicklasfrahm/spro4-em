// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Tue Apr 17 11:05:27 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/sine_generator_with_filter/sine_generator_with_filter.sim/sim_1/impl/timing/xsim/sine_wave_gen_test_time_impl.v}
// Design      : sine_wave_gen
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module comparator_8_1
   (pwm_out_sine_OBUF,
    reset_IBUF,
    clk_IBUF_BUFG,
    DI,
    S);
  output pwm_out_sine_OBUF;
  input reset_IBUF;
  input clk_IBUF_BUFG;
  input [3:0]DI;
  input [3:0]S;

  wire [3:0]DI;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire comp_out0_carry_n_0;
  wire pwm_out_sine_OBUF;
  wire reset_IBUF;
  wire [2:0]NLW_comp_out0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_comp_out0_carry_O_UNCONNECTED;

  CARRY4 comp_out0_carry
       (.CI(1'b0),
        .CO({comp_out0_carry_n_0,NLW_comp_out0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(NLW_comp_out0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    comp_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comp_out0_carry_n_0),
        .Q(pwm_out_sine_OBUF),
        .R(reset_IBUF));
endmodule

(* ORIG_REF_NAME = "comparator_8_1" *) 
module comparator_8_1_1
   (pwm_out_fir_OBUF,
    reset_IBUF,
    clk_IBUF_BUFG,
    DI,
    S);
  output pwm_out_fir_OBUF;
  input reset_IBUF;
  input clk_IBUF_BUFG;
  input [3:0]DI;
  input [3:0]S;

  wire [3:0]DI;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire comp_out0_carry_n_0;
  wire pwm_out_fir_OBUF;
  wire reset_IBUF;
  wire [2:0]NLW_comp_out0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_comp_out0_carry_O_UNCONNECTED;

  CARRY4 comp_out0_carry
       (.CI(1'b0),
        .CO({comp_out0_carry_n_0,NLW_comp_out0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(NLW_comp_out0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    comp_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comp_out0_carry_n_0),
        .Q(pwm_out_fir_OBUF),
        .R(reset_IBUF));
endmodule

module counter_8
   (Q,
    reset_IBUF,
    clk_IBUF_BUFG);
  output [7:0]Q;
  input reset_IBUF;
  input clk_IBUF_BUFG;

  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire [7:1]plusOp__0;
  wire reset_IBUF;
  wire \tmp[0]_i_1_n_0 ;
  wire \tmp[7]_i_2_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \tmp[0]_i_1 
       (.I0(Q[0]),
        .O(\tmp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tmp[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tmp[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \tmp[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[6]_i_1 
       (.I0(\tmp[7]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp[7]_i_1 
       (.I0(\tmp[7]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \tmp[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\tmp[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(Q[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[6]),
        .Q(Q[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[7]),
        .Q(Q[7]),
        .R(reset_IBUF));
endmodule

module dip_sw_8
   (Q,
    D,
    clk_IBUF_BUFG);
  output [3:0]Q;
  input [3:0]D;
  input clk_IBUF_BUFG;

  wire [3:0]D;
  wire [3:0]Q;
  wire clk_IBUF_BUFG;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

module frequency_select
   (data_ready_debug_OBUF,
    S,
    out,
    DI,
    clk_IBUF_BUFG,
    reset_IBUF,
    Q,
    \tmp_reg[7] );
  output data_ready_debug_OBUF;
  output [3:0]S;
  output [7:0]out;
  output [3:0]DI;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [3:0]Q;
  input [7:0]\tmp_reg[7] ;

  wire [3:0]DI;
  wire [3:0]Q;
  wire [3:0]S;
  wire [4:0]addr_reg__0;
  wire clk_IBUF_BUFG;
  wire data_ready_debug_OBUF;
  wire data_ready_i_1_n_0;
  wire eqOp;
  wire eqOp_carry_i_1_n_0;
  wire eqOp_carry_i_2_n_0;
  wire eqOp_carry_i_3_n_0;
  wire eqOp_carry_i_4_n_0;
  wire [7:0]out;
  wire [4:0]plusOp;
  wire reset_IBUF;
  wire \timer_count[0]_i_1_n_0 ;
  wire \timer_count[0]_i_3_n_0 ;
  wire [11:0]timer_count_reg;
  wire \timer_count_reg[0]_i_2_n_0 ;
  wire \timer_count_reg[0]_i_2_n_4 ;
  wire \timer_count_reg[0]_i_2_n_5 ;
  wire \timer_count_reg[0]_i_2_n_6 ;
  wire \timer_count_reg[0]_i_2_n_7 ;
  wire \timer_count_reg[4]_i_1_n_0 ;
  wire \timer_count_reg[4]_i_1_n_4 ;
  wire \timer_count_reg[4]_i_1_n_5 ;
  wire \timer_count_reg[4]_i_1_n_6 ;
  wire \timer_count_reg[4]_i_1_n_7 ;
  wire \timer_count_reg[8]_i_1_n_4 ;
  wire \timer_count_reg[8]_i_1_n_5 ;
  wire \timer_count_reg[8]_i_1_n_6 ;
  wire \timer_count_reg[8]_i_1_n_7 ;
  wire [7:0]\tmp_reg[7] ;
  wire [2:0]NLW_eqOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_eqOp_carry_O_UNCONNECTED;
  wire [2:0]\NLW_timer_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \addr[0]_i_1 
       (.I0(addr_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr[1]_i_1 
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr[2]_i_1 
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr[3]_i_1 
       (.I0(addr_reg__0[1]),
        .I1(addr_reg__0[0]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr[4]_i_1 
       (.I0(addr_reg__0[2]),
        .I1(addr_reg__0[0]),
        .I2(addr_reg__0[1]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(plusOp[0]),
        .Q(addr_reg__0[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(plusOp[1]),
        .Q(addr_reg__0[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(plusOp[2]),
        .Q(addr_reg__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(plusOp[3]),
        .Q(addr_reg__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(plusOp[4]),
        .Q(addr_reg__0[4]),
        .R(reset_IBUF));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out0_carry_i_1
       (.I0(out[6]),
        .I1(\tmp_reg[7] [6]),
        .I2(\tmp_reg[7] [7]),
        .I3(out[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out0_carry_i_2
       (.I0(out[4]),
        .I1(\tmp_reg[7] [4]),
        .I2(\tmp_reg[7] [5]),
        .I3(out[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out0_carry_i_3
       (.I0(out[2]),
        .I1(\tmp_reg[7] [2]),
        .I2(\tmp_reg[7] [3]),
        .I3(out[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out0_carry_i_4
       (.I0(out[0]),
        .I1(\tmp_reg[7] [0]),
        .I2(\tmp_reg[7] [1]),
        .I3(out[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_5
       (.I0(out[6]),
        .I1(\tmp_reg[7] [6]),
        .I2(out[7]),
        .I3(\tmp_reg[7] [7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_6
       (.I0(out[4]),
        .I1(\tmp_reg[7] [4]),
        .I2(out[5]),
        .I3(\tmp_reg[7] [5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_7
       (.I0(out[2]),
        .I1(\tmp_reg[7] [2]),
        .I2(out[3]),
        .I3(\tmp_reg[7] [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_8
       (.I0(out[0]),
        .I1(\tmp_reg[7] [0]),
        .I2(out[1]),
        .I3(\tmp_reg[7] [1]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ready_i_1
       (.I0(data_ready_debug_OBUF),
        .I1(reset_IBUF),
        .I2(eqOp),
        .O(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_ready_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_ready_i_1_n_0),
        .Q(data_ready_debug_OBUF),
        .R(1'b0));
  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({eqOp,NLW_eqOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({eqOp_carry_i_1_n_0,eqOp_carry_i_2_n_0,eqOp_carry_i_3_n_0,eqOp_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_1
       (.I0(timer_count_reg[9]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(timer_count_reg[11]),
        .I4(Q[2]),
        .I5(timer_count_reg[10]),
        .O(eqOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h8200)) 
    eqOp_carry_i_2
       (.I0(timer_count_reg[6]),
        .I1(Q[0]),
        .I2(timer_count_reg[8]),
        .I3(timer_count_reg[7]),
        .O(eqOp_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    eqOp_carry_i_3
       (.I0(timer_count_reg[3]),
        .I1(timer_count_reg[5]),
        .I2(timer_count_reg[4]),
        .O(eqOp_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    eqOp_carry_i_4
       (.I0(timer_count_reg[0]),
        .I1(timer_count_reg[2]),
        .I2(timer_count_reg[1]),
        .O(eqOp_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF83E07C0)) 
    g0_b0
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC6C63938)) 
    g0_b1
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hD83627C8)) 
    g0_b2
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h644C9BB2)) 
    g0_b3
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2828D7D6)) 
    g0_b4
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB01A4FE4)) 
    g0_b5
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(out[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hC0063FF8)) 
    g0_b6
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(out[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    g0_b7
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(out[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \timer_count[0]_i_1 
       (.I0(reset_IBUF),
        .I1(eqOp),
        .O(\timer_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer_count[0]_i_3 
       (.I0(timer_count_reg[0]),
        .O(\timer_count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_7 ),
        .Q(timer_count_reg[0]),
        .R(\timer_count[0]_i_1_n_0 ));
  CARRY4 \timer_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\timer_count_reg[0]_i_2_n_0 ,\NLW_timer_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\timer_count_reg[0]_i_2_n_4 ,\timer_count_reg[0]_i_2_n_5 ,\timer_count_reg[0]_i_2_n_6 ,\timer_count_reg[0]_i_2_n_7 }),
        .S({timer_count_reg[3:1],\timer_count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_5 ),
        .Q(timer_count_reg[10]),
        .R(\timer_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_4 ),
        .Q(timer_count_reg[11]),
        .R(\timer_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_6 ),
        .Q(timer_count_reg[1]),
        .R(\timer_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_5 ),
        .Q(timer_count_reg[2]),
        .R(\timer_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_4 ),
        .Q(timer_count_reg[3]),
        .R(\timer_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_7 ),
        .Q(timer_count_reg[4]),
        .R(\timer_count[0]_i_1_n_0 ));
  CARRY4 \timer_count_reg[4]_i_1 
       (.CI(\timer_count_reg[0]_i_2_n_0 ),
        .CO({\timer_count_reg[4]_i_1_n_0 ,\NLW_timer_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_count_reg[4]_i_1_n_4 ,\timer_count_reg[4]_i_1_n_5 ,\timer_count_reg[4]_i_1_n_6 ,\timer_count_reg[4]_i_1_n_7 }),
        .S(timer_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_6 ),
        .Q(timer_count_reg[5]),
        .R(\timer_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_5 ),
        .Q(timer_count_reg[6]),
        .R(\timer_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_4 ),
        .Q(timer_count_reg[7]),
        .R(\timer_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_7 ),
        .Q(timer_count_reg[8]),
        .R(\timer_count[0]_i_1_n_0 ));
  CARRY4 \timer_count_reg[8]_i_1 
       (.CI(\timer_count_reg[4]_i_1_n_0 ),
        .CO(\NLW_timer_count_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_count_reg[8]_i_1_n_4 ,\timer_count_reg[8]_i_1_n_5 ,\timer_count_reg[8]_i_1_n_6 ,\timer_count_reg[8]_i_1_n_7 }),
        .S(timer_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_6 ),
        .Q(timer_count_reg[9]),
        .R(\timer_count[0]_i_1_n_0 ));
endmodule

module moving_average
   (S,
    Q,
    DI,
    \tmp_reg[7] ,
    D,
    data_ready_debug_OBUF,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output [3:0]S;
  output [7:0]Q;
  output [3:0]DI;
  input [7:0]\tmp_reg[7] ;
  input [7:0]D;
  input data_ready_debug_OBUF;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire [7:0]D;
  wire [3:0]DI;
  wire [7:0]\^Q ;
  wire [3:0]S;
  wire data_ready_debug_OBUF;
  wire \data_reg[0]_lopt_replica_1 ;
  wire \data_reg[1]_lopt_replica_1 ;
  wire \data_reg[2]_lopt_replica_1 ;
  wire \data_reg[3]_lopt_replica_1 ;
  wire \data_reg[4]_lopt_replica_1 ;
  wire \data_reg[5]_lopt_replica_1 ;
  wire \data_reg[6]_lopt_replica_1 ;
  wire \data_reg[7]_lopt_replica_1 ;
  wire [7:0]\tmp_reg[7] ;

  assign lopt = \data_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \data_reg[1]_lopt_replica_1 ;
  assign lopt_2 = \data_reg[2]_lopt_replica_1 ;
  assign lopt_3 = \data_reg[3]_lopt_replica_1 ;
  assign lopt_4 = \data_reg[4]_lopt_replica_1 ;
  assign lopt_5 = \data_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \data_reg[6]_lopt_replica_1 ;
  assign lopt_7 = \data_reg[7]_lopt_replica_1 ;
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out0_carry_i_1__0
       (.I0(\^Q [6]),
        .I1(\tmp_reg[7] [6]),
        .I2(\tmp_reg[7] [7]),
        .I3(\^Q [7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out0_carry_i_2__0
       (.I0(\^Q [4]),
        .I1(\tmp_reg[7] [4]),
        .I2(\tmp_reg[7] [5]),
        .I3(\^Q [5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out0_carry_i_3__0
       (.I0(\^Q [2]),
        .I1(\tmp_reg[7] [2]),
        .I2(\tmp_reg[7] [3]),
        .I3(\^Q [3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out0_carry_i_4__0
       (.I0(\^Q [0]),
        .I1(\tmp_reg[7] [0]),
        .I2(\tmp_reg[7] [1]),
        .I3(\^Q [1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_5__0
       (.I0(\^Q [6]),
        .I1(\tmp_reg[7] [6]),
        .I2(\^Q [7]),
        .I3(\tmp_reg[7] [7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_6__0
       (.I0(\^Q [4]),
        .I1(\tmp_reg[7] [4]),
        .I2(\^Q [5]),
        .I3(\tmp_reg[7] [5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_7__0
       (.I0(\^Q [2]),
        .I1(\tmp_reg[7] [2]),
        .I2(\^Q [3]),
        .I3(\tmp_reg[7] [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_8__0
       (.I0(\^Q [0]),
        .I1(\tmp_reg[7] [0]),
        .I2(\^Q [1]),
        .I3(\tmp_reg[7] [1]),
        .O(S[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[0] 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[0]),
        .Q(\^Q [0]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[0]_lopt_replica 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[0]),
        .Q(\data_reg[0]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[1] 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[1]),
        .Q(\^Q [1]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[1]_lopt_replica 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[1]),
        .Q(\data_reg[1]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[2] 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[2]),
        .Q(\^Q [2]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[2]_lopt_replica 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[2]),
        .Q(\data_reg[2]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[3] 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[3]),
        .Q(\^Q [3]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[3]_lopt_replica 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[3]),
        .Q(\data_reg[3]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[4] 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[4]),
        .Q(\^Q [4]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[4]_lopt_replica 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[4]),
        .Q(\data_reg[4]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[5] 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[5]),
        .Q(\^Q [5]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[5]_lopt_replica 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[5]),
        .Q(\data_reg[5]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[6] 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[6]),
        .Q(\^Q [6]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[6]_lopt_replica 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[6]),
        .Q(\data_reg[6]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[7] 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[7]),
        .Q(\^Q [7]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[7]_lopt_replica 
       (.C(data_ready_debug_OBUF),
        .CE(1'b1),
        .D(D[7]),
        .Q(\data_reg[7]_lopt_replica_1 ),
        .R(1'b0));
endmodule

module pwm_8_1
   (pwm_out_fir_OBUF,
    reset_IBUF,
    clk_IBUF_BUFG,
    DI,
    S);
  output pwm_out_fir_OBUF;
  input reset_IBUF;
  input clk_IBUF_BUFG;
  input [3:0]DI;
  input [3:0]S;

  wire [3:0]DI;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire pwm_out_fir_OBUF;
  wire reset_IBUF;

  comparator_8_1_1 comparator_8_1_component
       (.DI(DI),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwm_out_fir_OBUF(pwm_out_fir_OBUF),
        .reset_IBUF(reset_IBUF));
endmodule

(* ORIG_REF_NAME = "pwm_8_1" *) 
module pwm_8_1_0
   (pwm_out_sine_OBUF,
    Q,
    reset_IBUF,
    clk_IBUF_BUFG,
    DI,
    S);
  output pwm_out_sine_OBUF;
  output [7:0]Q;
  input reset_IBUF;
  input clk_IBUF_BUFG;
  input [3:0]DI;
  input [3:0]S;

  wire [3:0]DI;
  wire [7:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire pwm_out_sine_OBUF;
  wire reset_IBUF;

  comparator_8_1 comparator_8_1_component
       (.DI(DI),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwm_out_sine_OBUF(pwm_out_sine_OBUF),
        .reset_IBUF(reset_IBUF));
  counter_8 counter_8_component
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF));
endmodule

(* ECO_CHECKSUM = "f441f513" *) 
(* NotValidForBitStream *)
module sine_wave_gen
   (clk,
    reset,
    dip_sw0_in,
    dip_sw1_in,
    dip_sw2_in,
    dip_sw3_in,
    dip_sw4_in,
    dip_sw5_in,
    dip_sw6_in,
    dip_sw7_in,
    pwm_out_sine,
    pwm_out_fir,
    sine_debug_rom,
    sine_debug_fir,
    data_ready_debug);
  input clk;
  input reset;
  input dip_sw0_in;
  input dip_sw1_in;
  input dip_sw2_in;
  input dip_sw3_in;
  input dip_sw4_in;
  input dip_sw5_in;
  input dip_sw6_in;
  input dip_sw7_in;
  output pwm_out_sine;
  output pwm_out_fir;
  output [7:0]sine_debug_rom;
  output [7:0]sine_debug_fir;
  output data_ready_debug;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]\counter_8_component/tmp_reg ;
  wire data_ready_debug;
  wire data_ready_debug_OBUF;
  wire dip_sw4_in;
  wire dip_sw4_in_IBUF;
  wire dip_sw5_in;
  wire dip_sw5_in_IBUF;
  wire dip_sw6_in;
  wire dip_sw6_in_IBUF;
  wire dip_sw7_in;
  wire dip_sw7_in_IBUF;
  wire frequency_select_component_n_1;
  wire frequency_select_component_n_13;
  wire frequency_select_component_n_14;
  wire frequency_select_component_n_15;
  wire frequency_select_component_n_16;
  wire frequency_select_component_n_2;
  wire frequency_select_component_n_3;
  wire frequency_select_component_n_4;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire moving_average_component_n_0;
  wire moving_average_component_n_1;
  wire moving_average_component_n_12;
  wire moving_average_component_n_13;
  wire moving_average_component_n_14;
  wire moving_average_component_n_15;
  wire moving_average_component_n_2;
  wire moving_average_component_n_3;
  wire pwm_out_fir;
  wire pwm_out_fir_OBUF;
  wire pwm_out_sine;
  wire pwm_out_sine_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [7:0]sine_debug_fir;
  wire [7:0]sine_debug_rom;
  wire [7:0]sine_debug_rom_OBUF;
  wire [7:4]sw_conn;
  wire [7:0]NLW_moving_average_component_Q_UNCONNECTED;

initial begin
 $sdf_annotate("sine_wave_gen_test_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF data_ready_debug_OBUF_inst
       (.I(data_ready_debug_OBUF),
        .O(data_ready_debug));
  IBUF dip_sw4_in_IBUF_inst
       (.I(dip_sw4_in),
        .O(dip_sw4_in_IBUF));
  IBUF dip_sw5_in_IBUF_inst
       (.I(dip_sw5_in),
        .O(dip_sw5_in_IBUF));
  IBUF dip_sw6_in_IBUF_inst
       (.I(dip_sw6_in),
        .O(dip_sw6_in_IBUF));
  IBUF dip_sw7_in_IBUF_inst
       (.I(dip_sw7_in),
        .O(dip_sw7_in_IBUF));
  dip_sw_8 dip_sw_8_component
       (.D({dip_sw7_in_IBUF,dip_sw6_in_IBUF,dip_sw5_in_IBUF,dip_sw4_in_IBUF}),
        .Q(sw_conn),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  frequency_select frequency_select_component
       (.DI({frequency_select_component_n_13,frequency_select_component_n_14,frequency_select_component_n_15,frequency_select_component_n_16}),
        .Q(sw_conn),
        .S({frequency_select_component_n_1,frequency_select_component_n_2,frequency_select_component_n_3,frequency_select_component_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_ready_debug_OBUF(data_ready_debug_OBUF),
        .out(sine_debug_rom_OBUF),
        .reset_IBUF(reset_IBUF),
        .\tmp_reg[7] (\counter_8_component/tmp_reg ));
  moving_average moving_average_component
       (.D(sine_debug_rom_OBUF),
        .DI({moving_average_component_n_12,moving_average_component_n_13,moving_average_component_n_14,moving_average_component_n_15}),
        .Q(NLW_moving_average_component_Q_UNCONNECTED[7:0]),
        .S({moving_average_component_n_0,moving_average_component_n_1,moving_average_component_n_2,moving_average_component_n_3}),
        .data_ready_debug_OBUF(data_ready_debug_OBUF),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .\tmp_reg[7] (\counter_8_component/tmp_reg ));
  pwm_8_1 pwm_8_1_component_fir
       (.DI({moving_average_component_n_12,moving_average_component_n_13,moving_average_component_n_14,moving_average_component_n_15}),
        .S({moving_average_component_n_0,moving_average_component_n_1,moving_average_component_n_2,moving_average_component_n_3}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwm_out_fir_OBUF(pwm_out_fir_OBUF),
        .reset_IBUF(reset_IBUF));
  pwm_8_1_0 pwm_8_1_component_sine
       (.DI({frequency_select_component_n_13,frequency_select_component_n_14,frequency_select_component_n_15,frequency_select_component_n_16}),
        .Q(\counter_8_component/tmp_reg ),
        .S({frequency_select_component_n_1,frequency_select_component_n_2,frequency_select_component_n_3,frequency_select_component_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwm_out_sine_OBUF(pwm_out_sine_OBUF),
        .reset_IBUF(reset_IBUF));
  OBUF pwm_out_fir_OBUF_inst
       (.I(pwm_out_fir_OBUF),
        .O(pwm_out_fir));
  OBUF pwm_out_sine_OBUF_inst
       (.I(pwm_out_sine_OBUF),
        .O(pwm_out_sine));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \sine_debug_fir_OBUF[0]_inst 
       (.I(lopt),
        .O(sine_debug_fir[0]));
  OBUF \sine_debug_fir_OBUF[1]_inst 
       (.I(lopt_1),
        .O(sine_debug_fir[1]));
  OBUF \sine_debug_fir_OBUF[2]_inst 
       (.I(lopt_2),
        .O(sine_debug_fir[2]));
  OBUF \sine_debug_fir_OBUF[3]_inst 
       (.I(lopt_3),
        .O(sine_debug_fir[3]));
  OBUF \sine_debug_fir_OBUF[4]_inst 
       (.I(lopt_4),
        .O(sine_debug_fir[4]));
  OBUF \sine_debug_fir_OBUF[5]_inst 
       (.I(lopt_5),
        .O(sine_debug_fir[5]));
  OBUF \sine_debug_fir_OBUF[6]_inst 
       (.I(lopt_6),
        .O(sine_debug_fir[6]));
  OBUF \sine_debug_fir_OBUF[7]_inst 
       (.I(lopt_7),
        .O(sine_debug_fir[7]));
  OBUF \sine_debug_rom_OBUF[0]_inst 
       (.I(sine_debug_rom_OBUF[0]),
        .O(sine_debug_rom[0]));
  OBUF \sine_debug_rom_OBUF[1]_inst 
       (.I(sine_debug_rom_OBUF[1]),
        .O(sine_debug_rom[1]));
  OBUF \sine_debug_rom_OBUF[2]_inst 
       (.I(sine_debug_rom_OBUF[2]),
        .O(sine_debug_rom[2]));
  OBUF \sine_debug_rom_OBUF[3]_inst 
       (.I(sine_debug_rom_OBUF[3]),
        .O(sine_debug_rom[3]));
  OBUF \sine_debug_rom_OBUF[4]_inst 
       (.I(sine_debug_rom_OBUF[4]),
        .O(sine_debug_rom[4]));
  OBUF \sine_debug_rom_OBUF[5]_inst 
       (.I(sine_debug_rom_OBUF[5]),
        .O(sine_debug_rom[5]));
  OBUF \sine_debug_rom_OBUF[6]_inst 
       (.I(sine_debug_rom_OBUF[6]),
        .O(sine_debug_rom[6]));
  OBUF \sine_debug_rom_OBUF[7]_inst 
       (.I(sine_debug_rom_OBUF[7]),
        .O(sine_debug_rom[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
