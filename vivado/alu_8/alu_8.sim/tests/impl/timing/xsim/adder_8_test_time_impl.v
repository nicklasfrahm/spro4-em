// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Wed Feb 14 09:17:43 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/alu_8/alu_8.sim/tests/impl/timing/xsim/adder_8_test_time_impl.v}
// Design      : adder_8
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "382c4839" *) 
(* NotValidForBitStream *)
module adder_8
   (a_in,
    b_in,
    carry_in,
    carry_out,
    sum_out);
  input [7:0]a_in;
  input [7:0]b_in;
  input carry_in;
  output carry_out;
  output [7:0]sum_out;

  wire [7:0]a_in;
  wire [7:0]a_in_IBUF;
  wire [7:0]b_in;
  wire [7:0]b_in_IBUF;
  wire carry_in;
  wire carry_in_IBUF;
  wire carry_out;
  wire carry_out12;
  wire carry_out4;
  wire carry_out8;
  wire carry_out_OBUF;
  wire [7:0]sum_out;
  wire [7:0]sum_out_OBUF;

initial begin
 $sdf_annotate("adder_8_test_time_impl.sdf",,,,"tool_control");
end
  IBUF \a_in_IBUF[0]_inst 
       (.I(a_in[0]),
        .O(a_in_IBUF[0]));
  IBUF \a_in_IBUF[1]_inst 
       (.I(a_in[1]),
        .O(a_in_IBUF[1]));
  IBUF \a_in_IBUF[2]_inst 
       (.I(a_in[2]),
        .O(a_in_IBUF[2]));
  IBUF \a_in_IBUF[3]_inst 
       (.I(a_in[3]),
        .O(a_in_IBUF[3]));
  IBUF \a_in_IBUF[4]_inst 
       (.I(a_in[4]),
        .O(a_in_IBUF[4]));
  IBUF \a_in_IBUF[5]_inst 
       (.I(a_in[5]),
        .O(a_in_IBUF[5]));
  IBUF \a_in_IBUF[6]_inst 
       (.I(a_in[6]),
        .O(a_in_IBUF[6]));
  IBUF \a_in_IBUF[7]_inst 
       (.I(a_in[7]),
        .O(a_in_IBUF[7]));
  IBUF \b_in_IBUF[0]_inst 
       (.I(b_in[0]),
        .O(b_in_IBUF[0]));
  IBUF \b_in_IBUF[1]_inst 
       (.I(b_in[1]),
        .O(b_in_IBUF[1]));
  IBUF \b_in_IBUF[2]_inst 
       (.I(b_in[2]),
        .O(b_in_IBUF[2]));
  IBUF \b_in_IBUF[3]_inst 
       (.I(b_in[3]),
        .O(b_in_IBUF[3]));
  IBUF \b_in_IBUF[4]_inst 
       (.I(b_in[4]),
        .O(b_in_IBUF[4]));
  IBUF \b_in_IBUF[5]_inst 
       (.I(b_in[5]),
        .O(b_in_IBUF[5]));
  IBUF \b_in_IBUF[6]_inst 
       (.I(b_in[6]),
        .O(b_in_IBUF[6]));
  IBUF \b_in_IBUF[7]_inst 
       (.I(b_in[7]),
        .O(b_in_IBUF[7]));
  IBUF carry_in_IBUF_inst
       (.I(carry_in),
        .O(carry_in_IBUF));
  OBUF carry_out_OBUF_inst
       (.I(carry_out_OBUF),
        .O(carry_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    carry_out_OBUF_inst_i_1
       (.I0(a_in_IBUF[7]),
        .I1(b_in_IBUF[7]),
        .I2(a_in_IBUF[6]),
        .I3(b_in_IBUF[6]),
        .I4(carry_out4),
        .O(carry_out_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    carry_out_OBUF_inst_i_2
       (.I0(a_in_IBUF[5]),
        .I1(b_in_IBUF[5]),
        .I2(a_in_IBUF[4]),
        .I3(b_in_IBUF[4]),
        .I4(carry_out8),
        .O(carry_out4));
  OBUF \sum_out_OBUF[0]_inst 
       (.I(sum_out_OBUF[0]),
        .O(sum_out[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_out_OBUF[0]_inst_i_1 
       (.I0(b_in_IBUF[0]),
        .I1(a_in_IBUF[0]),
        .I2(carry_in_IBUF),
        .O(sum_out_OBUF[0]));
  OBUF \sum_out_OBUF[1]_inst 
       (.I(sum_out_OBUF[1]),
        .O(sum_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_out_OBUF[1]_inst_i_1 
       (.I0(b_in_IBUF[1]),
        .I1(a_in_IBUF[1]),
        .I2(carry_in_IBUF),
        .I3(b_in_IBUF[0]),
        .I4(a_in_IBUF[0]),
        .O(sum_out_OBUF[1]));
  OBUF \sum_out_OBUF[2]_inst 
       (.I(sum_out_OBUF[2]),
        .O(sum_out[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_out_OBUF[2]_inst_i_1 
       (.I0(b_in_IBUF[2]),
        .I1(a_in_IBUF[2]),
        .I2(carry_out12),
        .O(sum_out_OBUF[2]));
  OBUF \sum_out_OBUF[3]_inst 
       (.I(sum_out_OBUF[3]),
        .O(sum_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_out_OBUF[3]_inst_i_1 
       (.I0(b_in_IBUF[3]),
        .I1(a_in_IBUF[3]),
        .I2(carry_out12),
        .I3(b_in_IBUF[2]),
        .I4(a_in_IBUF[2]),
        .O(sum_out_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_out_OBUF[3]_inst_i_2 
       (.I0(a_in_IBUF[1]),
        .I1(b_in_IBUF[1]),
        .I2(a_in_IBUF[0]),
        .I3(b_in_IBUF[0]),
        .I4(carry_in_IBUF),
        .O(carry_out12));
  OBUF \sum_out_OBUF[4]_inst 
       (.I(sum_out_OBUF[4]),
        .O(sum_out[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_out_OBUF[4]_inst_i_1 
       (.I0(b_in_IBUF[4]),
        .I1(a_in_IBUF[4]),
        .I2(carry_out8),
        .O(sum_out_OBUF[4]));
  OBUF \sum_out_OBUF[5]_inst 
       (.I(sum_out_OBUF[5]),
        .O(sum_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_out_OBUF[5]_inst_i_1 
       (.I0(b_in_IBUF[5]),
        .I1(a_in_IBUF[5]),
        .I2(carry_out8),
        .I3(b_in_IBUF[4]),
        .I4(a_in_IBUF[4]),
        .O(sum_out_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_out_OBUF[5]_inst_i_2 
       (.I0(a_in_IBUF[3]),
        .I1(b_in_IBUF[3]),
        .I2(a_in_IBUF[2]),
        .I3(b_in_IBUF[2]),
        .I4(carry_out12),
        .O(carry_out8));
  OBUF \sum_out_OBUF[6]_inst 
       (.I(sum_out_OBUF[6]),
        .O(sum_out[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_out_OBUF[6]_inst_i_1 
       (.I0(b_in_IBUF[6]),
        .I1(a_in_IBUF[6]),
        .I2(carry_out4),
        .O(sum_out_OBUF[6]));
  OBUF \sum_out_OBUF[7]_inst 
       (.I(sum_out_OBUF[7]),
        .O(sum_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_out_OBUF[7]_inst_i_1 
       (.I0(b_in_IBUF[7]),
        .I1(a_in_IBUF[7]),
        .I2(carry_out4),
        .I3(b_in_IBUF[6]),
        .I4(a_in_IBUF[6]),
        .O(sum_out_OBUF[7]));
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
