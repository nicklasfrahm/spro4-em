// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Mar 19 15:43:17 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/risc_cpu_8/risc_cpu_8.sim/tests/impl/timing/xsim/risc_controller_8_test_time_impl.v}
// Design      : risc_controller_8
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

module LDCP_HD1
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

module LDCP_HD2
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

module LDCP_HD3
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

module LDCP_HD4
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

module LDCP_HD5
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

module LDCP_HD6
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

module LDCP_HD7
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

(* ECO_CHECKSUM = "14c2d3a4" *) 
(* NotValidForBitStream *)
module risc_controller_8
   (reset,
    clk,
    carry_out,
    carry_in,
    data_in_sel,
    alu_sel,
    a_enable,
    b_enable,
    c_enable,
    d_enable,
    data_a_sel,
    data_b_sel,
    state_debug,
    pc_debug,
    operation_debug,
    opcode_debug);
  input reset;
  input clk;
  input carry_out;
  output carry_in;
  output data_in_sel;
  output [1:0]alu_sel;
  output a_enable;
  output b_enable;
  output c_enable;
  output d_enable;
  output [1:0]data_a_sel;
  output [1:0]data_b_sel;
  output [2:0]state_debug;
  output [3:0]pc_debug;
  output [3:0]operation_debug;
  output [3:0]opcode_debug;

  wire a_enable;
  wire a_enable_OBUF;
  wire a_enable_reg_i_1_n_0;
  wire [1:0]alu_sel;
  wire [1:0]alu_sel_OBUF;
  wire \alu_sel_reg[0]_i_1_n_0 ;
  wire \alu_sel_reg[1]_i_1_n_0 ;
  wire \alu_sel_reg[1]_i_2_n_0 ;
  wire \alu_sel_reg[1]_i_3_n_0 ;
  wire b_enable;
  wire b_enable_OBUF;
  wire b_enable_reg_i_1_n_0;
  wire c_enable;
  wire c_enable_OBUF;
  wire c_enable_reg_i_1_n_0;
  wire carry_in;
  wire carry_in_OBUF;
  wire carry_in_reg_i_1_n_0;
  wire carry_in_reg_i_2_n_0;
  wire carry_in_reg_i_3_n_0;
  wire carry_in_reg_i_4_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d_enable;
  wire d_enable_OBUF;
  wire d_enable_reg_i_1_n_0;
  wire [1:0]data_a_sel;
  wire [1:0]data_a_sel_OBUF;
  wire \data_a_sel_reg[0]_i_1_n_0 ;
  wire \data_a_sel_reg[0]_i_2_n_0 ;
  wire \data_a_sel_reg[1]_i_1_n_0 ;
  wire [1:0]data_b_sel;
  wire [1:0]data_b_sel_OBUF;
  wire \data_b_sel_reg[0]_i_1_n_0 ;
  wire \data_b_sel_reg[1]_i_1_n_0 ;
  wire \data_b_sel_reg[1]_i_2_n_0 ;
  wire data_in_sel;
  wire data_in_sel_OBUF;
  wire data_in_sel_reg_i_1_n_0;
  wire \opcode[0]_i_1_n_0 ;
  wire \opcode[1]_i_1_n_0 ;
  wire \opcode[2]_i_1_n_0 ;
  wire \opcode[3]_i_1_n_0 ;
  wire \opcode[3]_i_2_n_0 ;
  wire [3:0]opcode_debug;
  wire [3:0]opcode_debug_OBUF;
  wire [3:0]operation_debug;
  wire [3:0]operation_debug_OBUF;
  wire \operation_debug_reg[2]_i_1_n_0 ;
  wire \operation_debug_reg[3]_i_1_n_0 ;
  wire \operation_debug_reg[3]_i_2_n_0 ;
  wire \operation_debug_reg[3]_i_3_n_0 ;
  wire pc0;
  wire [3:0]pc_debug;
  wire [3:0]pc_debug_OBUF;
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
  wire reset;
  wire reset_IBUF;
  wire [2:0]state_current;
  wire \state_current[0]_i_1_n_0 ;
  wire \state_current[1]_i_1_n_0 ;
  wire \state_current[1]_i_2_n_0 ;
  wire \state_current[1]_i_3_n_0 ;
  wire \state_current[2]_i_1_n_0 ;
  wire [2:0]state_debug;
  wire [2:0]state_debug_OBUF;
  wire \state_debug_reg[2]_i_1_n_0 ;

