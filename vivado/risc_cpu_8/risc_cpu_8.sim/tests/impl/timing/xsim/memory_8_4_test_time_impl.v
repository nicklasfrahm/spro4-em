// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Wed Mar  7 09:42:05 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/risc-cpu/risc-cpu.sim/tests/impl/timing/xsim/memory_8_4_test_time_impl.v}
// Design      : memory_8_4
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "2b7b5" *) 
(* NotValidForBitStream *)
module memory_8_4
   (clk,
    reset,
    a_enable,
    b_enable,
    c_enable,
    d_enable,
    data_in,
    data_a_sel,
    data_b_sel,
    data_a_out,
    data_b_out);
  input clk;
  input reset;
  input a_enable;
  input b_enable;
  input c_enable;
  input d_enable;
  input [7:0]data_in;
  input [1:0]data_a_sel;
  input [1:0]data_b_sel;
  output [7:0]data_a_out;
  output [7:0]data_b_out;

  wire a_enable;
  wire a_enable_IBUF;
  wire b_enable;
  wire b_enable_IBUF;
  wire c_enable;
  wire c_enable_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d_enable;
  wire d_enable_IBUF;
  wire [7:0]data_a_out;
  wire [7:0]data_a_out_OBUF;
  wire [1:0]data_a_sel;
  wire [1:0]data_a_sel_IBUF;
  wire [7:0]data_b_out;
  wire [7:0]data_b_out_OBUF;
  wire [1:0]data_b_sel;
  wire [1:0]data_b_sel_IBUF;
  wire [7:0]data_in;
  wire [7:0]data_in_IBUF;
  wire [7:0]reg_out;
  wire register_8_a_n_0;
  wire register_8_a_n_1;
  wire register_8_a_n_2;
  wire register_8_a_n_3;
  wire register_8_a_n_4;
  wire register_8_a_n_5;
  wire register_8_a_n_6;
  wire register_8_a_n_7;
  wire register_8_b_n_0;
  wire register_8_b_n_1;
  wire register_8_b_n_2;
  wire register_8_b_n_3;
  wire register_8_b_n_4;
  wire register_8_b_n_5;
  wire register_8_b_n_6;
  wire register_8_b_n_7;
  wire register_8_c_n_0;
  wire register_8_c_n_1;
  wire register_8_c_n_2;
  wire register_8_c_n_3;
  wire register_8_c_n_4;
  wire register_8_c_n_5;
  wire register_8_c_n_6;
  wire register_8_c_n_7;
  wire reset;
  wire reset_IBUF;

initial begin
 $sdf_annotate("memory_8_4_test_time_impl.sdf",,,,"tool_control");
