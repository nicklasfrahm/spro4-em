// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Mar 14 10:06:09 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/risc-cpu/risc-cpu.sim/tests/impl/timing/xsim/datapath_8_test_time_impl.v}
// Design      : datapath_8
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "dc8d2afc" *) 
(* NotValidForBitStream *)
module datapath_8
   (clk,
    reset,
    a_enable,
    b_enable,
    c_enable,
    d_enable,
    carry_in,
    carry_out,
    data_in_sel,
    alu_sel,
    data_in,
    data_a_sel,
    data_b_sel,
    data_out);
  input clk;
  input reset;
  input a_enable;
  input b_enable;
  input c_enable;
  input d_enable;
  input carry_in;
  output carry_out;
  input data_in_sel;
  input [1:0]alu_sel;
  input [7:0]data_in;
  input [1:0]data_a_sel;
  input [1:0]data_b_sel;
  output [7:0]data_out;

  wire a_enable;
  wire a_enable_IBUF;
  wire [1:0]alu_sel;
  wire [1:0]alu_sel_IBUF;
  wire b_enable;
  wire b_enable_IBUF;
  wire c_enable;
  wire c_enable_IBUF;
  wire carry_in;
  wire carry_in_IBUF;
  wire carry_out;
  wire carry_out_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d_enable;
  wire d_enable_IBUF;
  wire [1:0]data_a_sel;
  wire [1:0]data_a_sel_IBUF;
  wire [1:0]data_b_sel;
  wire [1:0]data_b_sel_IBUF;
  wire [7:0]data_in;
  wire [7:0]data_in_IBUF;
  wire data_in_sel;
  wire data_in_sel_IBUF;
  wire [7:0]data_out;
  wire [7:0]data_out_OBUF;
  wire reset;
  wire reset_IBUF;

initial begin
 $sdf_annotate("datapath_8_test_time_impl.sdf",,,,"tool_control");
