// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Mar 19 17:50:44 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/risc_cpu_8/risc_cpu_8.sim/tests/impl/timing/xsim/risc_cpu_8_test_time_impl.v}
// Design      : risc_cpu_8
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module LDCP_UNIQ_BASE_
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD43
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD44
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD45
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD46
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD47
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD48
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD49
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module datapath_8
   (carry_out235_out,
    data_out_OBUF,
    \reg_out_reg[7] ,
    carry_out2__1,
    carry_out4__1,
    carry_out6__1,
    carry_out629_out,
    carry_out432_out,
    Q,
    D,
    data_in_sel_conn,
    data_in_IBUF,
    \FSM_onehot_state_current_reg[4] ,
    carry_in_conn,
    \FSM_onehot_state_current_reg[3] ,
    SR,
    E,
    CLK,
    \FSM_onehot_state_current_reg[4]_0 ,
    \FSM_onehot_state_current_reg[4]_1 ,
    \FSM_onehot_state_current_reg[2] );
  output carry_out235_out;
  output [7:0]data_out_OBUF;
  output [3:0]\reg_out_reg[7] ;
  output carry_out2__1;
  output carry_out4__1;
  output carry_out6__1;
  output carry_out629_out;
  output carry_out432_out;
  input [1:0]Q;
  input [3:0]D;
  input data_in_sel_conn;
  input [3:0]data_in_IBUF;
  input [1:0]\FSM_onehot_state_current_reg[4] ;
  input carry_in_conn;
  input [1:0]\FSM_onehot_state_current_reg[3] ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;
  input [0:0]\FSM_onehot_state_current_reg[4]_0 ;
  input [0:0]\FSM_onehot_state_current_reg[4]_1 ;
  input [0:0]\FSM_onehot_state_current_reg[2] ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_state_current_reg[2] ;
  wire [1:0]\FSM_onehot_state_current_reg[3] ;
  wire [1:0]\FSM_onehot_state_current_reg[4] ;
  wire [0:0]\FSM_onehot_state_current_reg[4]_0 ;
  wire [0:0]\FSM_onehot_state_current_reg[4]_1 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire carry_in_conn;
  wire carry_out235_out;
  wire carry_out2__1;
  wire carry_out432_out;
  wire carry_out4__1;
  wire carry_out629_out;
  wire carry_out6__1;
  wire [3:0]data_in_IBUF;
  wire data_in_sel_conn;
  wire [7:0]data_out_OBUF;
  wire [3:0]\reg_out_reg[7] ;

  memory_8_4 memory_8_4_component
       (.CLK(CLK),
        .D(D),
        .E(E),
        .\FSM_onehot_state_current_reg[2] (\FSM_onehot_state_current_reg[2] ),
        .\FSM_onehot_state_current_reg[3] (\FSM_onehot_state_current_reg[3] ),
        .\FSM_onehot_state_current_reg[4] (\FSM_onehot_state_current_reg[4] ),
        .\FSM_onehot_state_current_reg[4]_0 (\FSM_onehot_state_current_reg[4]_0 ),
        .\FSM_onehot_state_current_reg[4]_1 (\FSM_onehot_state_current_reg[4]_1 ),
        .Q(Q),
        .SR(SR),
        .carry_in_conn(carry_in_conn),
        .carry_out235_out(carry_out235_out),
        .carry_out2__1(carry_out2__1),
        .carry_out432_out(carry_out432_out),
        .carry_out4__1(carry_out4__1),
        .carry_out629_out(carry_out629_out),
        .carry_out6__1(carry_out6__1),
        .data_in_IBUF(data_in_IBUF),
        .data_in_sel_conn(data_in_sel_conn),
        .data_out_OBUF(data_out_OBUF),
        .\reg_out_reg[7] (\reg_out_reg[7] ));
endmodule

module memory_8_4
   (carry_out235_out,
    data_out_OBUF,
    \reg_out_reg[7] ,
    carry_out2__1,
    carry_out4__1,
    carry_out6__1,
    carry_out629_out,
    carry_out432_out,
    Q,
    data_in_sel_conn,
    data_in_IBUF,
    \FSM_onehot_state_current_reg[4] ,
    carry_in_conn,
    \FSM_onehot_state_current_reg[3] ,
    SR,
    E,
    D,
    CLK,
    \FSM_onehot_state_current_reg[4]_0 ,
    \FSM_onehot_state_current_reg[4]_1 ,
    \FSM_onehot_state_current_reg[2] );
  output carry_out235_out;
  output [7:0]data_out_OBUF;
  output [3:0]\reg_out_reg[7] ;
  output carry_out2__1;
  output carry_out4__1;
  output carry_out6__1;
  output carry_out629_out;
  output carry_out432_out;
  input [1:0]Q;
  input data_in_sel_conn;
  input [3:0]data_in_IBUF;
  input [1:0]\FSM_onehot_state_current_reg[4] ;
  input carry_in_conn;
  input [1:0]\FSM_onehot_state_current_reg[3] ;
  input [0:0]SR;
  input [0:0]E;
  input [3:0]D;
  input CLK;
  input [0:0]\FSM_onehot_state_current_reg[4]_0 ;
  input [0:0]\FSM_onehot_state_current_reg[4]_1 ;
  input [0:0]\FSM_onehot_state_current_reg[2] ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_state_current_reg[2] ;
  wire [1:0]\FSM_onehot_state_current_reg[3] ;
  wire [1:0]\FSM_onehot_state_current_reg[4] ;
  wire [0:0]\FSM_onehot_state_current_reg[4]_0 ;
  wire [0:0]\FSM_onehot_state_current_reg[4]_1 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire carry_in_conn;
  wire carry_out235_out;
  wire carry_out2__1;
  wire carry_out432_out;
  wire carry_out4__1;
  wire carry_out629_out;
  wire carry_out6__1;
  wire [3:0]data_in_IBUF;
  wire data_in_sel_conn;
  wire [7:0]data_out_OBUF;
  wire [4:1]mux_out;
  wire [7:0]reg_out;
  wire [3:0]\reg_out_reg[7] ;
  wire register_8_b_n_0;
  wire register_8_b_n_1;
  wire register_8_b_n_2;
  wire register_8_b_n_3;
  wire register_8_b_n_4;
  wire register_8_b_n_5;
  wire register_8_b_n_6;
  wire register_8_b_n_7;
  wire register_8_d_n_0;
  wire register_8_d_n_1;
  wire register_8_d_n_2;
  wire register_8_d_n_3;
  wire register_8_d_n_4;
  wire register_8_d_n_5;
  wire register_8_d_n_6;
  wire register_8_d_n_7;

  register_8 register_8_a
       (.CLK(CLK),
        .D({D[3:1],mux_out,D[0]}),
        .\FSM_onehot_state_current_reg[2] (\FSM_onehot_state_current_reg[2] ),
        .Q(reg_out),
        .SR(SR));
  register_8_0 register_8_b
       (.CLK(CLK),
        .D({D[3:1],mux_out,D[0]}),
        .\FSM_onehot_state_current_reg[4] (\FSM_onehot_state_current_reg[4]_1 ),
        .Q({register_8_b_n_0,register_8_b_n_1,register_8_b_n_2,register_8_b_n_3,register_8_b_n_4,register_8_b_n_5,register_8_b_n_6,register_8_b_n_7}),
        .SR(SR));
  register_8_1 register_8_c
       (.CLK(CLK),
        .D(mux_out),
        .\FSM_onehot_state_current_reg[2] (D),
        .\FSM_onehot_state_current_reg[3] (Q),
        .\FSM_onehot_state_current_reg[3]_0 (\FSM_onehot_state_current_reg[3] ),
        .\FSM_onehot_state_current_reg[4] (\FSM_onehot_state_current_reg[4] ),
        .\FSM_onehot_state_current_reg[4]_0 (\FSM_onehot_state_current_reg[4]_0 ),
        .Q({register_8_d_n_0,register_8_d_n_1,register_8_d_n_2,register_8_d_n_3,register_8_d_n_4,register_8_d_n_5,register_8_d_n_6,register_8_d_n_7}),
        .SR(SR),
        .carry_in_conn(carry_in_conn),
        .carry_out235_out(carry_out235_out),
        .carry_out2__1(carry_out2__1),
        .carry_out432_out(carry_out432_out),
        .carry_out4__1(carry_out4__1),
        .carry_out629_out(carry_out629_out),
        .carry_out6__1(carry_out6__1),
        .data_in_IBUF(data_in_IBUF),
        .data_in_sel_conn(data_in_sel_conn),
        .data_out_OBUF(data_out_OBUF),
        .\reg_out_reg[7]_0 (\reg_out_reg[7] ),
        .\reg_out_reg[7]_1 (reg_out),
        .\reg_out_reg[7]_2 ({register_8_b_n_0,register_8_b_n_1,register_8_b_n_2,register_8_b_n_3,register_8_b_n_4,register_8_b_n_5,register_8_b_n_6,register_8_b_n_7}));
  register_8_2 register_8_d
       (.CLK(CLK),
        .D({D[3:1],mux_out,D[0]}),
        .E(E),
        .Q({register_8_d_n_0,register_8_d_n_1,register_8_d_n_2,register_8_d_n_3,register_8_d_n_4,register_8_d_n_5,register_8_d_n_6,register_8_d_n_7}),
        .SR(SR));
