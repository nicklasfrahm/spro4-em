// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Apr  4 09:28:58 2018
// Host        : Cloud-Nine running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/MoJo/Desktop/vivado
//               projects/spro4-em/vivado/sine_generator/sine_generator.sim/sim_1/impl/timing/xsim/sine_wave_gen_test_time_impl.v}
// Design      : sine_wave_gen
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module comparator_8_1
   (pwm_out_OBUF,
    SR,
    clk_IBUF_BUFG,
    DI,
    \tmp_reg[7] );
  output pwm_out_OBUF;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [3:0]DI;
  input [3:0]\tmp_reg[7] ;

  wire [3:0]DI;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire comp_out0_carry_n_0;
  wire pwm_out_OBUF;
  wire [3:0]\tmp_reg[7] ;
  wire [2:0]NLW_comp_out0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_comp_out0_carry_O_UNCONNECTED;

  CARRY4 comp_out0_carry
       (.CI(1'b0),
        .CO({comp_out0_carry_n_0,NLW_comp_out0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(NLW_comp_out0_carry_O_UNCONNECTED[3:0]),
        .S(\tmp_reg[7] ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    comp_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comp_out0_carry_n_0),
        .Q(pwm_out_OBUF),
        .R(SR));
endmodule

module counter_8
   (tmp_reg,
    SR,
    clk_IBUF_BUFG);
  output [7:0]tmp_reg;
  input [0:0]SR;
  input clk_IBUF_BUFG;

  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [7:1]plusOp__0;
  wire \tmp[0]_i_1_n_0 ;
  wire \tmp[7]_i_2_n_0 ;
  wire [7:0]tmp_reg;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tmp[0]_i_1 
       (.I0(tmp_reg[0]),
        .O(\tmp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[1]_i_1 
       (.I0(tmp_reg[0]),
        .I1(tmp_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp[2]_i_1 
       (.I0(tmp_reg[1]),
        .I1(tmp_reg[0]),
        .I2(tmp_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tmp[3]_i_1 
       (.I0(tmp_reg[2]),
        .I1(tmp_reg[0]),
        .I2(tmp_reg[1]),
        .I3(tmp_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tmp[4]_i_1 
       (.I0(tmp_reg[3]),
        .I1(tmp_reg[1]),
        .I2(tmp_reg[0]),
        .I3(tmp_reg[2]),
        .I4(tmp_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \tmp[5]_i_1 
       (.I0(tmp_reg[4]),
        .I1(tmp_reg[2]),
        .I2(tmp_reg[0]),
        .I3(tmp_reg[1]),
        .I4(tmp_reg[3]),
        .I5(tmp_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tmp[6]_i_1 
       (.I0(\tmp[7]_i_2_n_0 ),
        .I1(tmp_reg[4]),
        .I2(tmp_reg[5]),
        .I3(tmp_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tmp[7]_i_1 
       (.I0(\tmp[7]_i_2_n_0 ),
        .I1(tmp_reg[6]),
        .I2(tmp_reg[5]),
        .I3(tmp_reg[4]),
        .I4(tmp_reg[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \tmp[7]_i_2 
       (.I0(tmp_reg[2]),
        .I1(tmp_reg[0]),
        .I2(tmp_reg[1]),
        .I3(tmp_reg[3]),
        .O(\tmp[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp[0]_i_1_n_0 ),
        .Q(tmp_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(tmp_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(tmp_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(tmp_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(tmp_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(tmp_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[6]),
        .Q(tmp_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__0[7]),
        .Q(tmp_reg[7]),
        .R(SR));
endmodule

module dip_sw_8
   (\timer_count_reg[11] ,
    S,
    Q,
    SR,
    E,
    out,
    D,
    clk_IBUF_BUFG);
  output \timer_count_reg[11] ;
  output [1:0]S;
  output [1:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input [5:0]out;
  input [7:0]D;
  input clk_IBUF_BUFG;

  wire [7:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [5:0]out;
  wire [7:2]sw_conn;
  wire \timer_count_reg[11] ;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(sw_conn[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(sw_conn[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(sw_conn[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(sw_conn[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(sw_conn[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(sw_conn[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_1
       (.I0(sw_conn[7]),
        .I1(out[5]),
        .I2(sw_conn[6]),
        .I3(out[4]),
        .I4(out[3]),
        .I5(sw_conn[5]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_2
       (.I0(sw_conn[4]),
        .I1(out[2]),
        .I2(sw_conn[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(sw_conn[2]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \timer_count[0]_i_1 
       (.I0(SR),
        .I1(E),
        .O(\timer_count_reg[11] ));
endmodule

module frequency_select
   (E,
    out,
    DI,
    comp_out_reg,
    comp_out_reg_0,
    S,
    Q,
    tmp_reg,
    \dip_sw_out_reg[7] ,
    clk_IBUF_BUFG,
    SR);
  output [0:0]E;
  output [5:0]out;
  output [3:0]DI;
  output [7:0]comp_out_reg;
  output [3:0]comp_out_reg_0;
  input [1:0]S;
  input [1:0]Q;
  input [7:0]tmp_reg;
  input \dip_sw_out_reg[7] ;
  input clk_IBUF_BUFG;
  input [0:0]SR;

  wire [3:0]DI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [4:0]addr_reg__0;
  wire clk_IBUF_BUFG;
  wire [7:0]comp_out_reg;
  wire [3:0]comp_out_reg_0;
  wire \dip_sw_out_reg[7] ;
  wire eqOp_carry_i_3_n_0;
  wire eqOp_carry_i_4_n_0;
  wire [5:0]out;
  wire [4:0]plusOp;
  wire \timer_count[0]_i_3_n_0 ;
  wire [5:0]timer_count_reg;
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
  wire [7:0]tmp_reg;
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
       (.I0(addr_reg__0[1]),
        .I1(addr_reg__0[0]),
        .I2(addr_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr[3]_i_1 
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr[4]_i_1 
       (.I0(addr_reg__0[2]),
        .I1(addr_reg__0[3]),
        .I2(addr_reg__0[0]),
        .I3(addr_reg__0[1]),
        .I4(addr_reg__0[4]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(plusOp[0]),
        .Q(addr_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(plusOp[1]),
        .Q(addr_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(plusOp[2]),
        .Q(addr_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(plusOp[3]),
        .Q(addr_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(plusOp[4]),
        .Q(addr_reg__0[4]),
        .R(SR));
  LUT4 #(
    .INIT(16'h22B2)) 
    comp_out0_carry_i_1
       (.I0(comp_out_reg[7]),
        .I1(tmp_reg[7]),
        .I2(comp_out_reg[6]),
        .I3(tmp_reg[6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    comp_out0_carry_i_2
       (.I0(comp_out_reg[5]),
        .I1(tmp_reg[5]),
        .I2(comp_out_reg[4]),
        .I3(tmp_reg[4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    comp_out0_carry_i_3
       (.I0(comp_out_reg[3]),
        .I1(tmp_reg[3]),
        .I2(comp_out_reg[2]),
        .I3(tmp_reg[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    comp_out0_carry_i_4
       (.I0(comp_out_reg[1]),
        .I1(tmp_reg[1]),
        .I2(comp_out_reg[0]),
        .I3(tmp_reg[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_5
       (.I0(comp_out_reg[7]),
        .I1(tmp_reg[7]),
        .I2(comp_out_reg[6]),
        .I3(tmp_reg[6]),
        .O(comp_out_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_6
       (.I0(comp_out_reg[5]),
        .I1(tmp_reg[5]),
        .I2(comp_out_reg[4]),
        .I3(tmp_reg[4]),
        .O(comp_out_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_7
       (.I0(comp_out_reg[3]),
        .I1(tmp_reg[3]),
        .I2(comp_out_reg[2]),
        .I3(tmp_reg[2]),
        .O(comp_out_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out0_carry_i_8
       (.I0(comp_out_reg[1]),
        .I1(tmp_reg[1]),
        .I2(comp_out_reg[0]),
        .I3(tmp_reg[0]),
        .O(comp_out_reg_0[0]));
  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({E,NLW_eqOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({S,eqOp_carry_i_3_n_0,eqOp_carry_i_4_n_0}));
  LUT5 #(
    .INIT(32'h00009009)) 
    eqOp_carry_i_3
       (.I0(Q[1]),
        .I1(timer_count_reg[5]),
        .I2(Q[0]),
        .I3(timer_count_reg[4]),
        .I4(timer_count_reg[3]),
        .O(eqOp_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    eqOp_carry_i_4
       (.I0(timer_count_reg[2]),
        .I1(timer_count_reg[1]),
        .I2(timer_count_reg[0]),
        .O(eqOp_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF83E07C0)) 
    g0_b0
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(comp_out_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC6C63938)) 
    g0_b1
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(comp_out_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hD83627C8)) 
    g0_b2
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(comp_out_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h644C9BB2)) 
    g0_b3
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(comp_out_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2828D7D6)) 
    g0_b4
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(comp_out_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB01A4FE4)) 
    g0_b5
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(comp_out_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hC0063FF8)) 
    g0_b6
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(comp_out_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    g0_b7
       (.I0(addr_reg__0[0]),
        .I1(addr_reg__0[1]),
        .I2(addr_reg__0[2]),
        .I3(addr_reg__0[3]),
        .I4(addr_reg__0[4]),
        .O(comp_out_reg[7]));
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
        .R(\dip_sw_out_reg[7] ));
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
        .Q(out[4]),
        .R(\dip_sw_out_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_4 ),
        .Q(out[5]),
        .R(\dip_sw_out_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_6 ),
        .Q(timer_count_reg[1]),
        .R(\dip_sw_out_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_5 ),
        .Q(timer_count_reg[2]),
        .R(\dip_sw_out_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_4 ),
        .Q(timer_count_reg[3]),
        .R(\dip_sw_out_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_7 ),
        .Q(timer_count_reg[4]),
        .R(\dip_sw_out_reg[7] ));
  CARRY4 \timer_count_reg[4]_i_1 
       (.CI(\timer_count_reg[0]_i_2_n_0 ),
        .CO({\timer_count_reg[4]_i_1_n_0 ,\NLW_timer_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_count_reg[4]_i_1_n_4 ,\timer_count_reg[4]_i_1_n_5 ,\timer_count_reg[4]_i_1_n_6 ,\timer_count_reg[4]_i_1_n_7 }),
        .S({out[1:0],timer_count_reg[5:4]}));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_6 ),
        .Q(timer_count_reg[5]),
        .R(\dip_sw_out_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_5 ),
        .Q(out[0]),
        .R(\dip_sw_out_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_4 ),
        .Q(out[1]),
        .R(\dip_sw_out_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_7 ),
        .Q(out[2]),
        .R(\dip_sw_out_reg[7] ));
  CARRY4 \timer_count_reg[8]_i_1 
       (.CI(\timer_count_reg[4]_i_1_n_0 ),
        .CO(\NLW_timer_count_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_count_reg[8]_i_1_n_4 ,\timer_count_reg[8]_i_1_n_5 ,\timer_count_reg[8]_i_1_n_6 ,\timer_count_reg[8]_i_1_n_7 }),
        .S(out[5:2]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_6 ),
        .Q(out[3]),
        .R(\dip_sw_out_reg[7] ));
endmodule

module pwm_8_1
   (pwm_out_OBUF,
    tmp_reg,
    SR,
    clk_IBUF_BUFG,
    DI,
    \tmp_reg[7] );
  output pwm_out_OBUF;
  output [7:0]tmp_reg;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [3:0]DI;
  input [3:0]\tmp_reg[7] ;

  wire [3:0]DI;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire pwm_out_OBUF;
  wire [7:0]tmp_reg;
  wire [3:0]\tmp_reg[7] ;

  comparator_8_1 comparator_8_1_component
       (.DI(DI),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwm_out_OBUF(pwm_out_OBUF),
        .\tmp_reg[7] (\tmp_reg[7] ));
  counter_8 counter_8_component
       (.SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .tmp_reg(tmp_reg));
endmodule

(* ECO_CHECKSUM = "b85ce252" *) 
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
    sine_debug,
    pwm_out);
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
  output [7:0]sine_debug;
  output pwm_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]\counter_8_component/tmp_reg ;
  wire dip_sw0_in;
  wire dip_sw0_in_IBUF;
  wire dip_sw1_in;
  wire dip_sw1_in_IBUF;
  wire dip_sw2_in;
  wire dip_sw2_in_IBUF;
  wire dip_sw3_in;
  wire dip_sw3_in_IBUF;
  wire dip_sw4_in;
  wire dip_sw4_in_IBUF;
  wire dip_sw5_in;
  wire dip_sw5_in_IBUF;
  wire dip_sw6_in;
  wire dip_sw6_in_IBUF;
  wire dip_sw7_in;
  wire dip_sw7_in_IBUF;
  wire dip_sw_8_component_n_0;
  wire dip_sw_8_component_n_1;
  wire dip_sw_8_component_n_2;
  wire eqOp__3;
  wire frequency_select_component_n_10;
  wire frequency_select_component_n_19;
  wire frequency_select_component_n_20;
  wire frequency_select_component_n_21;
  wire frequency_select_component_n_22;
  wire frequency_select_component_n_7;
  wire frequency_select_component_n_8;
  wire frequency_select_component_n_9;
  wire pwm_out;
  wire pwm_out_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [7:0]sine_debug;
  wire [7:0]sine_debug_OBUF;
  wire [1:0]sw_conn;
  wire [11:6]timer_count_reg;

initial begin
 $sdf_annotate("sine_wave_gen_test_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF dip_sw0_in_IBUF_inst
       (.I(dip_sw0_in),
        .O(dip_sw0_in_IBUF));
  IBUF dip_sw1_in_IBUF_inst
       (.I(dip_sw1_in),
        .O(dip_sw1_in_IBUF));
  IBUF dip_sw2_in_IBUF_inst
       (.I(dip_sw2_in),
        .O(dip_sw2_in_IBUF));
  IBUF dip_sw3_in_IBUF_inst
       (.I(dip_sw3_in),
        .O(dip_sw3_in_IBUF));
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
       (.D({dip_sw7_in_IBUF,dip_sw6_in_IBUF,dip_sw5_in_IBUF,dip_sw4_in_IBUF,dip_sw3_in_IBUF,dip_sw2_in_IBUF,dip_sw1_in_IBUF,dip_sw0_in_IBUF}),
        .E(eqOp__3),
        .Q(sw_conn),
        .S({dip_sw_8_component_n_1,dip_sw_8_component_n_2}),
        .SR(reset_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(timer_count_reg),
        .\timer_count_reg[11] (dip_sw_8_component_n_0));
  frequency_select frequency_select_component
       (.DI({frequency_select_component_n_7,frequency_select_component_n_8,frequency_select_component_n_9,frequency_select_component_n_10}),
        .E(eqOp__3),
        .Q(sw_conn),
        .S({dip_sw_8_component_n_1,dip_sw_8_component_n_2}),
        .SR(reset_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_out_reg(sine_debug_OBUF),
        .comp_out_reg_0({frequency_select_component_n_19,frequency_select_component_n_20,frequency_select_component_n_21,frequency_select_component_n_22}),
        .\dip_sw_out_reg[7] (dip_sw_8_component_n_0),
        .out(timer_count_reg),
        .tmp_reg(\counter_8_component/tmp_reg ));
  pwm_8_1 pwm_8_1_component
       (.DI({frequency_select_component_n_7,frequency_select_component_n_8,frequency_select_component_n_9,frequency_select_component_n_10}),
        .SR(reset_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwm_out_OBUF(pwm_out_OBUF),
        .tmp_reg(\counter_8_component/tmp_reg ),
        .\tmp_reg[7] ({frequency_select_component_n_19,frequency_select_component_n_20,frequency_select_component_n_21,frequency_select_component_n_22}));
  OBUF pwm_out_OBUF_inst
       (.I(pwm_out_OBUF),
        .O(pwm_out));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \sine_debug_OBUF[0]_inst 
       (.I(sine_debug_OBUF[0]),
        .O(sine_debug[0]));
  OBUF \sine_debug_OBUF[1]_inst 
       (.I(sine_debug_OBUF[1]),
        .O(sine_debug[1]));
  OBUF \sine_debug_OBUF[2]_inst 
       (.I(sine_debug_OBUF[2]),
        .O(sine_debug[2]));
  OBUF \sine_debug_OBUF[3]_inst 
       (.I(sine_debug_OBUF[3]),
        .O(sine_debug[3]));
  OBUF \sine_debug_OBUF[4]_inst 
       (.I(sine_debug_OBUF[4]),
        .O(sine_debug[4]));
  OBUF \sine_debug_OBUF[5]_inst 
       (.I(sine_debug_OBUF[5]),
        .O(sine_debug[5]));
  OBUF \sine_debug_OBUF[6]_inst 
       (.I(sine_debug_OBUF[6]),
        .O(sine_debug[6]));
  OBUF \sine_debug_OBUF[7]_inst 
       (.I(sine_debug_OBUF[7]),
        .O(sine_debug[7]));
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