end
  IBUF a_enable_IBUF_inst
       (.I(a_enable),
        .O(a_enable_IBUF));
  IBUF \alu_sel_IBUF[0]_inst 
       (.I(alu_sel[0]),
        .O(alu_sel_IBUF[0]));
  IBUF \alu_sel_IBUF[1]_inst 
       (.I(alu_sel[1]),
        .O(alu_sel_IBUF[1]));
  IBUF b_enable_IBUF_inst
       (.I(b_enable),
        .O(b_enable_IBUF));
  IBUF c_enable_IBUF_inst
       (.I(c_enable),
        .O(c_enable_IBUF));
  IBUF carry_in_IBUF_inst
       (.I(carry_in),
        .O(carry_in_IBUF));
  OBUF carry_out_OBUF_inst
       (.I(carry_out_OBUF),
        .O(carry_out));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF d_enable_IBUF_inst
       (.I(d_enable),
        .O(d_enable_IBUF));
  IBUF \data_a_sel_IBUF[0]_inst 
       (.I(data_a_sel[0]),
        .O(data_a_sel_IBUF[0]));
  IBUF \data_a_sel_IBUF[1]_inst 
       (.I(data_a_sel[1]),
        .O(data_a_sel_IBUF[1]));
  IBUF \data_b_sel_IBUF[0]_inst 
       (.I(data_b_sel[0]),
        .O(data_b_sel_IBUF[0]));
  IBUF \data_b_sel_IBUF[1]_inst 
       (.I(data_b_sel[1]),
        .O(data_b_sel_IBUF[1]));
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
  IBUF data_in_sel_IBUF_inst
       (.I(data_in_sel),
        .O(data_in_sel_IBUF));
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
  memory_8_4 memory_8_4_component
       (.CLK(clk_IBUF_BUFG),
        .E(d_enable_IBUF),
        .SR(reset_IBUF),
        .a_enable(a_enable_IBUF),
        .alu_sel_IBUF(alu_sel_IBUF),
        .b_enable(b_enable_IBUF),
        .c_enable(c_enable_IBUF),
        .carry_in_IBUF(carry_in_IBUF),
        .carry_out_OBUF(carry_out_OBUF),
        .data_a_sel_IBUF(data_a_sel_IBUF),
        .data_b_sel_IBUF(data_b_sel_IBUF),
        .data_in_IBUF(data_in_IBUF),
        .data_in_sel_IBUF(data_in_sel_IBUF),
        .data_out_OBUF(data_out_OBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module memory_8_4
   (data_out_OBUF,
    carry_out_OBUF,
    SR,
    E,
    CLK,
    c_enable,
    b_enable,
    a_enable,
    data_in_sel_IBUF,
    data_in_IBUF,
    carry_in_IBUF,
    alu_sel_IBUF,
    data_a_sel_IBUF,
    data_b_sel_IBUF);
  output [7:0]data_out_OBUF;
  output carry_out_OBUF;
  input [0:0]SR;
  input [0:0]E;
  input CLK;
  input [0:0]c_enable;
  input [0:0]b_enable;
  input [0:0]a_enable;
  input data_in_sel_IBUF;
  input [7:0]data_in_IBUF;
  input carry_in_IBUF;
  input [1:0]alu_sel_IBUF;
  input [1:0]data_a_sel_IBUF;
  input [1:0]data_b_sel_IBUF;

  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire [0:0]a_enable;
  wire [1:0]alu_sel_IBUF;
  wire [0:0]b_enable;
  wire [0:0]c_enable;
  wire carry_in_IBUF;
  wire carry_out_OBUF;
  wire [1:0]data_a_sel_IBUF;
  wire [1:0]data_b_sel_IBUF;
  wire [7:0]data_in_IBUF;
  wire data_in_sel_IBUF;
  wire [7:0]data_out_OBUF;
  wire [7:0]mux_out;
  wire [7:0]reg_out;
  wire register_8_a_n_0;
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
        .D(mux_out),
        .Q(reg_out),
        .SR(SR),
        .a_enable(a_enable),
        .alu_sel_IBUF(alu_sel_IBUF),
        .\reg_out_reg[5]_0 (register_8_a_n_0));
  register_8_0 register_8_b
       (.CLK(CLK),
        .D(mux_out),
        .Q({register_8_b_n_0,register_8_b_n_1,register_8_b_n_2,register_8_b_n_3,register_8_b_n_4,register_8_b_n_5,register_8_b_n_6,register_8_b_n_7}),
        .SR(SR),
        .b_enable(b_enable));
  register_8_1 register_8_c
       (.CLK(CLK),
        .D(mux_out),
        .Q({register_8_d_n_0,register_8_d_n_1,register_8_d_n_2,register_8_d_n_3,register_8_d_n_4,register_8_d_n_5,register_8_d_n_6,register_8_d_n_7}),
        .SR(SR),
        .\alu_sel[1] (register_8_a_n_0),
        .alu_sel_IBUF(alu_sel_IBUF),
        .c_enable(c_enable),
        .carry_in_IBUF(carry_in_IBUF),
        .carry_out_OBUF(carry_out_OBUF),
        .data_a_sel_IBUF(data_a_sel_IBUF),
        .data_b_sel_IBUF(data_b_sel_IBUF),
        .data_in_IBUF(data_in_IBUF),
        .data_in_sel_IBUF(data_in_sel_IBUF),
        .data_out_OBUF(data_out_OBUF[7:1]),
        .\reg_out_reg[0]_0 (data_out_OBUF[0]),
        .\reg_out_reg[7]_0 (reg_out),
        .\reg_out_reg[7]_1 ({register_8_b_n_0,register_8_b_n_1,register_8_b_n_2,register_8_b_n_3,register_8_b_n_4,register_8_b_n_5,register_8_b_n_6,register_8_b_n_7}));
  register_8_2 register_8_d
       (.CLK(CLK),
        .D(mux_out),
        .E(E),
        .Q({register_8_d_n_0,register_8_d_n_1,register_8_d_n_2,register_8_d_n_3,register_8_d_n_4,register_8_d_n_5,register_8_d_n_6,register_8_d_n_7}),
        .SR(SR));
endmodule

module register_8
   (\reg_out_reg[5]_0 ,
    Q,
    alu_sel_IBUF,
    SR,
    a_enable,
    D,
    CLK);
  output \reg_out_reg[5]_0 ;
  output [7:0]Q;
  input [1:0]alu_sel_IBUF;
  input [0:0]SR;
  input [0:0]a_enable;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]a_enable;
  wire [1:0]alu_sel_IBUF;
  wire \reg_out_reg[5]_0 ;

  LUT2 #(
    .INIT(4'h1)) 
    \reg_out[7]_i_3 
       (.I0(alu_sel_IBUF[0]),
        .I1(alu_sel_IBUF[1]),
        .O(\reg_out_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(CLK),
        .CE(a_enable),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(CLK),
        .CE(a_enable),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(CLK),
        .CE(a_enable),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(CLK),
        .CE(a_enable),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(CLK),
        .CE(a_enable),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(CLK),
        .CE(a_enable),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(CLK),
        .CE(a_enable),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(CLK),
        .CE(a_enable),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_0
   (Q,
    SR,
    b_enable,
    D,
    CLK);
  output [7:0]Q;
  input [0:0]SR;
  input [0:0]b_enable;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]b_enable;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(CLK),
        .CE(b_enable),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(CLK),
        .CE(b_enable),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(CLK),
        .CE(b_enable),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(CLK),
        .CE(b_enable),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(CLK),
        .CE(b_enable),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(CLK),
        .CE(b_enable),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(CLK),
        .CE(b_enable),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(CLK),
        .CE(b_enable),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_1
   (D,
    \reg_out_reg[0]_0 ,
    data_out_OBUF,
    carry_out_OBUF,
    data_in_sel_IBUF,
    data_in_IBUF,
    carry_in_IBUF,
    alu_sel_IBUF,
    \alu_sel[1] ,
    Q,
    \reg_out_reg[7]_0 ,
    data_a_sel_IBUF,
    \reg_out_reg[7]_1 ,
    data_b_sel_IBUF,
    SR,
    c_enable,
    CLK);
  output [7:0]D;
  output \reg_out_reg[0]_0 ;
  output [6:0]data_out_OBUF;
  output carry_out_OBUF;
  input data_in_sel_IBUF;
  input [7:0]data_in_IBUF;
  input carry_in_IBUF;
  input [1:0]alu_sel_IBUF;
  input \alu_sel[1] ;
  input [7:0]Q;
  input [7:0]\reg_out_reg[7]_0 ;
  input [1:0]data_a_sel_IBUF;
  input [7:0]\reg_out_reg[7]_1 ;
  input [1:0]data_b_sel_IBUF;
  input [0:0]SR;
  input [0:0]c_enable;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \alu_component/adder_8_component/carry_out10__1 ;
  wire \alu_component/adder_8_component/carry_out12__1 ;
  wire \alu_component/adder_8_component/carry_out14__1 ;
  wire \alu_component/adder_8_component/carry_out235_out ;
  wire \alu_component/adder_8_component/carry_out2__1 ;
  wire \alu_component/adder_8_component/carry_out432_out ;
  wire \alu_component/adder_8_component/carry_out4__1 ;
  wire \alu_component/adder_8_component/carry_out629_out ;
  wire \alu_component/adder_8_component/carry_out6__1 ;
  wire \alu_component/adder_8_component/carry_out826_out ;
  wire \alu_component/adder_8_component/carry_out8__1 ;
  wire \alu_sel[1] ;
  wire [1:0]alu_sel_IBUF;
  wire [0:0]c_enable;
  wire carry_in_IBUF;
  wire carry_out_OBUF;
  wire [1:0]data_a_sel_IBUF;
  wire [7:0]data_b_conn;
  wire [1:0]data_b_sel_IBUF;
  wire [7:0]data_in_IBUF;
  wire data_in_sel_IBUF;
  wire [6:0]data_out_OBUF;
  wire \reg_out[0]_i_2_n_0 ;
  wire \reg_out[1]_i_2_n_0 ;
  wire \reg_out[2]_i_2_n_0 ;
  wire \reg_out[3]_i_2_n_0 ;
  wire \reg_out[4]_i_2_n_0 ;
  wire \reg_out[5]_i_2_n_0 ;
  wire \reg_out[6]_i_2_n_0 ;
  wire \reg_out[7]_i_2_n_0 ;
  wire \reg_out[7]_i_6_n_0 ;
  wire \reg_out[7]_i_7_n_0 ;
  wire \reg_out_reg[0]_0 ;
  wire [7:0]\reg_out_reg[7]_0 ;
  wire [7:0]\reg_out_reg[7]_1 ;
  wire \reg_out_reg_n_0_[0] ;
  wire \reg_out_reg_n_0_[1] ;
  wire \reg_out_reg_n_0_[2] ;
  wire \reg_out_reg_n_0_[3] ;
  wire \reg_out_reg_n_0_[4] ;
  wire \reg_out_reg_n_0_[5] ;
  wire \reg_out_reg_n_0_[6] ;
  wire \reg_out_reg_n_0_[7] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    carry_out_OBUF_inst_i_1
       (.I0(\alu_component/adder_8_component/carry_out4__1 ),
        .I1(data_out_OBUF[5]),
        .I2(data_b_conn[6]),
        .I3(data_out_OBUF[6]),
        .I4(data_b_conn[7]),
        .O(carry_out_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    carry_out_OBUF_inst_i_2
       (.I0(\alu_component/adder_8_component/carry_out8__1 ),
        .I1(data_out_OBUF[3]),
        .I2(data_b_conn[4]),
        .I3(data_out_OBUF[4]),
        .I4(data_b_conn[5]),
        .O(\alu_component/adder_8_component/carry_out4__1 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    carry_out_OBUF_inst_i_3
       (.I0(\reg_out_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\reg_out_reg[7]_0 [6]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [6]),
        .O(data_b_conn[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    carry_out_OBUF_inst_i_4
       (.I0(\reg_out_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(\reg_out_reg[7]_0 [7]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [7]),
        .O(data_b_conn[7]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    carry_out_OBUF_inst_i_5
       (.I0(\alu_component/adder_8_component/carry_out12__1 ),
        .I1(data_out_OBUF[1]),
        .I2(data_b_conn[2]),
        .I3(data_out_OBUF[2]),
        .I4(data_b_conn[3]),
        .O(\alu_component/adder_8_component/carry_out8__1 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    carry_out_OBUF_inst_i_6
       (.I0(\reg_out_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\reg_out_reg[7]_0 [4]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [4]),
        .O(data_b_conn[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    carry_out_OBUF_inst_i_7
       (.I0(\reg_out_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\reg_out_reg[7]_0 [5]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [5]),
        .O(data_b_conn[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[0]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[7]_0 [0]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [0]),
        .O(\reg_out_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[1]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\reg_out_reg[7]_0 [1]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [1]),
        .O(data_out_OBUF[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[2]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\reg_out_reg[7]_0 [2]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [2]),
        .O(data_out_OBUF[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[3]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\reg_out_reg[7]_0 [3]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [3]),
        .O(data_out_OBUF[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[4]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\reg_out_reg[7]_0 [4]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [4]),
        .O(data_out_OBUF[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[5]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\reg_out_reg[7]_0 [5]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [5]),
        .O(data_out_OBUF[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[6]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\reg_out_reg[7]_0 [6]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [6]),
        .O(data_out_OBUF[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \data_out_OBUF[7]_inst_i_1 
       (.I0(\reg_out_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(\reg_out_reg[7]_0 [7]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [7]),
        .O(data_out_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[0]_i_1 
       (.I0(\reg_out[0]_i_2_n_0 ),
        .I1(data_in_sel_IBUF),
        .I2(data_in_IBUF[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF23D310E)) 
    \reg_out[0]_i_2 
       (.I0(carry_in_IBUF),
        .I1(alu_sel_IBUF[0]),
        .I2(alu_sel_IBUF[1]),
        .I3(\reg_out_reg[0]_0 ),
        .I4(data_b_conn[0]),
        .O(\reg_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[0]_i_3 
       (.I0(\reg_out_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[7]_0 [0]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [0]),
        .O(data_b_conn[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[1]_i_1 
       (.I0(\reg_out[1]_i_2_n_0 ),
        .I1(data_in_sel_IBUF),
        .I2(data_in_IBUF[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hD643C752)) 
    \reg_out[1]_i_2 
       (.I0(alu_sel_IBUF[0]),
        .I1(alu_sel_IBUF[1]),
        .I2(data_out_OBUF[0]),
        .I3(data_b_conn[1]),
        .I4(\alu_component/adder_8_component/carry_out14__1 ),
        .O(\reg_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[1]_i_3 
       (.I0(\reg_out_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\reg_out_reg[7]_0 [1]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [1]),
        .O(data_b_conn[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \reg_out[1]_i_4 
       (.I0(carry_in_IBUF),
        .I1(\reg_out_reg[0]_0 ),
        .I2(data_b_conn[0]),
        .O(\alu_component/adder_8_component/carry_out14__1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[2]_i_1 
       (.I0(\reg_out[2]_i_2_n_0 ),
        .I1(data_in_sel_IBUF),
        .I2(data_in_IBUF[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hD643C752)) 
    \reg_out[2]_i_2 
       (.I0(alu_sel_IBUF[0]),
        .I1(alu_sel_IBUF[1]),
        .I2(data_out_OBUF[1]),
        .I3(data_b_conn[2]),
        .I4(\alu_component/adder_8_component/carry_out12__1 ),
        .O(\reg_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[2]_i_3 
       (.I0(\reg_out_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\reg_out_reg[7]_0 [2]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [2]),
        .O(data_b_conn[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \reg_out[2]_i_4 
       (.I0(carry_in_IBUF),
        .I1(\reg_out_reg[0]_0 ),
        .I2(data_b_conn[0]),
        .I3(data_out_OBUF[0]),
        .I4(data_b_conn[1]),
        .O(\alu_component/adder_8_component/carry_out12__1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[3]_i_1 
       (.I0(\reg_out[3]_i_2_n_0 ),
        .I1(data_in_sel_IBUF),
        .I2(data_in_IBUF[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hD643C752)) 
    \reg_out[3]_i_2 
       (.I0(alu_sel_IBUF[0]),
        .I1(alu_sel_IBUF[1]),
        .I2(data_out_OBUF[2]),
        .I3(data_b_conn[3]),
        .I4(\alu_component/adder_8_component/carry_out10__1 ),
        .O(\reg_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \reg_out[3]_i_3 
       (.I0(\reg_out_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\reg_out_reg[7]_0 [3]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [3]),
        .O(data_b_conn[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \reg_out[3]_i_4 
       (.I0(\alu_component/adder_8_component/carry_out12__1 ),
        .I1(data_out_OBUF[1]),
        .I2(data_b_conn[2]),
        .O(\alu_component/adder_8_component/carry_out10__1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[4]_i_1 
       (.I0(\reg_out[4]_i_2_n_0 ),
        .I1(data_in_sel_IBUF),
        .I2(data_in_IBUF[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hD643C752)) 
    \reg_out[4]_i_2 
       (.I0(alu_sel_IBUF[0]),
        .I1(alu_sel_IBUF[1]),
        .I2(data_out_OBUF[3]),
        .I3(data_b_conn[4]),
        .I4(\alu_component/adder_8_component/carry_out8__1 ),
        .O(\reg_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAFFFFAEEA0000)) 
    \reg_out[5]_i_1 
       (.I0(\reg_out[5]_i_2_n_0 ),
        .I1(\alu_sel[1] ),
        .I2(\alu_component/adder_8_component/carry_out629_out ),
        .I3(\alu_component/adder_8_component/carry_out6__1 ),
        .I4(data_in_sel_IBUF),
        .I5(data_in_IBUF[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA624)) 
    \reg_out[5]_i_2 
       (.I0(alu_sel_IBUF[1]),
        .I1(alu_sel_IBUF[0]),
        .I2(data_out_OBUF[4]),
        .I3(data_b_conn[5]),
        .O(\reg_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[5]_i_3 
       (.I0(data_out_OBUF[4]),
        .I1(data_b_conn[5]),
        .O(\alu_component/adder_8_component/carry_out629_out ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \reg_out[5]_i_4 
       (.I0(\alu_component/adder_8_component/carry_out8__1 ),
        .I1(data_out_OBUF[3]),
        .I2(data_b_conn[4]),
        .O(\alu_component/adder_8_component/carry_out6__1 ));
  LUT6 #(
    .INIT(64'hAEEAFFFFAEEA0000)) 
    \reg_out[6]_i_1 
       (.I0(\reg_out[6]_i_2_n_0 ),
        .I1(\alu_sel[1] ),
        .I2(\alu_component/adder_8_component/carry_out432_out ),
        .I3(\alu_component/adder_8_component/carry_out4__1 ),
        .I4(data_in_sel_IBUF),
        .I5(data_in_IBUF[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hA624)) 
    \reg_out[6]_i_2 
       (.I0(alu_sel_IBUF[1]),
        .I1(alu_sel_IBUF[0]),
        .I2(data_out_OBUF[5]),
        .I3(data_b_conn[6]),
        .O(\reg_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[6]_i_3 
       (.I0(data_out_OBUF[5]),
        .I1(data_b_conn[6]),
        .O(\alu_component/adder_8_component/carry_out432_out ));
  LUT6 #(
    .INIT(64'hAEEAFFFFAEEA0000)) 
    \reg_out[7]_i_1 
       (.I0(\reg_out[7]_i_2_n_0 ),
        .I1(\alu_sel[1] ),
        .I2(\alu_component/adder_8_component/carry_out235_out ),
        .I3(\alu_component/adder_8_component/carry_out2__1 ),
        .I4(data_in_sel_IBUF),
        .I5(data_in_IBUF[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA624)) 
    \reg_out[7]_i_2 
       (.I0(alu_sel_IBUF[1]),
        .I1(alu_sel_IBUF[0]),
        .I2(data_out_OBUF[6]),
        .I3(data_b_conn[7]),
        .O(\reg_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_4 
       (.I0(data_out_OBUF[6]),
        .I1(data_b_conn[7]),
        .O(\alu_component/adder_8_component/carry_out235_out ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \reg_out[7]_i_5 
       (.I0(\reg_out[7]_i_6_n_0 ),
        .I1(\reg_out[7]_i_7_n_0 ),
        .I2(data_out_OBUF[4]),
        .I3(data_b_conn[5]),
        .I4(data_out_OBUF[5]),
        .I5(data_b_conn[6]),
        .O(\alu_component/adder_8_component/carry_out2__1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_out[7]_i_6 
       (.I0(data_out_OBUF[3]),
        .I1(data_b_conn[4]),
        .O(\reg_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \reg_out[7]_i_7 
       (.I0(\alu_component/adder_8_component/carry_out826_out ),
        .I1(data_b_conn[3]),
        .I2(data_out_OBUF[2]),
        .I3(data_b_conn[2]),
        .I4(data_out_OBUF[1]),
        .I5(\alu_component/adder_8_component/carry_out12__1 ),
        .O(\reg_out[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_8 
       (.I0(data_out_OBUF[3]),
        .I1(data_b_conn[4]),
        .O(\alu_component/adder_8_component/carry_out826_out ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(CLK),
        .CE(c_enable),
        .D(D[0]),
        .Q(\reg_out_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(CLK),
        .CE(c_enable),
        .D(D[1]),
        .Q(\reg_out_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(CLK),
        .CE(c_enable),
        .D(D[2]),
        .Q(\reg_out_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(CLK),
        .CE(c_enable),
        .D(D[3]),
        .Q(\reg_out_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(CLK),
        .CE(c_enable),
        .D(D[4]),
        .Q(\reg_out_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(CLK),
        .CE(c_enable),
        .D(D[5]),
        .Q(\reg_out_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(CLK),
        .CE(c_enable),
        .D(D[6]),
        .Q(\reg_out_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(CLK),
        .CE(c_enable),
        .D(D[7]),
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
