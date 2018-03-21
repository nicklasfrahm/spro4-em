// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Mar 19 16:38:10 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/risc_cpu_8/risc_cpu_8.sim/tests/impl/timing/xsim/risc_cpu_8_time_impl.v}
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

module LDCP_HD15
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

module LDCP_HD16
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

module LDCP_HD17
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

module LDCP_HD18
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

module LDCP_HD19
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

module LDCP_HD20
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

module LDCP_HD21
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
    \opcode_reg[3] ,
    carry_in_conn,
    \opcode_reg[0] ,
    reset_IBUF,
    E,
    clk_IBUF_BUFG,
    \opcode_reg[3]_0 ,
    \opcode_reg[2] ,
    \opcode_reg[0]_0 );
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
  input [1:0]\opcode_reg[3] ;
  input carry_in_conn;
  input [1:0]\opcode_reg[0] ;
  input reset_IBUF;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]\opcode_reg[3]_0 ;
  input [0:0]\opcode_reg[2] ;
  input [0:0]\opcode_reg[0]_0 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire carry_in_conn;
  wire carry_out235_out;
  wire carry_out2__1;
  wire carry_out432_out;
  wire carry_out4__1;
  wire carry_out629_out;
  wire carry_out6__1;
  wire clk_IBUF_BUFG;
  wire [3:0]data_in_IBUF;
  wire data_in_sel_conn;
  wire [7:0]data_out_OBUF;
  wire [1:0]\opcode_reg[0] ;
  wire [0:0]\opcode_reg[0]_0 ;
  wire [0:0]\opcode_reg[2] ;
  wire [1:0]\opcode_reg[3] ;
  wire [0:0]\opcode_reg[3]_0 ;
  wire [3:0]\reg_out_reg[7] ;
  wire reset_IBUF;

  memory_8_4 memory_8_4_component
       (.D(D),
        .E(E),
        .Q(Q),
        .carry_in_conn(carry_in_conn),
        .carry_out235_out(carry_out235_out),
        .carry_out2__1(carry_out2__1),
        .carry_out432_out(carry_out432_out),
        .carry_out4__1(carry_out4__1),
        .carry_out629_out(carry_out629_out),
        .carry_out6__1(carry_out6__1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_in_IBUF(data_in_IBUF),
        .data_in_sel_conn(data_in_sel_conn),
        .data_out_OBUF(data_out_OBUF),
        .\opcode_reg[0] (\opcode_reg[0] ),
        .\opcode_reg[0]_0 (\opcode_reg[0]_0 ),
        .\opcode_reg[2] (\opcode_reg[2] ),
        .\opcode_reg[3] (\opcode_reg[3] ),
        .\opcode_reg[3]_0 (\opcode_reg[3]_0 ),
        .\reg_out_reg[7] (\reg_out_reg[7] ),
        .reset_IBUF(reset_IBUF));
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
    \opcode_reg[3] ,
    carry_in_conn,
    \opcode_reg[0] ,
    reset_IBUF,
    E,
    D,
    clk_IBUF_BUFG,
    \opcode_reg[3]_0 ,
    \opcode_reg[2] ,
    \opcode_reg[0]_0 );
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
  input [1:0]\opcode_reg[3] ;
  input carry_in_conn;
  input [1:0]\opcode_reg[0] ;
  input reset_IBUF;
  input [0:0]E;
  input [3:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\opcode_reg[3]_0 ;
  input [0:0]\opcode_reg[2] ;
  input [0:0]\opcode_reg[0]_0 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire carry_in_conn;
  wire carry_out235_out;
  wire carry_out2__1;
  wire carry_out432_out;
  wire carry_out4__1;
  wire carry_out629_out;
  wire carry_out6__1;
  wire clk_IBUF_BUFG;
  wire [3:0]data_in_IBUF;
  wire data_in_sel_conn;
  wire [7:0]data_out_OBUF;
  wire [4:1]mux_out;
  wire [1:0]\opcode_reg[0] ;
  wire [0:0]\opcode_reg[0]_0 ;
  wire [0:0]\opcode_reg[2] ;
  wire [1:0]\opcode_reg[3] ;
  wire [0:0]\opcode_reg[3]_0 ;
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
  wire reset_IBUF;

  register_8 register_8_a
       (.D({D[3:1],mux_out,D[0]}),
        .Q(reg_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\opcode_reg[0] (\opcode_reg[0]_0 ),
        .reset_IBUF(reset_IBUF));
  register_8_0 register_8_b
       (.D({D[3:1],mux_out,D[0]}),
        .Q({register_8_b_n_0,register_8_b_n_1,register_8_b_n_2,register_8_b_n_3,register_8_b_n_4,register_8_b_n_5,register_8_b_n_6,register_8_b_n_7}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\opcode_reg[2] (\opcode_reg[2] ),
        .reset_IBUF(reset_IBUF));
  register_8_1 register_8_c
       (.D(mux_out),
        .Q({register_8_d_n_0,register_8_d_n_1,register_8_d_n_2,register_8_d_n_3,register_8_d_n_4,register_8_d_n_5,register_8_d_n_6,register_8_d_n_7}),
        .carry_in_conn(carry_in_conn),
        .carry_out235_out(carry_out235_out),
        .carry_out2__1(carry_out2__1),
        .carry_out432_out(carry_out432_out),
        .carry_out4__1(carry_out4__1),
        .carry_out629_out(carry_out629_out),
        .carry_out6__1(carry_out6__1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_in_IBUF(data_in_IBUF),
        .data_in_sel_conn(data_in_sel_conn),
        .data_out_OBUF(data_out_OBUF),
        .\opcode_reg[0] (Q),
        .\opcode_reg[0]_0 (\opcode_reg[0] ),
        .\opcode_reg[3] (\opcode_reg[3] ),
        .\opcode_reg[3]_0 (\opcode_reg[3]_0 ),
        .\reg_out_reg[7]_0 (\reg_out_reg[7] ),
        .\reg_out_reg[7]_1 (reg_out),
        .\reg_out_reg[7]_2 ({register_8_b_n_0,register_8_b_n_1,register_8_b_n_2,register_8_b_n_3,register_8_b_n_4,register_8_b_n_5,register_8_b_n_6,register_8_b_n_7}),
        .\reg_out_reg[7]_3 (D),
        .reset_IBUF(reset_IBUF));
  register_8_2 register_8_d
       (.D({D[3:1],mux_out,D[0]}),
        .E(E),
        .Q({register_8_d_n_0,register_8_d_n_1,register_8_d_n_2,register_8_d_n_3,register_8_d_n_4,register_8_d_n_5,register_8_d_n_6,register_8_d_n_7}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF));
endmodule

module register_8
   (Q,
    reset_IBUF,
    \opcode_reg[0] ,
    D,
    clk_IBUF_BUFG);
  output [7:0]Q;
  input reset_IBUF;
  input [0:0]\opcode_reg[0] ;
  input [7:0]D;
  input clk_IBUF_BUFG;

  wire [7:0]D;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire [0:0]\opcode_reg[0] ;
  wire reset_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[0] ),
        .D(D[0]),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[0] ),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[0] ),
        .D(D[2]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[0] ),
        .D(D[3]),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[0] ),
        .D(D[4]),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[0] ),
        .D(D[5]),
        .Q(Q[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[0] ),
        .D(D[6]),
        .Q(Q[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[0] ),
        .D(D[7]),
        .Q(Q[7]),
        .R(reset_IBUF));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_0
   (Q,
    reset_IBUF,
    \opcode_reg[2] ,
    D,
    clk_IBUF_BUFG);
  output [7:0]Q;
  input reset_IBUF;
  input [0:0]\opcode_reg[2] ;
  input [7:0]D;
  input clk_IBUF_BUFG;

  wire [7:0]D;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire [0:0]\opcode_reg[2] ;
  wire reset_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[2] ),
        .D(D[0]),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[2] ),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[2] ),
        .D(D[2]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[2] ),
        .D(D[3]),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[2] ),
        .D(D[4]),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[2] ),
        .D(D[5]),
        .Q(Q[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[2] ),
        .D(D[6]),
        .Q(Q[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[2] ),
        .D(D[7]),
        .Q(Q[7]),
        .R(reset_IBUF));
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
    \opcode_reg[0] ,
    \reg_out_reg[7]_2 ,
    data_in_sel_conn,
    data_in_IBUF,
    \opcode_reg[3] ,
    carry_in_conn,
    \opcode_reg[0]_0 ,
    reset_IBUF,
    \opcode_reg[3]_0 ,
    \reg_out_reg[7]_3 ,
    clk_IBUF_BUFG);
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
  input [1:0]\opcode_reg[0] ;
  input [7:0]\reg_out_reg[7]_2 ;
  input data_in_sel_conn;
  input [3:0]data_in_IBUF;
  input [1:0]\opcode_reg[3] ;
  input carry_in_conn;
  input [1:0]\opcode_reg[0]_0 ;
  input reset_IBUF;
  input [0:0]\opcode_reg[3]_0 ;
  input [3:0]\reg_out_reg[7]_3 ;
  input clk_IBUF_BUFG;

  wire [3:0]D;
  wire [7:0]Q;
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
  wire clk_IBUF_BUFG;
  wire [4:1]data_b_conn;
  wire [3:0]data_in_IBUF;
  wire data_in_sel_conn;
  wire [7:0]data_out_OBUF;
  wire [1:0]\opcode_reg[0] ;
  wire [1:0]\opcode_reg[0]_0 ;
  wire [1:0]\opcode_reg[3] ;
  wire [0:0]\opcode_reg[3]_0 ;
  wire \reg_out[1]_i_2_n_0 ;
  wire \reg_out[2]_i_2_n_0 ;
  wire \reg_out[3]_i_2_n_0 ;
  wire \reg_out[4]_i_2_n_0 ;
  wire \reg_out[7]_i_7_n_0 ;
  wire \reg_out[7]_i_8_n_0 ;
  wire [3:0]\reg_out_reg[7]_0 ;
  wire [7:0]\reg_out_reg[7]_1 ;
  wire [7:0]\reg_out_reg[7]_2 ;
  wire [3:0]\reg_out_reg[7]_3 ;
  wire \reg_out_reg_n_0_[0] ;
  wire \reg_out_reg_n_0_[1] ;
  wire \reg_out_reg_n_0_[2] ;
  wire \reg_out_reg_n_0_[3] ;
  wire \reg_out_reg_n_0_[4] ;
  wire \reg_out_reg_n_0_[5] ;
  wire \reg_out_reg_n_0_[6] ;
  wire \reg_out_reg_n_0_[7] ;
  wire reset_IBUF;

  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[0]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[7]_1 [0]),
        .I3(\opcode_reg[0] [1]),
        .I4(\opcode_reg[0] [0]),
        .I5(\reg_out_reg[7]_2 [0]),
        .O(data_out_OBUF[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[1]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\reg_out_reg[7]_1 [1]),
        .I3(\opcode_reg[0] [1]),
        .I4(\opcode_reg[0] [0]),
        .I5(\reg_out_reg[7]_2 [1]),
        .O(data_out_OBUF[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[2]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\reg_out_reg[7]_1 [2]),
        .I3(\opcode_reg[0] [1]),
        .I4(\opcode_reg[0] [0]),
        .I5(\reg_out_reg[7]_2 [2]),
        .O(data_out_OBUF[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[3]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\reg_out_reg[7]_1 [3]),
        .I3(\opcode_reg[0] [1]),
        .I4(\opcode_reg[0] [0]),
        .I5(\reg_out_reg[7]_2 [3]),
        .O(data_out_OBUF[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[4]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\reg_out_reg[7]_1 [4]),
        .I3(\opcode_reg[0] [1]),
        .I4(\opcode_reg[0] [0]),
        .I5(\reg_out_reg[7]_2 [4]),
        .O(data_out_OBUF[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[5]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\reg_out_reg[7]_1 [5]),
        .I3(\opcode_reg[0] [1]),
        .I4(\opcode_reg[0] [0]),
        .I5(\reg_out_reg[7]_2 [5]),
        .O(data_out_OBUF[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[6]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\reg_out_reg[7]_1 [6]),
        .I3(\opcode_reg[0] [1]),
        .I4(\opcode_reg[0] [0]),
        .I5(\reg_out_reg[7]_2 [6]),
        .O(data_out_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[7]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(\reg_out_reg[7]_1 [7]),
        .I3(\opcode_reg[0] [1]),
        .I4(\opcode_reg[0] [0]),
        .I5(\reg_out_reg[7]_2 [7]),
        .O(data_out_OBUF[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[0]_i_3 
       (.I0(\reg_out_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[7]_1 [0]),
        .I3(\opcode_reg[0]_0 [1]),
        .I4(\opcode_reg[0]_0 [0]),
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
       (.I0(\opcode_reg[3] [0]),
        .I1(\opcode_reg[3] [1]),
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
        .I3(\opcode_reg[0]_0 [1]),
        .I4(\opcode_reg[0]_0 [0]),
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
       (.I0(\opcode_reg[3] [0]),
        .I1(\opcode_reg[3] [1]),
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
        .I3(\opcode_reg[0]_0 [1]),
        .I4(\opcode_reg[0]_0 [0]),
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
       (.I0(\opcode_reg[3] [0]),
        .I1(\opcode_reg[3] [1]),
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
        .I3(\opcode_reg[0]_0 [1]),
        .I4(\opcode_reg[0]_0 [0]),
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
       (.I0(\opcode_reg[3] [0]),
        .I1(\opcode_reg[3] [1]),
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
        .I3(\opcode_reg[0]_0 [1]),
        .I4(\opcode_reg[0]_0 [0]),
        .I5(\reg_out_reg[7]_2 [4]),
        .O(data_b_conn[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[7]_i_10 
       (.I0(\reg_out_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\reg_out_reg[7]_1 [6]),
        .I3(\opcode_reg[0]_0 [1]),
        .I4(\opcode_reg[0]_0 [0]),
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
        .I3(\opcode_reg[0]_0 [1]),
        .I4(\opcode_reg[0]_0 [0]),
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
        .I3(\opcode_reg[0]_0 [1]),
        .I4(\opcode_reg[0]_0 [0]),
        .I5(\reg_out_reg[7]_2 [5]),
        .O(\reg_out_reg[7]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[3]_0 ),
        .D(\reg_out_reg[7]_3 [0]),
        .Q(\reg_out_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[3]_0 ),
        .D(D[0]),
        .Q(\reg_out_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[3]_0 ),
        .D(D[1]),
        .Q(\reg_out_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[3]_0 ),
        .D(D[2]),
        .Q(\reg_out_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[3]_0 ),
        .D(D[3]),
        .Q(\reg_out_reg_n_0_[4] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[3]_0 ),
        .D(\reg_out_reg[7]_3 [1]),
        .Q(\reg_out_reg_n_0_[5] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[3]_0 ),
        .D(\reg_out_reg[7]_3 [2]),
        .Q(\reg_out_reg_n_0_[6] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode_reg[3]_0 ),
        .D(\reg_out_reg[7]_3 [3]),
        .Q(\reg_out_reg_n_0_[7] ),
        .R(reset_IBUF));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_2
   (Q,
    reset_IBUF,
    E,
    D,
    clk_IBUF_BUFG);
  output [7:0]Q;
  input reset_IBUF;
  input [0:0]E;
  input [7:0]D;
  input clk_IBUF_BUFG;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire reset_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(reset_IBUF));
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
    \state_current_reg[2]_0 ,
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
    clk_IBUF_BUFG,
    reset_IBUF);
  output carry_in_conn;
  output data_in_sel_conn;
  output [0:0]\reg_out_reg[7] ;
  output [0:0]\reg_out_reg[7]_0 ;
  output [0:0]\reg_out_reg[7]_1 ;
  output [0:0]E;
  output [3:0]D;
  output [1:0]Q;
  output [3:0]\state_current_reg[2]_0 ;
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
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire a_enable_reg_i_1_n_0;
  wire \alu_sel_reg[0]_i_1_n_0 ;
  wire \alu_sel_reg[1]_i_1_n_0 ;
  wire \alu_sel_reg[1]_i_2_n_0 ;
  wire b_enable_reg_i_1_n_0;
  wire c_enable_reg_i_1_n_0;
  wire carry_in_conn;
  wire carry_in_reg_i_1_n_0;
  wire carry_in_reg_i_2_n_0;
  wire carry_in_reg_i_3_n_0;
  wire carry_in_reg_i_4_n_0;
  wire carry_out235_out;
  wire carry_out2__1;
  wire carry_out432_out;
  wire carry_out4__1;
  wire carry_out629_out;
  wire carry_out6__1;
  wire clk_IBUF_BUFG;
  wire d_enable_reg_i_1_n_0;
  wire \data_a_sel_reg[0]_i_1_n_0 ;
  wire \data_a_sel_reg[0]_i_2_n_0 ;
  wire \data_a_sel_reg[0]_i_3_n_0 ;
  wire \data_a_sel_reg[1]_i_1_n_0 ;
  wire \data_b_sel_reg[0]_i_1_n_0 ;
  wire \data_b_sel_reg[1]_i_1_n_0 ;
  wire \data_b_sel_reg[1]_i_2_n_0 ;
  wire [3:0]data_in_IBUF;
  wire data_in_sel_conn;
  wire data_in_sel_reg_i_1_n_0;
  wire [3:0]data_out_OBUF;
  wire \opcode[0]_i_1_n_0 ;
  wire \opcode[1]_i_1_n_0 ;
  wire \opcode[2]_i_1_n_0 ;
  wire \opcode[3]_i_1_n_0 ;
  wire \opcode[3]_i_2_n_0 ;
  wire [3:0]\operation_debug[3] ;
  wire \operation_debug_reg[2]_i_1_n_0 ;
  wire \operation_debug_reg[3]_i_1_n_0 ;
  wire \operation_debug_reg[3]_i_2_n_0 ;
  wire \operation_debug_reg[3]_i_3_n_0 ;
  wire pc0;
  wire [3:0]pc_debug;
  wire pc_increment;
  wire pc_increment_reg_i_1_n_0;
  wire \pc_reg_rep_n_0_[0] ;
  wire \pc_reg_rep_n_0_[1] ;
  wire \pc_reg_rep_n_0_[2] ;
  wire \pc_reg_rep_n_0_[3] ;
  wire pc_reset;
  wire pc_reset_reg_i_1_n_0;
  wire pc_reset_reg_i_2_n_0;
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
  wire reset_IBUF;
  wire [2:0]state_current;
  wire \state_current[0]_i_1_n_0 ;
  wire \state_current[1]_i_1_n_0 ;
  wire \state_current[1]_i_2_n_0 ;
  wire \state_current[2]_i_1_n_0 ;
  wire [3:0]\state_current_reg[2]_0 ;
  wire [2:0]\state_debug[2] ;
  wire \state_debug_reg[2]_i_1_n_0 ;

  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_UNIQ_BASE_ a_enable_reg
       (.CLR(carry_in_reg_i_2_n_0),
        .D(a_enable_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .PRE(carry_in_reg_i_3_n_0),
        .Q(\reg_out_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h07008100)) 
    a_enable_reg_i_1
       (.I0(\state_current_reg[2]_0 [0]),
        .I1(\state_current_reg[2]_0 [1]),
        .I2(\state_current_reg[2]_0 [3]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(\state_current_reg[2]_0 [2]),
        .O(a_enable_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_sel_reg[0] 
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\alu_sel_reg[0]_i_1_n_0 ),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h1D008000)) 
    \alu_sel_reg[0]_i_1 
       (.I0(\state_current_reg[2]_0 [1]),
        .I1(\state_current_reg[2]_0 [0]),
        .I2(\state_current_reg[2]_0 [2]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(\state_current_reg[2]_0 [3]),
        .O(\alu_sel_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_sel_reg[1] 
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\alu_sel_reg[1]_i_1_n_0 ),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00080800)) 
    \alu_sel_reg[1]_i_1 
       (.I0(\state_current_reg[2]_0 [3]),
        .I1(\operation_debug_reg[3]_i_1_n_0 ),
        .I2(\state_current_reg[2]_0 [2]),
        .I3(\state_current_reg[2]_0 [1]),
        .I4(\state_current_reg[2]_0 [0]),
        .O(\alu_sel_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \alu_sel_reg[1]_i_2 
       (.I0(carry_in_reg_i_3_n_0),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(state_current[2]),
        .O(\alu_sel_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    b_enable_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(b_enable_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h08000400)) 
    b_enable_reg_i_1
       (.I0(\state_current_reg[2]_0 [2]),
        .I1(\operation_debug_reg[3]_i_1_n_0 ),
        .I2(\state_current_reg[2]_0 [3]),
        .I3(\state_current_reg[2]_0 [0]),
        .I4(\state_current_reg[2]_0 [1]),
        .O(b_enable_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    c_enable_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(c_enable_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h002E0000)) 
    c_enable_reg_i_1
       (.I0(\state_current_reg[2]_0 [3]),
        .I1(\state_current_reg[2]_0 [1]),
        .I2(\state_current_reg[2]_0 [0]),
        .I3(\state_current_reg[2]_0 [2]),
        .I4(\operation_debug_reg[3]_i_1_n_0 ),
        .O(c_enable_reg_i_1_n_0));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD15 carry_in_reg
       (.CLR(carry_in_reg_i_2_n_0),
        .D(1'b0),
        .G(carry_in_reg_i_1_n_0),
        .PRE(carry_in_reg_i_3_n_0),
        .Q(carry_in_conn));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h07)) 
    carry_in_reg_i_1
       (.I0(state_current[0]),
        .I1(state_current[1]),
        .I2(state_current[2]),
        .O(carry_in_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    carry_in_reg_i_2
       (.I0(state_current[2]),
        .I1(state_current[1]),
        .I2(state_current[0]),
        .O(carry_in_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000800000080000)) 
    carry_in_reg_i_3
       (.I0(state_current[1]),
        .I1(carry_in_reg_i_4_n_0),
        .I2(\state_current_reg[2]_0 [1]),
        .I3(\state_current_reg[2]_0 [0]),
        .I4(\state_current_reg[2]_0 [3]),
        .I5(\state_current_reg[2]_0 [2]),
        .O(carry_in_reg_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    carry_in_reg_i_4
       (.I0(state_current[0]),
        .I1(state_current[2]),
        .O(carry_in_reg_i_4_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    d_enable_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(d_enable_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h10000800)) 
    d_enable_reg_i_1
       (.I0(\state_current_reg[2]_0 [0]),
        .I1(\state_current_reg[2]_0 [1]),
        .I2(\state_current_reg[2]_0 [2]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(\state_current_reg[2]_0 [3]),
        .O(d_enable_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_a_sel_reg[0] 
       (.CLR(carry_in_reg_i_2_n_0),
        .D(\data_a_sel_reg[0]_i_1_n_0 ),
        .G(\data_a_sel_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'h1010100000102080)) 
    \data_a_sel_reg[0]_i_1 
       (.I0(\state_current_reg[2]_0 [3]),
        .I1(state_current[1]),
        .I2(carry_in_reg_i_4_n_0),
        .I3(\state_current_reg[2]_0 [2]),
        .I4(\state_current_reg[2]_0 [0]),
        .I5(\state_current_reg[2]_0 [1]),
        .O(\data_a_sel_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \data_a_sel_reg[0]_i_2 
       (.I0(\data_a_sel_reg[0]_i_3_n_0 ),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(state_current[2]),
        .O(\data_a_sel_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2004)) 
    \data_a_sel_reg[0]_i_3 
       (.I0(\state_current_reg[2]_0 [2]),
        .I1(\state_current_reg[2]_0 [3]),
        .I2(\state_current_reg[2]_0 [0]),
        .I3(\state_current_reg[2]_0 [1]),
        .O(\data_a_sel_reg[0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_a_sel_reg[1] 
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\data_a_sel_reg[1]_i_1_n_0 ),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h17000C00)) 
    \data_a_sel_reg[1]_i_1 
       (.I0(\state_current_reg[2]_0 [0]),
        .I1(\state_current_reg[2]_0 [1]),
        .I2(\state_current_reg[2]_0 [2]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(\state_current_reg[2]_0 [3]),
        .O(\data_a_sel_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_b_sel_reg[0] 
       (.CLR(1'b0),
        .D(\data_b_sel_reg[0]_i_1_n_0 ),
        .G(\data_b_sel_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_3 [0]));
  LUT6 #(
    .INIT(64'h0000006080400000)) 
    \data_b_sel_reg[0]_i_1 
       (.I0(\state_current_reg[2]_0 [1]),
        .I1(\state_current_reg[2]_0 [0]),
        .I2(carry_in_reg_i_4_n_0),
        .I3(state_current[1]),
        .I4(\state_current_reg[2]_0 [2]),
        .I5(\state_current_reg[2]_0 [3]),
        .O(\data_b_sel_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_b_sel_reg[1] 
       (.CLR(1'b0),
        .D(\data_b_sel_reg[1]_i_1_n_0 ),
        .G(\data_b_sel_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\reg_out_reg[7]_3 [1]));
  LUT6 #(
    .INIT(64'h0000106000400000)) 
    \data_b_sel_reg[1]_i_1 
       (.I0(\state_current_reg[2]_0 [0]),
        .I1(\state_current_reg[2]_0 [1]),
        .I2(carry_in_reg_i_4_n_0),
        .I3(state_current[1]),
        .I4(\state_current_reg[2]_0 [2]),
        .I5(\state_current_reg[2]_0 [3]),
        .O(\data_b_sel_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h455F)) 
    \data_b_sel_reg[1]_i_2 
       (.I0(state_current[2]),
        .I1(\data_a_sel_reg[0]_i_3_n_0 ),
        .I2(state_current[1]),
        .I3(state_current[0]),
        .O(\data_b_sel_reg[1]_i_2_n_0 ));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD16 data_in_sel_reg
       (.CLR(carry_in_reg_i_2_n_0),
        .D(data_in_sel_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .PRE(carry_in_reg_i_3_n_0),
        .Q(data_in_sel_conn));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    data_in_sel_reg_i_1
       (.I0(state_current[2]),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(\state_current_reg[2]_0 [2]),
        .I4(\state_current_reg[2]_0 [3]),
        .O(data_in_sel_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \opcode[0]_i_1 
       (.I0(\pc_reg_rep_n_0_[0] ),
        .O(\opcode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \opcode[1]_i_1 
       (.I0(\pc_reg_rep_n_0_[1] ),
        .I1(\pc_reg_rep_n_0_[0] ),
        .O(\opcode[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \opcode[2]_i_1 
       (.I0(\pc_reg_rep_n_0_[2] ),
        .I1(\pc_reg_rep_n_0_[0] ),
        .I2(\pc_reg_rep_n_0_[1] ),
        .O(\opcode[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \opcode[3]_i_1 
       (.I0(state_current[1]),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .I3(pc_reset),
        .O(\opcode[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \opcode[3]_i_2 
       (.I0(\pc_reg_rep_n_0_[3] ),
        .I1(\pc_reg_rep_n_0_[0] ),
        .I2(\pc_reg_rep_n_0_[1] ),
        .I3(\pc_reg_rep_n_0_[2] ),
        .O(\opcode[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode[3]_i_1_n_0 ),
        .D(\opcode[0]_i_1_n_0 ),
        .Q(\state_current_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode[3]_i_1_n_0 ),
        .D(\opcode[1]_i_1_n_0 ),
        .Q(\state_current_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode[3]_i_1_n_0 ),
        .D(\opcode[2]_i_1_n_0 ),
        .Q(\state_current_reg[2]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode[3]_i_1_n_0 ),
        .D(\opcode[3]_i_2_n_0 ),
        .Q(\state_current_reg[2]_0 [3]),
        .R(1'b0));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD17 \operation_debug_reg[0] 
       (.CLR(\operation_debug_reg[3]_i_3_n_0 ),
        .D(\state_current_reg[2]_0 [0]),
        .G(\operation_debug_reg[3]_i_1_n_0 ),
        .PRE(\operation_debug_reg[2]_i_1_n_0 ),
        .Q(\operation_debug[3] [0]));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD18 \operation_debug_reg[1] 
       (.CLR(\operation_debug_reg[3]_i_3_n_0 ),
        .D(\state_current_reg[2]_0 [1]),
        .G(\operation_debug_reg[3]_i_1_n_0 ),
        .PRE(\operation_debug_reg[2]_i_1_n_0 ),
        .Q(\operation_debug[3] [1]));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD19 \operation_debug_reg[2] 
       (.CLR(\operation_debug_reg[3]_i_3_n_0 ),
        .D(\state_current_reg[2]_0 [2]),
        .G(\operation_debug_reg[3]_i_1_n_0 ),
        .PRE(\operation_debug_reg[2]_i_1_n_0 ),
        .Q(\operation_debug[3] [2]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \operation_debug_reg[2]_i_1 
       (.I0(\state_current_reg[2]_0 [2]),
        .I1(\state_current_reg[2]_0 [3]),
        .I2(pc_reset_reg_i_2_n_0),
        .I3(state_current[1]),
        .I4(state_current[0]),
        .I5(state_current[2]),
        .O(\operation_debug_reg[2]_i_1_n_0 ));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD20 \operation_debug_reg[3] 
       (.CLR(\operation_debug_reg[3]_i_2_n_0 ),
        .D(\state_current_reg[2]_0 [3]),
        .G(\operation_debug_reg[3]_i_1_n_0 ),
        .PRE(\operation_debug_reg[3]_i_3_n_0 ),
        .Q(\operation_debug[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \operation_debug_reg[3]_i_1 
       (.I0(state_current[2]),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .O(\operation_debug_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \operation_debug_reg[3]_i_2 
       (.I0(\state_current_reg[2]_0 [1]),
        .I1(\state_current_reg[2]_0 [3]),
        .I2(\state_current_reg[2]_0 [0]),
        .I3(state_current[1]),
        .I4(carry_in_reg_i_4_n_0),
        .I5(\state_current_reg[2]_0 [2]),
        .O(\operation_debug_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \operation_debug_reg[3]_i_3 
       (.I0(\state_current_reg[2]_0 [2]),
        .I1(carry_in_reg_i_4_n_0),
        .I2(state_current[1]),
        .I3(\state_current_reg[2]_0 [0]),
        .I4(\state_current_reg[2]_0 [3]),
        .I5(\state_current_reg[2]_0 [1]),
        .O(\operation_debug_reg[3]_i_3_n_0 ));
  (* INIT = "1'b0" *) 
  (* XILINX_REPORT_XFORM = "LDCP" *) 
  LDCP_HD21 pc_increment_reg
       (.CLR(carry_in_reg_i_2_n_0),
        .D(pc_increment_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .PRE(carry_in_reg_i_3_n_0),
        .Q(pc_increment));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h1F00FD00)) 
    pc_increment_reg_i_1
       (.I0(\state_current_reg[2]_0 [3]),
        .I1(\state_current_reg[2]_0 [0]),
        .I2(\state_current_reg[2]_0 [1]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(\state_current_reg[2]_0 [2]),
        .O(pc_increment_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[0]),
        .Q(pc_debug[0]),
        .R(pc0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[1]),
        .Q(pc_debug[1]),
        .R(pc0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[2]),
        .Q(pc_debug[2]),
        .R(pc0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[3]),
        .Q(pc_debug[3]),
        .R(pc0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg_rep[0] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[0]),
        .Q(\pc_reg_rep_n_0_[0] ),
        .R(pc0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg_rep[1] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[1]),
        .Q(\pc_reg_rep_n_0_[1] ),
        .R(pc0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg_rep[2] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[2]),
        .Q(\pc_reg_rep_n_0_[2] ),
        .R(pc0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg_rep[3] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[3]),
        .Q(\pc_reg_rep_n_0_[3] ),
        .R(pc0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pc_rep[0]_i_1 
       (.I0(pc_debug[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pc_rep[1]_i_1 
       (.I0(pc_debug[0]),
        .I1(pc_debug[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pc_rep[2]_i_1 
       (.I0(pc_debug[1]),
        .I1(pc_debug[0]),
        .I2(pc_debug[2]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \pc_rep[3]_i_1 
       (.I0(pc_reset),
        .I1(state_current[2]),
        .I2(state_current[0]),
        .I3(state_current[1]),
        .O(pc0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pc_rep[3]_i_2 
       (.I0(pc_debug[2]),
        .I1(pc_debug[0]),
        .I2(pc_debug[1]),
        .I3(pc_debug[3]),
        .O(plusOp[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    pc_reset_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(pc_reset_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(pc_reset));
  LUT6 #(
    .INIT(64'hFEDDEEDDEEDDEEDD)) 
    pc_reset_reg_i_1
       (.I0(state_current[1]),
        .I1(state_current[2]),
        .I2(pc_reset_reg_i_2_n_0),
        .I3(state_current[0]),
        .I4(\state_current_reg[2]_0 [3]),
        .I5(\state_current_reg[2]_0 [2]),
        .O(pc_reset_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pc_reset_reg_i_2
       (.I0(\state_current_reg[2]_0 [0]),
        .I1(\state_current_reg[2]_0 [1]),
        .O(pc_reset_reg_i_2_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0015)) 
    \state_current[0]_i_1 
       (.I0(state_current[0]),
        .I1(state_current[1]),
        .I2(state_current[2]),
        .I3(reset_IBUF),
        .O(\state_current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000AAAE)) 
    \state_current[1]_i_1 
       (.I0(\state_current[1]_i_2_n_0 ),
        .I1(state_current[2]),
        .I2(state_current[1]),
        .I3(state_current[0]),
        .I4(reset_IBUF),
        .O(\state_current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0D0F0F0F0F0F0B0)) 
    \state_current[1]_i_2 
       (.I0(\state_current_reg[2]_0 [2]),
        .I1(\state_current_reg[2]_0 [3]),
        .I2(carry_in_reg_i_4_n_0),
        .I3(state_current[1]),
        .I4(\state_current_reg[2]_0 [1]),
        .I5(\state_current_reg[2]_0 [0]),
        .O(\state_current[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020040000)) 
    \state_current[2]_i_1 
       (.I0(\state_current_reg[2]_0 [2]),
        .I1(\state_current_reg[2]_0 [3]),
        .I2(\state_current_reg[2]_0 [0]),
        .I3(\state_current_reg[2]_0 [1]),
        .I4(\operation_debug_reg[3]_i_1_n_0 ),
        .I5(reset_IBUF),
        .O(\state_current[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_current_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_current[0]_i_1_n_0 ),
        .Q(state_current[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_current_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_current[1]_i_1_n_0 ),
        .Q(state_current[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_current_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_current[2]_i_1_n_0 ),
        .Q(state_current[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_debug_reg[0] 
       (.CLR(1'b0),
        .D(state_current[0]),
        .G(\state_debug_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\state_debug[2] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_debug_reg[1] 
       (.CLR(1'b0),
        .D(state_current[1]),
        .G(\state_debug_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\state_debug[2] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_debug_reg[2] 
       (.CLR(1'b0),
        .D(state_current[2]),
        .G(\state_debug_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\state_debug[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \state_debug_reg[2]_i_1 
       (.I0(state_current[1]),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .O(\state_debug_reg[2]_i_1_n_0 ));
endmodule

(* ECO_CHECKSUM = "bb3e1017" *) 
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
 $sdf_annotate("risc_cpu_8_time_impl.sdf",,,,"tool_control");
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
       (.D({mux_out[7:5],mux_out[0]}),
        .E(d_enable_conn),
        .Q(data_a_sel_conn),
        .carry_in_conn(carry_in_conn),
        .carry_out235_out(\alu_component/adder_8_component/carry_out235_out ),
        .carry_out2__1(\alu_component/adder_8_component/carry_out2__1 ),
        .carry_out432_out(\alu_component/adder_8_component/carry_out432_out ),
        .carry_out4__1(\alu_component/adder_8_component/carry_out4__1 ),
        .carry_out629_out(\alu_component/adder_8_component/carry_out629_out ),
        .carry_out6__1(\alu_component/adder_8_component/carry_out6__1 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_in_IBUF(data_in_IBUF[4:1]),
        .data_in_sel_conn(data_in_sel_conn),
        .data_out_OBUF(data_out_OBUF),
        .\opcode_reg[0] (data_b_sel_conn),
        .\opcode_reg[0]_0 (a_enable_conn),
        .\opcode_reg[2] (b_enable_conn),
        .\opcode_reg[3] (alu_sel_conn),
        .\opcode_reg[3]_0 (c_enable_conn),
        .\reg_out_reg[7] ({data_b_conn[7:5],data_b_conn[0]}),
        .reset_IBUF(reset_IBUF));
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
       (.D({mux_out[7:5],mux_out[0]}),
        .E(d_enable_conn),
        .Q(alu_sel_conn),
        .carry_in_conn(carry_in_conn),
        .carry_out235_out(\alu_component/adder_8_component/carry_out235_out ),
        .carry_out2__1(\alu_component/adder_8_component/carry_out2__1 ),
        .carry_out432_out(\alu_component/adder_8_component/carry_out432_out ),
        .carry_out4__1(\alu_component/adder_8_component/carry_out4__1 ),
        .carry_out629_out(\alu_component/adder_8_component/carry_out629_out ),
        .carry_out6__1(\alu_component/adder_8_component/carry_out6__1 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_in_IBUF({data_in_IBUF[7:5],data_in_IBUF[0]}),
        .data_in_sel_conn(data_in_sel_conn),
        .data_out_OBUF({data_out_OBUF[7:5],data_out_OBUF[0]}),
        .\operation_debug[3] (operation_debug_OBUF),
        .pc_debug(pc_debug_OBUF),
        .\reg_out_reg[7] (a_enable_conn),
        .\reg_out_reg[7]_0 (b_enable_conn),
        .\reg_out_reg[7]_1 (c_enable_conn),
        .\reg_out_reg[7]_2 (data_a_sel_conn),
        .\reg_out_reg[7]_3 (data_b_sel_conn),
        .\reg_out_reg[7]_4 ({data_b_conn[7:5],data_b_conn[0]}),
        .reset_IBUF(reset_IBUF),
        .\state_current_reg[2]_0 (opcode_debug_OBUF),
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