initial begin
 $sdf_annotate("risc_controller_8_test_time_impl.sdf",,,,"tool_control");
end
  OBUF a_enable_OBUF_inst
       (.I(a_enable_OBUF),
        .O(a_enable));
  (* INIT = "1'b0" *) 
  LDCP_UNIQ_BASE_ a_enable_reg
       (.CLR(carry_in_reg_i_2_n_0),
        .D(a_enable_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .PRE(carry_in_reg_i_3_n_0),
        .Q(a_enable_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07008100)) 
    a_enable_reg_i_1
       (.I0(opcode_debug_OBUF[0]),
        .I1(opcode_debug_OBUF[1]),
        .I2(opcode_debug_OBUF[3]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(opcode_debug_OBUF[2]),
        .O(a_enable_reg_i_1_n_0));
  OBUF \alu_sel_OBUF[0]_inst 
       (.I(alu_sel_OBUF[0]),
        .O(alu_sel[0]));
  OBUF \alu_sel_OBUF[1]_inst 
       (.I(alu_sel_OBUF[1]),
        .O(alu_sel[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_sel_reg[0] 
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\alu_sel_reg[0]_i_1_n_0 ),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(alu_sel_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1D008000)) 
    \alu_sel_reg[0]_i_1 
       (.I0(opcode_debug_OBUF[1]),
        .I1(opcode_debug_OBUF[0]),
        .I2(opcode_debug_OBUF[2]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(opcode_debug_OBUF[3]),
        .O(\alu_sel_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_sel_reg[1] 
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\alu_sel_reg[1]_i_1_n_0 ),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(alu_sel_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00080800)) 
    \alu_sel_reg[1]_i_1 
       (.I0(opcode_debug_OBUF[3]),
        .I1(\operation_debug_reg[3]_i_1_n_0 ),
        .I2(opcode_debug_OBUF[2]),
        .I3(opcode_debug_OBUF[1]),
        .I4(opcode_debug_OBUF[0]),
        .O(\alu_sel_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0380)) 
    \alu_sel_reg[1]_i_2 
       (.I0(\alu_sel_reg[1]_i_3_n_0 ),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(state_current[2]),
        .O(\alu_sel_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2004)) 
    \alu_sel_reg[1]_i_3 
       (.I0(opcode_debug_OBUF[2]),
        .I1(opcode_debug_OBUF[3]),
        .I2(opcode_debug_OBUF[0]),
        .I3(opcode_debug_OBUF[1]),
        .O(\alu_sel_reg[1]_i_3_n_0 ));
  OBUF b_enable_OBUF_inst
       (.I(b_enable_OBUF),
        .O(b_enable));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    b_enable_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(b_enable_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(b_enable_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08000400)) 
    b_enable_reg_i_1
       (.I0(opcode_debug_OBUF[2]),
        .I1(\operation_debug_reg[3]_i_1_n_0 ),
        .I2(opcode_debug_OBUF[3]),
        .I3(opcode_debug_OBUF[0]),
        .I4(opcode_debug_OBUF[1]),
        .O(b_enable_reg_i_1_n_0));
  OBUF c_enable_OBUF_inst
       (.I(c_enable_OBUF),
        .O(c_enable));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    c_enable_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(c_enable_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(c_enable_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h002E0000)) 
    c_enable_reg_i_1
       (.I0(opcode_debug_OBUF[3]),
        .I1(opcode_debug_OBUF[1]),
        .I2(opcode_debug_OBUF[0]),
        .I3(opcode_debug_OBUF[2]),
        .I4(\operation_debug_reg[3]_i_1_n_0 ),
        .O(c_enable_reg_i_1_n_0));
  OBUF carry_in_OBUF_inst
       (.I(carry_in_OBUF),
        .O(carry_in));
  (* INIT = "1'b0" *) 
  LDCP_HD1 carry_in_reg
       (.CLR(carry_in_reg_i_2_n_0),
        .D(1'b0),
        .G(carry_in_reg_i_1_n_0),
        .PRE(carry_in_reg_i_3_n_0),
        .Q(carry_in_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
        .I2(opcode_debug_OBUF[1]),
        .I3(opcode_debug_OBUF[0]),
        .I4(opcode_debug_OBUF[3]),
        .I5(opcode_debug_OBUF[2]),
        .O(carry_in_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    carry_in_reg_i_4
       (.I0(state_current[0]),
        .I1(state_current[2]),
        .O(carry_in_reg_i_4_n_0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF d_enable_OBUF_inst
       (.I(d_enable_OBUF),
        .O(d_enable));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    d_enable_reg
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(d_enable_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(d_enable_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h10000800)) 
    d_enable_reg_i_1
       (.I0(opcode_debug_OBUF[0]),
        .I1(opcode_debug_OBUF[1]),
        .I2(opcode_debug_OBUF[2]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(opcode_debug_OBUF[3]),
        .O(d_enable_reg_i_1_n_0));
  OBUF \data_a_sel_OBUF[0]_inst 
       (.I(data_a_sel_OBUF[0]),
        .O(data_a_sel[0]));
  OBUF \data_a_sel_OBUF[1]_inst 
       (.I(data_a_sel_OBUF[1]),
        .O(data_a_sel[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_a_sel_reg[0] 
       (.CLR(carry_in_reg_i_2_n_0),
        .D(\data_a_sel_reg[0]_i_1_n_0 ),
        .G(\data_a_sel_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_a_sel_OBUF[0]));
  LUT6 #(
    .INIT(64'h1010100000102080)) 
    \data_a_sel_reg[0]_i_1 
       (.I0(opcode_debug_OBUF[3]),
        .I1(state_current[1]),
        .I2(carry_in_reg_i_4_n_0),
        .I3(opcode_debug_OBUF[2]),
        .I4(opcode_debug_OBUF[0]),
        .I5(opcode_debug_OBUF[1]),
        .O(\data_a_sel_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \data_a_sel_reg[0]_i_2 
       (.I0(\alu_sel_reg[1]_i_3_n_0 ),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(state_current[2]),
        .O(\data_a_sel_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_a_sel_reg[1] 
       (.CLR(\alu_sel_reg[1]_i_2_n_0 ),
        .D(\data_a_sel_reg[1]_i_1_n_0 ),
        .G(carry_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(data_a_sel_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h17000C00)) 
    \data_a_sel_reg[1]_i_1 
       (.I0(opcode_debug_OBUF[0]),
        .I1(opcode_debug_OBUF[1]),
        .I2(opcode_debug_OBUF[2]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(opcode_debug_OBUF[3]),
        .O(\data_a_sel_reg[1]_i_1_n_0 ));
  OBUF \data_b_sel_OBUF[0]_inst 
       (.I(data_b_sel_OBUF[0]),
        .O(data_b_sel[0]));
  OBUF \data_b_sel_OBUF[1]_inst 
       (.I(data_b_sel_OBUF[1]),
        .O(data_b_sel[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_b_sel_reg[0] 
       (.CLR(1'b0),
        .D(\data_b_sel_reg[0]_i_1_n_0 ),
        .G(\data_b_sel_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_b_sel_OBUF[0]));
  LUT6 #(
    .INIT(64'h0000006080400000)) 
    \data_b_sel_reg[0]_i_1 
       (.I0(opcode_debug_OBUF[1]),
        .I1(opcode_debug_OBUF[0]),
        .I2(carry_in_reg_i_4_n_0),
        .I3(state_current[1]),
        .I4(opcode_debug_OBUF[2]),
        .I5(opcode_debug_OBUF[3]),
        .O(\data_b_sel_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_b_sel_reg[1] 
       (.CLR(1'b0),
        .D(\data_b_sel_reg[1]_i_1_n_0 ),
        .G(\data_b_sel_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_b_sel_OBUF[1]));
  LUT6 #(
    .INIT(64'h0000106000400000)) 
    \data_b_sel_reg[1]_i_1 
       (.I0(opcode_debug_OBUF[0]),
        .I1(opcode_debug_OBUF[1]),
        .I2(carry_in_reg_i_4_n_0),
        .I3(state_current[1]),
        .I4(opcode_debug_OBUF[2]),
        .I5(opcode_debug_OBUF[3]),
        .O(\data_b_sel_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h455F)) 
    \data_b_sel_reg[1]_i_2 
       (.I0(state_current[2]),
        .I1(\alu_sel_reg[1]_i_3_n_0 ),
        .I2(state_current[1]),
        .I3(state_current[0]),
        .O(\data_b_sel_reg[1]_i_2_n_0 ));
  OBUF data_in_sel_OBUF_inst
       (.I(data_in_sel_OBUF),
        .O(data_in_sel));
  (* INIT = "1'b0" *) 
  LDCP_HD2 data_in_sel_reg
       (.CLR(carry_in_reg_i_2_n_0),
        .D(data_in_sel_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .PRE(carry_in_reg_i_3_n_0),
        .Q(data_in_sel_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    data_in_sel_reg_i_1
       (.I0(state_current[2]),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(opcode_debug_OBUF[2]),
        .I4(opcode_debug_OBUF[3]),
        .O(data_in_sel_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \opcode[0]_i_1 
       (.I0(\pc_reg_rep_n_0_[0] ),
        .O(\opcode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \opcode[1]_i_1 
       (.I0(\pc_reg_rep_n_0_[1] ),
        .I1(\pc_reg_rep_n_0_[0] ),
        .O(\opcode[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \opcode[3]_i_2 
       (.I0(\pc_reg_rep_n_0_[3] ),
        .I1(\pc_reg_rep_n_0_[0] ),
        .I2(\pc_reg_rep_n_0_[1] ),
        .I3(\pc_reg_rep_n_0_[2] ),
        .O(\opcode[3]_i_2_n_0 ));
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
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode[3]_i_1_n_0 ),
        .D(\opcode[0]_i_1_n_0 ),
        .Q(opcode_debug_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode[3]_i_1_n_0 ),
        .D(\opcode[1]_i_1_n_0 ),
        .Q(opcode_debug_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode[3]_i_1_n_0 ),
        .D(\opcode[2]_i_1_n_0 ),
        .Q(opcode_debug_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \opcode_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\opcode[3]_i_1_n_0 ),
        .D(\opcode[3]_i_2_n_0 ),
        .Q(opcode_debug_OBUF[3]),
        .R(1'b0));
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
  (* INIT = "1'b0" *) 
  LDCP_HD3 \operation_debug_reg[0] 
       (.CLR(\operation_debug_reg[3]_i_3_n_0 ),
        .D(opcode_debug_OBUF[0]),
        .G(\operation_debug_reg[3]_i_1_n_0 ),
        .PRE(\operation_debug_reg[2]_i_1_n_0 ),
        .Q(operation_debug_OBUF[0]));
  (* INIT = "1'b0" *) 
  LDCP_HD4 \operation_debug_reg[1] 
       (.CLR(\operation_debug_reg[3]_i_3_n_0 ),
        .D(opcode_debug_OBUF[1]),
        .G(\operation_debug_reg[3]_i_1_n_0 ),
        .PRE(\operation_debug_reg[2]_i_1_n_0 ),
        .Q(operation_debug_OBUF[1]));
  (* INIT = "1'b0" *) 
  LDCP_HD5 \operation_debug_reg[2] 
       (.CLR(\operation_debug_reg[3]_i_3_n_0 ),
        .D(opcode_debug_OBUF[2]),
        .G(\operation_debug_reg[3]_i_1_n_0 ),
        .PRE(\operation_debug_reg[2]_i_1_n_0 ),
        .Q(operation_debug_OBUF[2]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \operation_debug_reg[2]_i_1 
       (.I0(opcode_debug_OBUF[2]),
        .I1(opcode_debug_OBUF[3]),
        .I2(pc_reset_reg_i_2_n_0),
        .I3(state_current[1]),
        .I4(state_current[0]),
        .I5(state_current[2]),
        .O(\operation_debug_reg[2]_i_1_n_0 ));
  (* INIT = "1'b0" *) 
  LDCP_HD6 \operation_debug_reg[3] 
       (.CLR(\operation_debug_reg[3]_i_2_n_0 ),
        .D(opcode_debug_OBUF[3]),
        .G(\operation_debug_reg[3]_i_1_n_0 ),
        .PRE(\operation_debug_reg[3]_i_3_n_0 ),
        .Q(operation_debug_OBUF[3]));
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
       (.I0(opcode_debug_OBUF[1]),
        .I1(opcode_debug_OBUF[3]),
        .I2(opcode_debug_OBUF[0]),
        .I3(state_current[1]),
        .I4(carry_in_reg_i_4_n_0),
        .I5(opcode_debug_OBUF[2]),
        .O(\operation_debug_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \operation_debug_reg[3]_i_3 
       (.I0(opcode_debug_OBUF[2]),
        .I1(carry_in_reg_i_4_n_0),
        .I2(state_current[1]),
        .I3(opcode_debug_OBUF[0]),
        .I4(opcode_debug_OBUF[3]),
        .I5(opcode_debug_OBUF[1]),
        .O(\operation_debug_reg[3]_i_3_n_0 ));
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
  (* INIT = "1'b0" *) 
  LDCP_HD7 pc_increment_reg
       (.CLR(carry_in_reg_i_2_n_0),
        .D(pc_increment_reg_i_1_n_0),
        .G(carry_in_reg_i_1_n_0),
        .PRE(carry_in_reg_i_3_n_0),
        .Q(pc_increment));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1F00FD00)) 
    pc_increment_reg_i_1
       (.I0(opcode_debug_OBUF[3]),
        .I1(opcode_debug_OBUF[0]),
        .I2(opcode_debug_OBUF[1]),
        .I3(\operation_debug_reg[3]_i_1_n_0 ),
        .I4(opcode_debug_OBUF[2]),
        .O(pc_increment_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[0]),
        .Q(pc_debug_OBUF[0]),
        .R(pc0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[1]),
        .Q(pc_debug_OBUF[1]),
        .R(pc0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[2]),
        .Q(pc_debug_OBUF[2]),
        .R(pc0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pc_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(pc_increment),
        .D(plusOp[3]),
        .Q(pc_debug_OBUF[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pc_rep[0]_i_1 
       (.I0(pc_debug_OBUF[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pc_rep[1]_i_1 
       (.I0(pc_debug_OBUF[0]),
        .I1(pc_debug_OBUF[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pc_rep[2]_i_1 
       (.I0(pc_debug_OBUF[1]),
        .I1(pc_debug_OBUF[0]),
        .I2(pc_debug_OBUF[2]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \pc_rep[3]_i_1 
       (.I0(pc_reset),
        .I1(state_current[2]),
        .I2(state_current[0]),
        .I3(state_current[1]),
        .O(pc0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pc_rep[3]_i_2 
       (.I0(pc_debug_OBUF[2]),
        .I1(pc_debug_OBUF[0]),
        .I2(pc_debug_OBUF[1]),
        .I3(pc_debug_OBUF[3]),
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
        .I4(opcode_debug_OBUF[3]),
        .I5(opcode_debug_OBUF[2]),
        .O(pc_reset_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pc_reset_reg_i_2
       (.I0(opcode_debug_OBUF[0]),
        .I1(opcode_debug_OBUF[1]),
        .O(pc_reset_reg_i_2_n_0));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0015)) 
    \state_current[0]_i_1 
       (.I0(state_current[0]),
        .I1(state_current[1]),
        .I2(state_current[2]),
        .I3(reset_IBUF),
        .O(\state_current[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABEBAAE)) 
    \state_current[1]_i_1 
       (.I0(\state_current[1]_i_2_n_0 ),
        .I1(state_current[2]),
        .I2(state_current[0]),
        .I3(state_current[1]),
        .I4(\state_current[1]_i_3_n_0 ),
        .I5(reset_IBUF),
        .O(\state_current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h22022022)) 
    \state_current[1]_i_2 
       (.I0(state_current[0]),
        .I1(state_current[2]),
        .I2(opcode_debug_OBUF[1]),
        .I3(opcode_debug_OBUF[3]),
        .I4(opcode_debug_OBUF[2]),
        .O(\state_current[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \state_current[1]_i_3 
       (.I0(opcode_debug_OBUF[0]),
        .I1(opcode_debug_OBUF[1]),
        .O(\state_current[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020040000)) 
    \state_current[2]_i_1 
       (.I0(opcode_debug_OBUF[2]),
        .I1(opcode_debug_OBUF[3]),
        .I2(opcode_debug_OBUF[0]),
        .I3(opcode_debug_OBUF[1]),
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
  OBUF \state_debug_OBUF[0]_inst 
       (.I(state_debug_OBUF[0]),
        .O(state_debug[0]));
  OBUF \state_debug_OBUF[1]_inst 
       (.I(state_debug_OBUF[1]),
        .O(state_debug[1]));
  OBUF \state_debug_OBUF[2]_inst 
       (.I(state_debug_OBUF[2]),
        .O(state_debug[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_debug_reg[0] 
       (.CLR(1'b0),
        .D(state_current[0]),
        .G(\state_debug_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(state_debug_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_debug_reg[1] 
       (.CLR(1'b0),
        .D(state_current[1]),
        .G(\state_debug_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(state_debug_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \state_debug_reg[2] 
       (.CLR(1'b0),
        .D(state_current[2]),
        .G(\state_debug_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(state_debug_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \state_debug_reg[2]_i_1 
       (.I0(state_current[1]),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .O(\state_debug_reg[2]_i_1_n_0 ));
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