end
  IBUF a_enable_IBUF_inst
       (.I(a_enable),
        .O(a_enable_IBUF));
  IBUF b_enable_IBUF_inst
       (.I(b_enable),
        .O(b_enable_IBUF));
  IBUF c_enable_IBUF_inst
       (.I(c_enable),
        .O(c_enable_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF d_enable_IBUF_inst
       (.I(d_enable),
        .O(d_enable_IBUF));
  OBUF \data_a_out_OBUF[0]_inst 
       (.I(data_a_out_OBUF[0]),
        .O(data_a_out[0]));
  OBUF \data_a_out_OBUF[1]_inst 
       (.I(data_a_out_OBUF[1]),
        .O(data_a_out[1]));
  OBUF \data_a_out_OBUF[2]_inst 
       (.I(data_a_out_OBUF[2]),
        .O(data_a_out[2]));
  OBUF \data_a_out_OBUF[3]_inst 
       (.I(data_a_out_OBUF[3]),
        .O(data_a_out[3]));
  OBUF \data_a_out_OBUF[4]_inst 
       (.I(data_a_out_OBUF[4]),
        .O(data_a_out[4]));
  OBUF \data_a_out_OBUF[5]_inst 
       (.I(data_a_out_OBUF[5]),
        .O(data_a_out[5]));
  OBUF \data_a_out_OBUF[6]_inst 
       (.I(data_a_out_OBUF[6]),
        .O(data_a_out[6]));
  OBUF \data_a_out_OBUF[7]_inst 
       (.I(data_a_out_OBUF[7]),
        .O(data_a_out[7]));
  IBUF \data_a_sel_IBUF[0]_inst 
       (.I(data_a_sel[0]),
        .O(data_a_sel_IBUF[0]));
  IBUF \data_a_sel_IBUF[1]_inst 
       (.I(data_a_sel[1]),
        .O(data_a_sel_IBUF[1]));
  OBUF \data_b_out_OBUF[0]_inst 
       (.I(data_b_out_OBUF[0]),
        .O(data_b_out[0]));
  OBUF \data_b_out_OBUF[1]_inst 
       (.I(data_b_out_OBUF[1]),
        .O(data_b_out[1]));
  OBUF \data_b_out_OBUF[2]_inst 
       (.I(data_b_out_OBUF[2]),
        .O(data_b_out[2]));
  OBUF \data_b_out_OBUF[3]_inst 
       (.I(data_b_out_OBUF[3]),
        .O(data_b_out[3]));
  OBUF \data_b_out_OBUF[4]_inst 
       (.I(data_b_out_OBUF[4]),
        .O(data_b_out[4]));
  OBUF \data_b_out_OBUF[5]_inst 
       (.I(data_b_out_OBUF[5]),
        .O(data_b_out[5]));
  OBUF \data_b_out_OBUF[6]_inst 
       (.I(data_b_out_OBUF[6]),
        .O(data_b_out[6]));
  OBUF \data_b_out_OBUF[7]_inst 
       (.I(data_b_out_OBUF[7]),
        .O(data_b_out[7]));
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
  mux_4_1 mux_4_1_a
       (.Q({register_8_b_n_0,register_8_b_n_1,register_8_b_n_2,register_8_b_n_3,register_8_b_n_4,register_8_b_n_5,register_8_b_n_6,register_8_b_n_7}),
        .data_a_out_OBUF(data_a_out_OBUF),
        .data_a_sel_IBUF(data_a_sel_IBUF),
        .\reg_out_reg[7] ({register_8_a_n_0,register_8_a_n_1,register_8_a_n_2,register_8_a_n_3,register_8_a_n_4,register_8_a_n_5,register_8_a_n_6,register_8_a_n_7}),
        .\reg_out_reg[7]_0 (reg_out),
        .\reg_out_reg[7]_1 ({register_8_c_n_0,register_8_c_n_1,register_8_c_n_2,register_8_c_n_3,register_8_c_n_4,register_8_c_n_5,register_8_c_n_6,register_8_c_n_7}));
  mux_4_1_0 mux_4_1_b
       (.Q({register_8_b_n_0,register_8_b_n_1,register_8_b_n_2,register_8_b_n_3,register_8_b_n_4,register_8_b_n_5,register_8_b_n_6,register_8_b_n_7}),
        .data_b_out_OBUF(data_b_out_OBUF),
        .data_b_sel_IBUF(data_b_sel_IBUF),
        .\reg_out_reg[7] ({register_8_a_n_0,register_8_a_n_1,register_8_a_n_2,register_8_a_n_3,register_8_a_n_4,register_8_a_n_5,register_8_a_n_6,register_8_a_n_7}),
        .\reg_out_reg[7]_0 (reg_out),
        .\reg_out_reg[7]_1 ({register_8_c_n_0,register_8_c_n_1,register_8_c_n_2,register_8_c_n_3,register_8_c_n_4,register_8_c_n_5,register_8_c_n_6,register_8_c_n_7}));
  register_8 register_8_a
       (.CLK(clk_IBUF_BUFG),
        .D(data_in_IBUF),
        .E(a_enable_IBUF),
        .Q({register_8_a_n_0,register_8_a_n_1,register_8_a_n_2,register_8_a_n_3,register_8_a_n_4,register_8_a_n_5,register_8_a_n_6,register_8_a_n_7}),
        .SR(reset_IBUF));
  register_8_1 register_8_b
       (.E(b_enable_IBUF),
        .Q({register_8_b_n_0,register_8_b_n_1,register_8_b_n_2,register_8_b_n_3,register_8_b_n_4,register_8_b_n_5,register_8_b_n_6,register_8_b_n_7}),
        .clk(clk_IBUF_BUFG),
        .data_in(data_in_IBUF),
        .reset(reset_IBUF));
  register_8_2 register_8_c
       (.E(c_enable_IBUF),
        .Q({register_8_c_n_0,register_8_c_n_1,register_8_c_n_2,register_8_c_n_3,register_8_c_n_4,register_8_c_n_5,register_8_c_n_6,register_8_c_n_7}),
        .clk(clk_IBUF_BUFG),
        .data_in(data_in_IBUF),
        .reset(reset_IBUF));
  register_8_3 register_8_d
       (.E(d_enable_IBUF),
        .Q(reg_out),
        .clk(clk_IBUF_BUFG),
        .data_in(data_in_IBUF),
        .reset(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module mux_4_1
   (data_a_out_OBUF,
    Q,
    \reg_out_reg[7] ,
    \reg_out_reg[7]_0 ,
    data_a_sel_IBUF,
    \reg_out_reg[7]_1 );
  output [7:0]data_a_out_OBUF;
  input [7:0]Q;
  input [7:0]\reg_out_reg[7] ;
  input [7:0]\reg_out_reg[7]_0 ;
  input [1:0]data_a_sel_IBUF;
  input [7:0]\reg_out_reg[7]_1 ;

  wire [7:0]Q;
  wire [7:0]data_a_out_OBUF;
  wire [1:0]data_a_sel_IBUF;
  wire [7:0]\reg_out_reg[7] ;
  wire [7:0]\reg_out_reg[7]_0 ;
  wire [7:0]\reg_out_reg[7]_1 ;

  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_a_out_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(\reg_out_reg[7] [0]),
        .I2(\reg_out_reg[7]_0 [0]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [0]),
        .O(data_a_out_OBUF[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_a_out_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(\reg_out_reg[7] [1]),
        .I2(\reg_out_reg[7]_0 [1]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [1]),
        .O(data_a_out_OBUF[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_a_out_OBUF[2]_inst_i_1 
       (.I0(Q[2]),
        .I1(\reg_out_reg[7] [2]),
        .I2(\reg_out_reg[7]_0 [2]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [2]),
        .O(data_a_out_OBUF[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_a_out_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(\reg_out_reg[7] [3]),
        .I2(\reg_out_reg[7]_0 [3]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [3]),
        .O(data_a_out_OBUF[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_a_out_OBUF[4]_inst_i_1 
       (.I0(Q[4]),
        .I1(\reg_out_reg[7] [4]),
        .I2(\reg_out_reg[7]_0 [4]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [4]),
        .O(data_a_out_OBUF[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_a_out_OBUF[5]_inst_i_1 
       (.I0(Q[5]),
        .I1(\reg_out_reg[7] [5]),
        .I2(\reg_out_reg[7]_0 [5]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [5]),
        .O(data_a_out_OBUF[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_a_out_OBUF[6]_inst_i_1 
       (.I0(Q[6]),
        .I1(\reg_out_reg[7] [6]),
        .I2(\reg_out_reg[7]_0 [6]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [6]),
        .O(data_a_out_OBUF[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_a_out_OBUF[7]_inst_i_1 
       (.I0(Q[7]),
        .I1(\reg_out_reg[7] [7]),
        .I2(\reg_out_reg[7]_0 [7]),
        .I3(data_a_sel_IBUF[1]),
        .I4(data_a_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [7]),
        .O(data_a_out_OBUF[7]));
endmodule

(* ORIG_REF_NAME = "mux_4_1" *) 
module mux_4_1_0
   (data_b_out_OBUF,
    Q,
    \reg_out_reg[7] ,
    \reg_out_reg[7]_0 ,
    data_b_sel_IBUF,
    \reg_out_reg[7]_1 );
  output [7:0]data_b_out_OBUF;
  input [7:0]Q;
  input [7:0]\reg_out_reg[7] ;
  input [7:0]\reg_out_reg[7]_0 ;
  input [1:0]data_b_sel_IBUF;
  input [7:0]\reg_out_reg[7]_1 ;

  wire [7:0]Q;
  wire [7:0]data_b_out_OBUF;
  wire [1:0]data_b_sel_IBUF;
  wire [7:0]\reg_out_reg[7] ;
  wire [7:0]\reg_out_reg[7]_0 ;
  wire [7:0]\reg_out_reg[7]_1 ;

  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_b_out_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(\reg_out_reg[7] [0]),
        .I2(\reg_out_reg[7]_0 [0]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [0]),
        .O(data_b_out_OBUF[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_b_out_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(\reg_out_reg[7] [1]),
        .I2(\reg_out_reg[7]_0 [1]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [1]),
        .O(data_b_out_OBUF[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_b_out_OBUF[2]_inst_i_1 
       (.I0(Q[2]),
        .I1(\reg_out_reg[7] [2]),
        .I2(\reg_out_reg[7]_0 [2]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [2]),
        .O(data_b_out_OBUF[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_b_out_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(\reg_out_reg[7] [3]),
        .I2(\reg_out_reg[7]_0 [3]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [3]),
        .O(data_b_out_OBUF[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_b_out_OBUF[4]_inst_i_1 
       (.I0(Q[4]),
        .I1(\reg_out_reg[7] [4]),
        .I2(\reg_out_reg[7]_0 [4]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [4]),
        .O(data_b_out_OBUF[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_b_out_OBUF[5]_inst_i_1 
       (.I0(Q[5]),
        .I1(\reg_out_reg[7] [5]),
        .I2(\reg_out_reg[7]_0 [5]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [5]),
        .O(data_b_out_OBUF[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_b_out_OBUF[6]_inst_i_1 
       (.I0(Q[6]),
        .I1(\reg_out_reg[7] [6]),
        .I2(\reg_out_reg[7]_0 [6]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [6]),
        .O(data_b_out_OBUF[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data_b_out_OBUF[7]_inst_i_1 
       (.I0(Q[7]),
        .I1(\reg_out_reg[7] [7]),
        .I2(\reg_out_reg[7]_0 [7]),
        .I3(data_b_sel_IBUF[1]),
        .I4(data_b_sel_IBUF[0]),
        .I5(\reg_out_reg[7]_1 [7]),
        .O(data_b_out_OBUF[7]));
endmodule

module register_8
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

(* ORIG_REF_NAME = "register_8" *) 
module register_8_1
   (Q,
    reset,
    E,
    data_in,
    clk);
  output [7:0]Q;
  input reset;
  input [0:0]E;
  input [7:0]data_in;
  input clk;

  wire [0:0]E;
  wire [7:0]Q;
  wire clk;
  wire [7:0]data_in;
  wire reset;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(clk),
        .CE(E),
        .D(data_in[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(clk),
        .CE(E),
        .D(data_in[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(clk),
        .CE(E),
        .D(data_in[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(clk),
        .CE(E),
        .D(data_in[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(clk),
        .CE(E),
        .D(data_in[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(clk),
        .CE(E),
        .D(data_in[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(clk),
        .CE(E),
        .D(data_in[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(clk),
        .CE(E),
        .D(data_in[7]),
        .Q(Q[7]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_2
   (Q,
    reset,
    E,
    data_in,
    clk);
  output [7:0]Q;
  input reset;
  input [0:0]E;
  input [7:0]data_in;
  input clk;

  wire [0:0]E;
  wire [7:0]Q;
  wire clk;
  wire [7:0]data_in;
  wire reset;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(clk),
        .CE(E),
        .D(data_in[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(clk),
        .CE(E),
        .D(data_in[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(clk),
        .CE(E),
        .D(data_in[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(clk),
        .CE(E),
        .D(data_in[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(clk),
        .CE(E),
        .D(data_in[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(clk),
        .CE(E),
        .D(data_in[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(clk),
        .CE(E),
        .D(data_in[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(clk),
        .CE(E),
        .D(data_in[7]),
        .Q(Q[7]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "register_8" *) 
module register_8_3
   (Q,
    reset,
    E,
    data_in,
    clk);
  output [7:0]Q;
  input reset;
  input [0:0]E;
  input [7:0]data_in;
  input clk;

  wire [0:0]E;
  wire [7:0]Q;
  wire clk;
  wire [7:0]data_in;
  wire reset;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(clk),
        .CE(E),
        .D(data_in[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(clk),
        .CE(E),
        .D(data_in[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(clk),
        .CE(E),
        .D(data_in[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(clk),
        .CE(E),
        .D(data_in[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(clk),
        .CE(E),
        .D(data_in[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(clk),
        .CE(E),
        .D(data_in[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(clk),
        .CE(E),
        .D(data_in[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(clk),
        .CE(E),
        .D(data_in[7]),
        .Q(Q[7]),
        .R(reset));
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