endmodule

module register_8
   (Q,
    SR,
    \FSM_onehot_state_current_reg[2] ,
    D,
    CLK);
  output [7:0]Q;
  input [0:0]SR;
  input [0:0]\FSM_onehot_state_current_reg[2] ;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [0:0]\FSM_onehot_state_current_reg[2] ;
  wire [7:0]Q;
  wire [0:0]SR;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[2] ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[2] ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[2] ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[2] ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[2] ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[2] ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[2] ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[2] ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_0
   (Q,
    SR,
    \FSM_onehot_state_current_reg[4] ,
    D,
    CLK);
  output [7:0]Q;
  input [0:0]SR;
  input [0:0]\FSM_onehot_state_current_reg[4] ;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [0:0]\FSM_onehot_state_current_reg[4] ;
  wire [7:0]Q;
  wire [0:0]SR;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4] ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4] ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4] ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4] ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4] ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4] ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4] ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4] ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_1
   (carry_out235_out,
    data_out_OBUF,
    \reg_out_reg[7]_0 ,
    D,
    carry_out2__1,
    carry_out4__1,
    carry_out6__1,
    carry_out629_out,
    carry_out432_out,
    Q,
    \reg_out_reg[7]_1 ,
    \FSM_onehot_state_current_reg[3] ,
    \reg_out_reg[7]_2 ,
    data_in_sel_conn,
    data_in_IBUF,
    \FSM_onehot_state_current_reg[4] ,
    carry_in_conn,
    \FSM_onehot_state_current_reg[3]_0 ,
    SR,
    \FSM_onehot_state_current_reg[4]_0 ,
    \FSM_onehot_state_current_reg[2] ,
    CLK);
  output carry_out235_out;
  output [7:0]data_out_OBUF;
  output [3:0]\reg_out_reg[7]_0 ;
  output [3:0]D;
  output carry_out2__1;
  output carry_out4__1;
  output carry_out6__1;
  output carry_out629_out;
  output carry_out432_out;
  input [7:0]Q;
  input [7:0]\reg_out_reg[7]_1 ;
  input [1:0]\FSM_onehot_state_current_reg[3] ;
  input [7:0]\reg_out_reg[7]_2 ;
  input data_in_sel_conn;
  input [3:0]data_in_IBUF;
  input [1:0]\FSM_onehot_state_current_reg[4] ;
  input carry_in_conn;
  input [1:0]\FSM_onehot_state_current_reg[3]_0 ;
  input [0:0]SR;
  input [0:0]\FSM_onehot_state_current_reg[4]_0 ;
  input [3:0]\FSM_onehot_state_current_reg[2] ;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [3:0]\FSM_onehot_state_current_reg[2] ;
  wire [1:0]\FSM_onehot_state_current_reg[3] ;
  wire [1:0]\FSM_onehot_state_current_reg[3]_0 ;
  wire [1:0]\FSM_onehot_state_current_reg[4] ;
  wire [0:0]\FSM_onehot_state_current_reg[4]_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \alu_component/adder_8_component/carry_out10__1 ;
  wire \alu_component/adder_8_component/carry_out12__1 ;
  wire \alu_component/adder_8_component/carry_out14__1 ;
  wire \alu_component/adder_8_component/carry_out826_out ;
  wire \alu_component/adder_8_component/carry_out8__1 ;
  wire carry_in_conn;
  wire carry_out235_out;
  wire carry_out2__1;
  wire carry_out432_out;
  wire carry_out4__1;
  wire carry_out629_out;
  wire carry_out6__1;
  wire [4:1]data_b_conn;
  wire [3:0]data_in_IBUF;
  wire data_in_sel_conn;
  wire [7:0]data_out_OBUF;
  wire \reg_out[1]_i_2_n_0 ;
  wire \reg_out[2]_i_2_n_0 ;
  wire \reg_out[3]_i_2_n_0 ;
  wire \reg_out[4]_i_2_n_0 ;
  wire \reg_out[7]_i_7_n_0 ;
  wire \reg_out[7]_i_8_n_0 ;
  wire [3:0]\reg_out_reg[7]_0 ;
  wire [7:0]\reg_out_reg[7]_1 ;
  wire [7:0]\reg_out_reg[7]_2 ;
  wire \reg_out_reg_n_0_[0] ;
  wire \reg_out_reg_n_0_[1] ;
  wire \reg_out_reg_n_0_[2] ;
  wire \reg_out_reg_n_0_[3] ;
  wire \reg_out_reg_n_0_[4] ;
  wire \reg_out_reg_n_0_[5] ;
  wire \reg_out_reg_n_0_[6] ;
  wire \reg_out_reg_n_0_[7] ;

  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[0]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[7]_1 [0]),
        .I3(\FSM_onehot_state_current_reg[3] [1]),
        .I4(\FSM_onehot_state_current_reg[3] [0]),
        .I5(\reg_out_reg[7]_2 [0]),
        .O(data_out_OBUF[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[1]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\reg_out_reg[7]_1 [1]),
        .I3(\FSM_onehot_state_current_reg[3] [1]),
        .I4(\FSM_onehot_state_current_reg[3] [0]),
        .I5(\reg_out_reg[7]_2 [1]),
        .O(data_out_OBUF[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[2]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\reg_out_reg[7]_1 [2]),
        .I3(\FSM_onehot_state_current_reg[3] [1]),
        .I4(\FSM_onehot_state_current_reg[3] [0]),
        .I5(\reg_out_reg[7]_2 [2]),
        .O(data_out_OBUF[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[3]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\reg_out_reg[7]_1 [3]),
        .I3(\FSM_onehot_state_current_reg[3] [1]),
        .I4(\FSM_onehot_state_current_reg[3] [0]),
        .I5(\reg_out_reg[7]_2 [3]),
        .O(data_out_OBUF[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[4]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\reg_out_reg[7]_1 [4]),
        .I3(\FSM_onehot_state_current_reg[3] [1]),
        .I4(\FSM_onehot_state_current_reg[3] [0]),
        .I5(\reg_out_reg[7]_2 [4]),
        .O(data_out_OBUF[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[5]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\reg_out_reg[7]_1 [5]),
        .I3(\FSM_onehot_state_current_reg[3] [1]),
        .I4(\FSM_onehot_state_current_reg[3] [0]),
        .I5(\reg_out_reg[7]_2 [5]),
        .O(data_out_OBUF[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[6]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\reg_out_reg[7]_1 [6]),
        .I3(\FSM_onehot_state_current_reg[3] [1]),
        .I4(\FSM_onehot_state_current_reg[3] [0]),
        .I5(\reg_out_reg[7]_2 [6]),
        .O(data_out_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[7]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(\reg_out_reg[7]_1 [7]),
        .I3(\FSM_onehot_state_current_reg[3] [1]),
        .I4(\FSM_onehot_state_current_reg[3] [0]),
        .I5(\reg_out_reg[7]_2 [7]),
        .O(data_out_OBUF[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[0]_i_3 
       (.I0(\reg_out_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[7]_1 [0]),
        .I3(\FSM_onehot_state_current_reg[3]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[3]_0 [0]),
        .I5(\reg_out_reg[7]_2 [0]),
        .O(\reg_out_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[1]_i_1 
       (.I0(\reg_out[1]_i_2_n_0 ),
        .I1(data_in_sel_conn),
        .I2(data_in_IBUF[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hD643C752)) 
    \reg_out[1]_i_2 
       (.I0(\FSM_onehot_state_current_reg[4] [0]),
        .I1(\FSM_onehot_state_current_reg[4] [1]),
        .I2(data_out_OBUF[1]),
        .I3(data_b_conn[1]),
        .I4(\alu_component/adder_8_component/carry_out14__1 ),
        .O(\reg_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[1]_i_3 
       (.I0(\reg_out_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\reg_out_reg[7]_1 [1]),
        .I3(\FSM_onehot_state_current_reg[3]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[3]_0 [0]),
        .I5(\reg_out_reg[7]_2 [1]),
        .O(data_b_conn[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \reg_out[1]_i_4 
       (.I0(carry_in_conn),
        .I1(data_out_OBUF[0]),
        .I2(\reg_out_reg[7]_0 [0]),
        .O(\alu_component/adder_8_component/carry_out14__1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[2]_i_1 
       (.I0(\reg_out[2]_i_2_n_0 ),
        .I1(data_in_sel_conn),
        .I2(data_in_IBUF[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hD643C752)) 
    \reg_out[2]_i_2 
       (.I0(\FSM_onehot_state_current_reg[4] [0]),
        .I1(\FSM_onehot_state_current_reg[4] [1]),
        .I2(data_out_OBUF[2]),
        .I3(data_b_conn[2]),
        .I4(\alu_component/adder_8_component/carry_out12__1 ),
        .O(\reg_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[2]_i_3 
       (.I0(\reg_out_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\reg_out_reg[7]_1 [2]),
        .I3(\FSM_onehot_state_current_reg[3]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[3]_0 [0]),
        .I5(\reg_out_reg[7]_2 [2]),
        .O(data_b_conn[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \reg_out[2]_i_4 
       (.I0(carry_in_conn),
        .I1(data_out_OBUF[0]),
        .I2(\reg_out_reg[7]_0 [0]),
        .I3(data_out_OBUF[1]),
        .I4(data_b_conn[1]),
        .O(\alu_component/adder_8_component/carry_out12__1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[3]_i_1 
       (.I0(\reg_out[3]_i_2_n_0 ),
        .I1(data_in_sel_conn),
        .I2(data_in_IBUF[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hD643C752)) 
    \reg_out[3]_i_2 
       (.I0(\FSM_onehot_state_current_reg[4] [0]),
        .I1(\FSM_onehot_state_current_reg[4] [1]),
        .I2(data_out_OBUF[3]),
        .I3(data_b_conn[3]),
        .I4(\alu_component/adder_8_component/carry_out10__1 ),
        .O(\reg_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[3]_i_3 
       (.I0(\reg_out_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\reg_out_reg[7]_1 [3]),
        .I3(\FSM_onehot_state_current_reg[3]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[3]_0 [0]),
        .I5(\reg_out_reg[7]_2 [3]),
        .O(data_b_conn[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \reg_out[3]_i_4 
       (.I0(\alu_component/adder_8_component/carry_out12__1 ),
        .I1(data_out_OBUF[2]),
        .I2(data_b_conn[2]),
        .O(\alu_component/adder_8_component/carry_out10__1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[4]_i_1 
       (.I0(\reg_out[4]_i_2_n_0 ),
        .I1(data_in_sel_conn),
        .I2(data_in_IBUF[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hD643C752)) 
    \reg_out[4]_i_2 
       (.I0(\FSM_onehot_state_current_reg[4] [0]),
        .I1(\FSM_onehot_state_current_reg[4] [1]),
        .I2(data_out_OBUF[4]),
        .I3(data_b_conn[4]),
        .I4(\alu_component/adder_8_component/carry_out8__1 ),
        .O(\reg_out[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[5]_i_3 
       (.I0(data_out_OBUF[5]),
        .I1(\reg_out_reg[7]_0 [1]),
        .O(carry_out629_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \reg_out[5]_i_4 
       (.I0(\alu_component/adder_8_component/carry_out8__1 ),
        .I1(data_out_OBUF[4]),
        .I2(data_b_conn[4]),
        .O(carry_out6__1));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[6]_i_3 
       (.I0(data_out_OBUF[6]),
        .I1(\reg_out_reg[7]_0 [2]),
        .O(carry_out432_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \reg_out[6]_i_4 
       (.I0(\alu_component/adder_8_component/carry_out8__1 ),
        .I1(data_out_OBUF[4]),
        .I2(data_b_conn[4]),
        .I3(data_out_OBUF[5]),
        .I4(\reg_out_reg[7]_0 [1]),
        .O(carry_out4__1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \reg_out[6]_i_5 
       (.I0(\alu_component/adder_8_component/carry_out12__1 ),
        .I1(data_out_OBUF[2]),
        .I2(data_b_conn[2]),
        .I3(data_out_OBUF[3]),
        .I4(data_b_conn[3]),
        .O(\alu_component/adder_8_component/carry_out8__1 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[6]_i_6 
       (.I0(\reg_out_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\reg_out_reg[7]_1 [4]),
        .I3(\FSM_onehot_state_current_reg[3]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[3]_0 [0]),
        .I5(\reg_out_reg[7]_2 [4]),
        .O(data_b_conn[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[7]_i_10 
       (.I0(\reg_out_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\reg_out_reg[7]_1 [6]),
        .I3(\FSM_onehot_state_current_reg[3]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[3]_0 [0]),
        .I5(\reg_out_reg[7]_2 [6]),
        .O(\reg_out_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_11 
       (.I0(data_out_OBUF[4]),
        .I1(data_b_conn[4]),
        .O(\alu_component/adder_8_component/carry_out826_out ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_4 
       (.I0(data_out_OBUF[7]),
        .I1(\reg_out_reg[7]_0 [3]),
        .O(carry_out235_out));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \reg_out[7]_i_5 
       (.I0(\reg_out[7]_i_7_n_0 ),
        .I1(\reg_out[7]_i_8_n_0 ),
        .I2(data_out_OBUF[5]),
        .I3(\reg_out_reg[7]_0 [1]),
        .I4(data_out_OBUF[6]),
        .I5(\reg_out_reg[7]_0 [2]),
        .O(carry_out2__1));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[7]_i_6 
       (.I0(\reg_out_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(\reg_out_reg[7]_1 [7]),
        .I3(\FSM_onehot_state_current_reg[3]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[3]_0 [0]),
        .I5(\reg_out_reg[7]_2 [7]),
        .O(\reg_out_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_out[7]_i_7 
       (.I0(data_out_OBUF[4]),
        .I1(data_b_conn[4]),
        .O(\reg_out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \reg_out[7]_i_8 
       (.I0(\alu_component/adder_8_component/carry_out826_out ),
        .I1(data_b_conn[3]),
        .I2(data_out_OBUF[3]),
        .I3(data_b_conn[2]),
        .I4(data_out_OBUF[2]),
        .I5(\alu_component/adder_8_component/carry_out12__1 ),
        .O(\reg_out[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[7]_i_9 
       (.I0(\reg_out_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\reg_out_reg[7]_1 [5]),
        .I3(\FSM_onehot_state_current_reg[3]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[3]_0 [0]),
        .I5(\reg_out_reg[7]_2 [5]),
        .O(\reg_out_reg[7]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4]_0 ),
        .D(\FSM_onehot_state_current_reg[2] [0]),
        .Q(\reg_out_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4]_0 ),
        .D(D[0]),
        .Q(\reg_out_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4]_0 ),
        .D(D[1]),
        .Q(\reg_out_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4]_0 ),
        .D(D[2]),
        .Q(\reg_out_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4]_0 ),
        .D(D[3]),
        .Q(\reg_out_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4]_0 ),
        .D(\FSM_onehot_state_current_reg[2] [1]),
        .Q(\reg_out_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4]_0 ),
        .D(\FSM_onehot_state_current_reg[2] [2]),
        .Q(\reg_out_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(CLK),
        .CE(\FSM_onehot_state_current_reg[4]_0 ),
        .D(\FSM_onehot_state_current_reg[2] [3]),
        .Q(\reg_out_reg_n_0_[7] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_2
   (Q,
    SR,
    E,
    D,
    CLK);
  output [7:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

module risc_controller_8
   (carry_in_conn,
    data_in_sel_conn,
    \reg_out_reg[7] ,
    \reg_out_reg[7]_0 ,
    \reg_out_reg[7]_1 ,
    E,
    D,
    Q,
    \FSM_onehot_state_current_reg[2]_0 ,
    \reg_out_reg[7]_2 ,
    \reg_out_reg[7]_3 ,
    \state_debug[2] ,
    \operation_debug[3] ,
    pc_debug,
    carry_out235_out,
    carry_out2__1,
    data_in_IBUF,
    data_out_OBUF,
    \reg_out_reg[7]_4 ,
    carry_out629_out,
    carry_out6__1,
    carry_out432_out,
    carry_out4__1,
    CLK,
    in1);
  output carry_in_conn;
  output data_in_sel_conn;
  output [0:0]\reg_out_reg[7] ;
  output [0:0]\reg_out_reg[7]_0 ;
  output [0:0]\reg_out_reg[7]_1 ;
  output [0:0]E;
  output [3:0]D;
  output [1:0]Q;
  output [3:0]\FSM_onehot_state_current_reg[2]_0 ;
  output [1:0]\reg_out_reg[7]_2 ;
  output [1:0]\reg_out_reg[7]_3 ;
  output [2:0]\state_debug[2] ;
  output [3:0]\operation_debug[3] ;
  output [3:0]pc_debug;
  input carry_out235_out;
  input carry_out2__1;
  input [3:0]data_in_IBUF;
  input [3:0]data_out_OBUF;
  input [3:0]\reg_out_reg[7]_4 ;
  input carry_out629_out;
  input carry_out6__1;
  input carry_out432_out;
  input carry_out4__1;
  input CLK;
  input in1;

  wire \/FSM_onehot_state_current[1]_i_1_n_0 ;
  wire \/FSM_onehot_state_current[2]_i_1_n_0 ;
  wire \/FSM_onehot_state_current[3]_i_1_n_0 ;
  wire \/FSM_onehot_state_current[4]_i_1_n_0 ;
  wire \/i_/i___0_n_0 ;
  wire \/i_/i__n_0 ;
  wire \/i___0_n_0 ;
  wire \/i___1_n_0 ;
  wire \/i___2_n_0 ;
  wire \/i___3_n_0 ;
  wire \/i___4_n_0 ;
  wire \/i___5_n_0 ;
  wire \/i__n_0 ;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_current[4]_i_2_n_0 ;
  wire [3:0]\FSM_onehot_state_current_reg[2]_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[4] ;
  wire [1:0]Q;
  wire \alu_sel_reg[0]_i_1_n_0 ;
  wire \alu_sel_reg[1]_i_1_n_0 ;
  wire \alu_sel_reg[1]_i_2_n_0 ;
  wire carry_in_conn;
  wire carry_in_reg_i_1_n_0;
  wire carry_out235_out;
  wire carry_out2__1;
  wire carry_out432_out;
  wire carry_out4__1;
  wire carry_out629_out;
  wire carry_out6__1;
  wire \data_a_sel_reg[0]_i_1_n_0 ;
  wire \data_a_sel_reg[0]_i_2_n_0 ;
  wire \data_a_sel_reg[0]_i_3_n_0 ;
  wire \data_a_sel_reg[1]_i_1_n_0 ;
  wire \data_a_sel_reg[1]_i_2_n_0 ;
  wire \data_a_sel_reg[1]_i_3_n_0 ;
  wire \data_b_sel_reg[0]_i_1_n_0 ;
  wire \data_b_sel_reg[0]_i_2_n_0 ;
  wire \data_b_sel_reg[1]_i_1_n_0 ;
  wire \data_b_sel_reg[1]_i_2_n_0 ;
  wire [3:0]data_in_IBUF;
  wire data_in_sel_conn;
  wire [3:0]data_out_OBUF;
  wire eqOp0_in;
  wire eqOp__1;
  wire i___0_i_1_n_0;
  wire in1;
  wire [3:0]\operation_debug[3] ;
  wire \operation_debug_reg[2]_i_1_n_0 ;
  wire \operation_debug_reg[3]_i_1_n_0 ;
  wire \operation_debug_reg[3]_i_2_n_0 ;
  wire p_0_in;
  wire pc0;
  wire [3:0]pc_debug;
  wire pc_increment;
  wire pc_reset;
  wire pc_reset_reg_i_1_n_0;
  wire [3:0]plusOp;
  wire \reg_out[0]_i_2_n_0 ;
  wire \reg_out[5]_i_2_n_0 ;
  wire \reg_out[6]_i_2_n_0 ;
  wire \reg_out[7]_i_2_n_0 ;
  wire \reg_out[7]_i_3_n_0 ;
  wire [0:0]\reg_out_reg[7] ;
  wire [0:0]\reg_out_reg[7]_0 ;
  wire [0:0]\reg_out_reg[7]_1 ;
  wire [1:0]\reg_out_reg[7]_2 ;
  wire [1:0]\reg_out_reg[7]_3 ;
  wire [3:0]\reg_out_reg[7]_4 ;
  wire [2:0]\state_debug[2] ;
  wire \state_debug_reg[0]_i_1_n_0 ;
  wire \state_debug_reg[1]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'hBA)) 
    \/FSM_onehot_state_current[1]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[4] ),
        .O(\/FSM_onehot_state_current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400001000000000)) 
    \/FSM_onehot_state_current[2]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I5(\FSM_onehot_state_current_reg_n_0_[1] ),
        .O(\/FSM_onehot_state_current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \/FSM_onehot_state_current[3]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_current_reg_n_0_[4] ),
        .O(\/FSM_onehot_state_current[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00045504)) 
    \/FSM_onehot_state_current[4]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_current[4]_i_2_n_0 ),
        .O(\/FSM_onehot_state_current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAABAAAAAAAAA)) 
    \/i_ 
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I5(\FSM_onehot_state_current_reg_n_0_[3] ),
        .O(\/i__n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \/i_/i_ 
       (.I0(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_current_reg_n_0_[0] ),
        .O(\/i_/i__n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEAE)) 
    \/i_/i___0 
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(i___0_i_1_n_0),
        .I2(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I3(eqOp0_in),
        .I4(eqOp__1),
        .O(\/i_/i___0_n_0 ));
  LUT4 #(
    .INIT(16'h0440)) 
    \/i___0 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [3]),
        .O(\/i___0_n_0 ));
  LUT6 #(
    .INIT(64'h0004400004040004)) 
    \/i___1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [1]),
        .O(\/i___1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000400)) 
    \/i___2 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [2]),
        .O(\/i___2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004040400)) 
    \/i___3 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [0]),
        .O(\/i___3_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000004000)) 
    \/i___4 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [0]),
        .O(\/i___4_n_0 ));
  LUT6 #(
    .INIT(64'h0404044444444044)) 
    \/i___5 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [1]),
        .O(\/i___5_n_0 ));
  LUT4 #(
    .INIT(16'h2004)) 
    \FSM_onehot_state_current[4]_i_2 
       (.I0(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I1(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [2]),
        .O(\FSM_onehot_state_current[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "st_reset:00001,st_decode_and_execute:00010,st_wait_for_decode_and_execute:10000,st_execute:01000,st_wait_for_execute:00100" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDS_1" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_current_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_state_current_reg_n_0_[0] ),
        .S(in1));
  (* FSM_ENCODED_STATES = "st_reset:00001,st_decode_and_execute:00010,st_wait_for_decode_and_execute:10000,st_execute:01000,st_wait_for_execute:00100" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_current_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\/FSM_onehot_state_current[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[1] ),
        .R(in1));
  (* FSM_ENCODED_STATES = "st_reset:00001,st_decode_and_execute:00010,st_wait_for_decode_and_execute:10000,st_execute:01000,st_wait_for_execute:00100" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_current_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\/FSM_onehot_state_current[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[2] ),
        .R(in1));
  (* FSM_ENCODED_STATES = "st_reset:00001,st_decode_and_execute:00010,st_wait_for_decode_and_execute:10000,st_execute:01000,st_wait_for_execute:00100" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_current_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\/FSM_onehot_state_current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[3] ),
        .R(in1));
  (* FSM_ENCODED_STATES = "st_reset:00001,st_decode_and_execute:00010,st_wait_for_decode_and_execute:10000,st_execute:01000,st_wait_for_execute:00100" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDR_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_current_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\/FSM_onehot_state_current[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[4] ),
        .R(in1));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_UNIQ_BASE_ a_enable_reg
       (.CLR(\FSM_onehot_state_current_reg_n_0_[2] ),
        .D(\/i___1_n_0 ),
        .G(i___0_i_1_n_0),
        .PRE(carry_in_reg_i_1_n_0),
        .Q(\reg_out_reg[7] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_sel_reg[0] 
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\alu_sel_reg[0]_i_1_n_0 ),
        .G(i___0_i_1_n_0),
        .GE(1'b1),
        .Q(Q[0]));
  LUT6 #(
    .INIT(64'h0400004040400040)) 
    \alu_sel_reg[0]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [2]),
        .O(\alu_sel_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_sel_reg[1] 
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\alu_sel_reg[1]_i_1_n_0 ),
        .G(i___0_i_1_n_0),
        .GE(1'b1),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'h0004040000000000)) 
    \alu_sel_reg[1]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [3]),
        .O(\alu_sel_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABEAAAAAAAAAAA)) 
    \alu_sel_reg[1]_i_2 
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I5(\FSM_onehot_state_current_reg_n_0_[3] ),
        .O(\alu_sel_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    b_enable_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\/i___2_n_0 ),
        .G(i___0_i_1_n_0),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    c_enable_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\/i___3_n_0 ),
        .G(i___0_i_1_n_0),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_1 ));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD43 carry_in_reg
       (.CLR(\FSM_onehot_state_current_reg_n_0_[2] ),
        .D(1'b0),
        .G(i___0_i_1_n_0),
        .PRE(carry_in_reg_i_1_n_0),
        .Q(carry_in_conn));
  LUT5 #(
    .INIT(32'h20000008)) 
    carry_in_reg_i_1
       (.I0(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [0]),
        .O(carry_in_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    d_enable_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\/i___4_n_0 ),
        .G(i___0_i_1_n_0),
        .GE(1'b1),
        .Q(E));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_a_sel_reg[0] 
       (.CLR(\FSM_onehot_state_current_reg_n_0_[2] ),
        .D(\data_a_sel_reg[0]_i_1_n_0 ),
        .G(\data_a_sel_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    \data_a_sel_reg[0]_i_1 
       (.I0(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I1(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I4(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I5(\data_a_sel_reg[0]_i_3_n_0 ),
        .O(\data_a_sel_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAFFAAFC)) 
    \data_a_sel_reg[0]_i_2 
       (.I0(\FSM_onehot_state_current[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_current_reg_n_0_[4] ),
        .O(\data_a_sel_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0044004004000040)) 
    \data_a_sel_reg[0]_i_3 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [1]),
        .O(\data_a_sel_reg[0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_a_sel_reg[1] 
       (.CLR(\/i__n_0 ),
        .D(\data_a_sel_reg[1]_i_1_n_0 ),
        .G(\data_a_sel_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_2 [1]));
  LUT3 #(
    .INIT(8'h01)) 
    \data_a_sel_reg[1]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I2(\data_a_sel_reg[1]_i_3_n_0 ),
        .O(\data_a_sel_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5554)) 
    \data_a_sel_reg[1]_i_2 
       (.I0(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[1] ),
        .O(\data_a_sel_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEB8BFFFF)) 
    \data_a_sel_reg[1]_i_3 
       (.I0(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I1(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I4(\FSM_onehot_state_current_reg_n_0_[1] ),
        .O(\data_a_sel_reg[1]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_b_sel_reg[0] 
       (.CLR(1'b0),
        .D(\data_b_sel_reg[0]_i_1_n_0 ),
        .G(\/i_/i___0_n_0 ),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_3 [0]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \data_b_sel_reg[0]_i_1 
       (.I0(\data_b_sel_reg[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I2(eqOp__1),
        .I3(eqOp0_in),
        .I4(\FSM_onehot_state_current_reg_n_0_[2] ),
        .O(\data_b_sel_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000044000400000)) 
    \data_b_sel_reg[0]_i_2 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [0]),
        .O(\data_b_sel_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_b_sel_reg[1] 
       (.CLR(1'b0),
        .D(\data_b_sel_reg[1]_i_1_n_0 ),
        .G(\/i_/i___0_n_0 ),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_3 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \data_b_sel_reg[1]_i_1 
       (.I0(\data_b_sel_reg[1]_i_2_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I2(eqOp__1),
        .I3(\FSM_onehot_state_current_reg_n_0_[2] ),
        .O(\data_b_sel_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000404000)) 
    \data_b_sel_reg[1]_i_2 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I5(\FSM_onehot_state_current_reg[2]_0 [2]),
        .O(\data_b_sel_reg[1]_i_2_n_0 ));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD44 data_in_sel_reg
       (.CLR(\FSM_onehot_state_current_reg_n_0_[2] ),
        .D(\/i___0_n_0 ),
        .G(i___0_i_1_n_0),
        .PRE(carry_in_reg_i_1_n_0),
        .Q(data_in_sel_conn));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    eqOp
       (.I0(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I1(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [0]),
        .O(eqOp0_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    eqOp__0
       (.I0(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I1(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [0]),
        .O(eqOp__1));
  LUT3 #(
    .INIT(8'hFE)) 
    i___0_i_1
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[0] ),
        .O(i___0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \opcode[3]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[0] ),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \opcode_reg[0] 
       (.C(CLK),
        .CE(p_0_in),
        .D(pc_debug[0]),
        .Q(\FSM_onehot_state_current_reg[2]_0 [0]),
        .R(pc_reset));
  FDRE #(
    .INIT(1'b0)) 
    \opcode_reg[1] 
       (.C(CLK),
        .CE(p_0_in),
        .D(pc_debug[1]),
        .Q(\FSM_onehot_state_current_reg[2]_0 [1]),
        .R(pc_reset));
  FDRE #(
    .INIT(1'b0)) 
    \opcode_reg[2] 
       (.C(CLK),
        .CE(p_0_in),
        .D(pc_debug[2]),
        .Q(\FSM_onehot_state_current_reg[2]_0 [2]),
        .R(pc_reset));
  FDRE #(
    .INIT(1'b0)) 
    \opcode_reg[3] 
       (.C(CLK),
        .CE(p_0_in),
        .D(pc_debug[3]),
        .Q(\FSM_onehot_state_current_reg[2]_0 [3]),
        .R(pc_reset));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD45 \operation_debug_reg[0] 
       (.CLR(\operation_debug_reg[3]_i_2_n_0 ),
        .D(\FSM_onehot_state_current_reg[2]_0 [0]),
        .G(\FSM_onehot_state_current_reg_n_0_[1] ),
        .PRE(\operation_debug_reg[2]_i_1_n_0 ),
        .Q(\operation_debug[3] [0]));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD46 \operation_debug_reg[1] 
       (.CLR(\operation_debug_reg[3]_i_2_n_0 ),
        .D(\FSM_onehot_state_current_reg[2]_0 [1]),
        .G(\FSM_onehot_state_current_reg_n_0_[1] ),
        .PRE(\operation_debug_reg[2]_i_1_n_0 ),
        .Q(\operation_debug[3] [1]));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD47 \operation_debug_reg[2] 
       (.CLR(\operation_debug_reg[3]_i_2_n_0 ),
        .D(\FSM_onehot_state_current_reg[2]_0 [2]),
        .G(\FSM_onehot_state_current_reg_n_0_[1] ),
        .PRE(\operation_debug_reg[2]_i_1_n_0 ),
        .Q(\operation_debug[3] [2]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \operation_debug_reg[2]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [3]),
        .O(\operation_debug_reg[2]_i_1_n_0 ));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD48 \operation_debug_reg[3] 
       (.CLR(\operation_debug_reg[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_current_reg[2]_0 [3]),
        .G(\FSM_onehot_state_current_reg_n_0_[1] ),
        .PRE(\operation_debug_reg[3]_i_2_n_0 ),
        .Q(\operation_debug[3] [3]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \operation_debug_reg[3]_i_1 
       (.I0(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I1(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I4(\FSM_onehot_state_current_reg_n_0_[3] ),
        .O(\operation_debug_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \operation_debug_reg[3]_i_2 
       (.I0(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [2]),
        .O(\operation_debug_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pc[0]_i_1 
       (.I0(pc_debug[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pc[1]_i_1 
       (.I0(pc_debug[0]),
        .I1(pc_debug[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pc[2]_i_1 
       (.I0(pc_debug[0]),
        .I1(pc_debug[1]),
        .I2(pc_debug[2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc[3]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I1(pc_reset),
        .O(pc0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pc[3]_i_2 
       (.I0(pc_debug[1]),
        .I1(pc_debug[0]),
        .I2(pc_debug[2]),
        .I3(pc_debug[3]),
        .O(plusOp[3]));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD49 pc_increment_reg
       (.CLR(\FSM_onehot_state_current_reg_n_0_[2] ),
        .D(\/i___5_n_0 ),
        .G(i___0_i_1_n_0),
        .PRE(carry_in_reg_i_1_n_0),
        .Q(pc_increment));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(CLK),
        .CE(pc_increment),
        .D(plusOp[0]),
        .Q(pc_debug[0]),
        .R(pc0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(CLK),
        .CE(pc_increment),
        .D(plusOp[1]),
        .Q(pc_debug[1]),
        .R(pc0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(CLK),
        .CE(pc_increment),
        .D(plusOp[2]),
        .Q(pc_debug[2]),
        .R(pc0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(CLK),
        .CE(pc_increment),
        .D(plusOp[3]),
        .Q(pc_debug[3]),
        .R(pc0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    pc_reset_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(pc_reset_reg_i_1_n_0),
        .G(i___0_i_1_n_0),
        .GE(1'b1),
        .Q(pc_reset));
  LUT6 #(
    .INIT(64'h4000000055555555)) 
    pc_reset_reg_i_1
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg[2]_0 [3]),
        .I2(\FSM_onehot_state_current_reg[2]_0 [2]),
        .I3(\FSM_onehot_state_current_reg[2]_0 [0]),
        .I4(\FSM_onehot_state_current_reg[2]_0 [1]),
        .I5(\FSM_onehot_state_current_reg_n_0_[1] ),
        .O(pc_reset_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[0]_i_1 
       (.I0(\reg_out[0]_i_2_n_0 ),
        .I1(data_in_sel_conn),
        .I2(data_in_IBUF[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF23D310E)) 
    \reg_out[0]_i_2 
       (.I0(carry_in_conn),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(data_out_OBUF[0]),
        .I4(\reg_out_reg[7]_4 [0]),
        .O(\reg_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAFFFFAEEA0000)) 
    \reg_out[5]_i_1 
       (.I0(\reg_out[5]_i_2_n_0 ),
        .I1(\reg_out[7]_i_3_n_0 ),
        .I2(carry_out629_out),
        .I3(carry_out6__1),
        .I4(data_in_sel_conn),
        .I5(data_in_IBUF[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hA624)) 
    \reg_out[5]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(data_out_OBUF[1]),
        .I3(\reg_out_reg[7]_4 [1]),
        .O(\reg_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAFFFFAEEA0000)) 
    \reg_out[6]_i_1 
       (.I0(\reg_out[6]_i_2_n_0 ),
        .I1(\reg_out[7]_i_3_n_0 ),
        .I2(carry_out432_out),
        .I3(carry_out4__1),
        .I4(data_in_sel_conn),
        .I5(data_in_IBUF[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hA624)) 
    \reg_out[6]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(data_out_OBUF[2]),
        .I3(\reg_out_reg[7]_4 [2]),
        .O(\reg_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAFFFFAEEA0000)) 
    \reg_out[7]_i_1 
       (.I0(\reg_out[7]_i_2_n_0 ),
        .I1(\reg_out[7]_i_3_n_0 ),
        .I2(carry_out235_out),
        .I3(carry_out2__1),
        .I4(data_in_sel_conn),
        .I5(data_in_IBUF[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hA624)) 
    \reg_out[7]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(data_out_OBUF[3]),
        .I3(\reg_out_reg[7]_4 [3]),
        .O(\reg_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \reg_out[7]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\reg_out[7]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_debug_reg[0] 
       (.CLR(1'b0),
        .D(\state_debug_reg[0]_i_1_n_0 ),
        .G(\/i_/i__n_0 ),
        .GE(1'b1),
        .Q(\state_debug[2] [0]));
  LUT4 #(
    .INIT(16'h5054)) 
    \state_debug_reg[0]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[4] ),
        .O(\state_debug_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_debug_reg[1] 
       (.CLR(1'b0),
        .D(\state_debug_reg[1]_i_1_n_0 ),
        .G(\/i_/i__n_0 ),
        .GE(1'b1),
        .Q(\state_debug[2] [1]));
  LUT3 #(
    .INIT(8'h54)) 
    \state_debug_reg[1]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[4] ),
        .O(\state_debug_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_debug_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state_current_reg_n_0_[2] ),
        .G(\/i_/i__n_0 ),
        .GE(1'b1),
        .Q(\state_debug[2] [2]));
endmodule

(* ECO_CHECKSUM = "4135d6c2" *) 
(* NotValidForBitStream *)
module risc_cpu_8
   (clk,
    reset,
    data_in,
    data_out,
    state_debug,
    pc_debug,
    operation_debug,
    opcode_debug);
  input clk;
  input reset;
  input [7:0]data_in;
  output [7:0]data_out;
  output [2:0]state_debug;
  output [3:0]pc_debug;
  output [3:0]operation_debug;
  output [3:0]opcode_debug;

  wire a_enable_conn;
  wire \alu_component/adder_8_component/carry_out235_out ;
  wire \alu_component/adder_8_component/carry_out2__1 ;
  wire \alu_component/adder_8_component/carry_out432_out ;
  wire \alu_component/adder_8_component/carry_out4__1 ;
  wire \alu_component/adder_8_component/carry_out629_out ;
  wire \alu_component/adder_8_component/carry_out6__1 ;
  wire [1:0]alu_sel_conn;
  wire b_enable_conn;
  wire c_enable_conn;
  wire carry_in_conn;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d_enable_conn;
  wire [1:0]data_a_sel_conn;
  wire [7:0]data_b_conn;
  wire [1:0]data_b_sel_conn;
  wire [7:0]data_in;
  wire [7:0]data_in_IBUF;
  wire data_in_sel_conn;
  wire [7:0]data_out;
  wire [7:0]data_out_OBUF;
  wire [7:0]mux_out;
  wire [3:0]opcode_debug;
  wire [3:0]opcode_debug_OBUF;
  wire [3:0]operation_debug;
  wire [3:0]operation_debug_OBUF;
  wire [3:0]pc_debug;
  wire [3:0]pc_debug_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [2:0]state_debug;
  wire [2:0]state_debug_OBUF;

initial begin
 $sdf_annotate("risc_cpu_8_test_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  datapath_8 datapath_8_component
       (.CLK(clk_IBUF_BUFG),
        .D({mux_out[7:5],mux_out[0]}),
        .E(d_enable_conn),
        .\FSM_onehot_state_current_reg[2] (a_enable_conn),
        .\FSM_onehot_state_current_reg[3] (data_b_sel_conn),
        .\FSM_onehot_state_current_reg[4] (alu_sel_conn),
        .\FSM_onehot_state_current_reg[4]_0 (c_enable_conn),
        .\FSM_onehot_state_current_reg[4]_1 (b_enable_conn),
        .Q(data_a_sel_conn),
        .SR(reset_IBUF),
        .carry_in_conn(carry_in_conn),
        .carry_out235_out(\alu_component/adder_8_component/carry_out235_out ),
        .carry_out2__1(\alu_component/adder_8_component/carry_out2__1 ),
        .carry_out432_out(\alu_component/adder_8_component/carry_out432_out ),
        .carry_out4__1(\alu_component/adder_8_component/carry_out4__1 ),
        .carry_out629_out(\alu_component/adder_8_component/carry_out629_out ),
        .carry_out6__1(\alu_component/adder_8_component/carry_out6__1 ),
        .data_in_IBUF(data_in_IBUF[4:1]),
        .data_in_sel_conn(data_in_sel_conn),
        .data_out_OBUF(data_out_OBUF),
        .\reg_out_reg[7] ({data_b_conn[7:5],data_b_conn[0]}));
  OBUF \opcode_debug_OBUF[0]_inst 
       (.I(opcode_debug_OBUF[0]),
        .O(opcode_debug[0]));
  OBUF \opcode_debug_OBUF[1]_inst 
       (.I(opcode_debug_OBUF[1]),
        .O(opcode_debug[1]));
  OBUF \opcode_debug_OBUF[2]_inst 
       (.I(opcode_debug_OBUF[2]),
        .O(opcode_debug[2]));
  OBUF \opcode_debug_OBUF[3]_inst 
       (.I(opcode_debug_OBUF[3]),
        .O(opcode_debug[3]));
  OBUF \operation_debug_OBUF[0]_inst 
       (.I(operation_debug_OBUF[0]),
        .O(operation_debug[0]));
  OBUF \operation_debug_OBUF[1]_inst 
       (.I(operation_debug_OBUF[1]),
        .O(operation_debug[1]));
  OBUF \operation_debug_OBUF[2]_inst 
       (.I(operation_debug_OBUF[2]),
        .O(operation_debug[2]));
  OBUF \operation_debug_OBUF[3]_inst 
       (.I(operation_debug_OBUF[3]),
        .O(operation_debug[3]));
  OBUF \pc_debug_OBUF[0]_inst 
       (.I(pc_debug_OBUF[0]),
        .O(pc_debug[0]));
  OBUF \pc_debug_OBUF[1]_inst 
       (.I(pc_debug_OBUF[1]),
        .O(pc_debug[1]));
  OBUF \pc_debug_OBUF[2]_inst 
       (.I(pc_debug_OBUF[2]),
        .O(pc_debug[2]));
  OBUF \pc_debug_OBUF[3]_inst 
       (.I(pc_debug_OBUF[3]),
        .O(pc_debug[3]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  risc_controller_8 risc_controller_8_component
       (.CLK(clk_IBUF_BUFG),
        .D({mux_out[7:5],mux_out[0]}),
        .E(d_enable_conn),
        .\FSM_onehot_state_current_reg[2]_0 (opcode_debug_OBUF),
        .Q(alu_sel_conn),
        .carry_in_conn(carry_in_conn),
        .carry_out235_out(\alu_component/adder_8_component/carry_out235_out ),
        .carry_out2__1(\alu_component/adder_8_component/carry_out2__1 ),
        .carry_out432_out(\alu_component/adder_8_component/carry_out432_out ),
        .carry_out4__1(\alu_component/adder_8_component/carry_out4__1 ),
        .carry_out629_out(\alu_component/adder_8_component/carry_out629_out ),
        .carry_out6__1(\alu_component/adder_8_component/carry_out6__1 ),
        .data_in_IBUF({data_in_IBUF[7:5],data_in_IBUF[0]}),
        .data_in_sel_conn(data_in_sel_conn),
        .data_out_OBUF({data_out_OBUF[7:5],data_out_OBUF[0]}),
        .in1(reset_IBUF),
        .\operation_debug[3] (operation_debug_OBUF),
        .pc_debug(pc_debug_OBUF),
        .\reg_out_reg[7] (a_enable_conn),
        .\reg_out_reg[7]_0 (b_enable_conn),
        .\reg_out_reg[7]_1 (c_enable_conn),
        .\reg_out_reg[7]_2 (data_a_sel_conn),
        .\reg_out_reg[7]_3 (data_b_sel_conn),
        .\reg_out_reg[7]_4 ({data_b_conn[7:5],data_b_conn[0]}),
        .\state_debug[2] (state_debug_OBUF));
  OBUF \state_debug_OBUF[0]_inst 
       (.I(state_debug_OBUF[0]),
        .O(state_debug[0]));
  OBUF \state_debug_OBUF[1]_inst 
       (.I(state_debug_OBUF[1]),
        .O(state_debug[1]));
  OBUF \state_debug_OBUF[2]_inst 
       (.I(state_debug_OBUF[2]),
        .O(state_debug[2]));
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
