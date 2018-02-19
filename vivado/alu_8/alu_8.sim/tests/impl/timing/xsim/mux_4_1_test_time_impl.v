// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Mon Feb 19 13:23:02 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/alu_8/alu_8.sim/tests/impl/timing/xsim/mux_4_1_test_time_impl.v}
// Design      : mux_4_1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "da80383e" *) 
(* NotValidForBitStream *)
module mux_4_1
   (sum_in,
    inv_in,
    and_in,
    or_in,
    select_in,
    alu_out);
  input [7:0]sum_in;
  input [7:0]inv_in;
  input [7:0]and_in;
  input [7:0]or_in;
  input [1:0]select_in;
  output [7:0]alu_out;

  wire [7:0]alu_out;
  wire [7:0]alu_out_OBUF;
  wire [7:0]and_in;
  wire [7:0]and_in_IBUF;
  wire [7:0]inv_in;
  wire [7:0]inv_in_IBUF;
  wire [7:0]or_in;
  wire [7:0]or_in_IBUF;
  wire [1:0]select_in;
  wire [1:0]select_in_IBUF;
  wire [7:0]sum_in;
  wire [7:0]sum_in_IBUF;

initial begin
 $sdf_annotate("mux_4_1_test_time_impl.sdf",,,,"tool_control");
end
  OBUF \alu_out_OBUF[0]_inst 
       (.I(alu_out_OBUF[0]),
        .O(alu_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \alu_out_OBUF[0]_inst_i_1 
       (.I0(inv_in_IBUF[0]),
        .I1(sum_in_IBUF[0]),
        .I2(and_in_IBUF[0]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(or_in_IBUF[0]),
        .O(alu_out_OBUF[0]));
  OBUF \alu_out_OBUF[1]_inst 
       (.I(alu_out_OBUF[1]),
        .O(alu_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \alu_out_OBUF[1]_inst_i_1 
       (.I0(inv_in_IBUF[1]),
        .I1(sum_in_IBUF[1]),
        .I2(and_in_IBUF[1]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(or_in_IBUF[1]),
        .O(alu_out_OBUF[1]));
  OBUF \alu_out_OBUF[2]_inst 
       (.I(alu_out_OBUF[2]),
        .O(alu_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \alu_out_OBUF[2]_inst_i_1 
       (.I0(inv_in_IBUF[2]),
        .I1(sum_in_IBUF[2]),
        .I2(and_in_IBUF[2]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(or_in_IBUF[2]),
        .O(alu_out_OBUF[2]));
  OBUF \alu_out_OBUF[3]_inst 
       (.I(alu_out_OBUF[3]),
        .O(alu_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \alu_out_OBUF[3]_inst_i_1 
       (.I0(inv_in_IBUF[3]),
        .I1(sum_in_IBUF[3]),
        .I2(and_in_IBUF[3]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(or_in_IBUF[3]),
        .O(alu_out_OBUF[3]));
  OBUF \alu_out_OBUF[4]_inst 
       (.I(alu_out_OBUF[4]),
        .O(alu_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \alu_out_OBUF[4]_inst_i_1 
       (.I0(inv_in_IBUF[4]),
        .I1(sum_in_IBUF[4]),
        .I2(and_in_IBUF[4]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(or_in_IBUF[4]),
        .O(alu_out_OBUF[4]));
  OBUF \alu_out_OBUF[5]_inst 
       (.I(alu_out_OBUF[5]),
        .O(alu_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \alu_out_OBUF[5]_inst_i_1 
       (.I0(inv_in_IBUF[5]),
        .I1(sum_in_IBUF[5]),
        .I2(and_in_IBUF[5]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(or_in_IBUF[5]),
        .O(alu_out_OBUF[5]));
  OBUF \alu_out_OBUF[6]_inst 
       (.I(alu_out_OBUF[6]),
        .O(alu_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \alu_out_OBUF[6]_inst_i_1 
       (.I0(inv_in_IBUF[6]),
        .I1(sum_in_IBUF[6]),
        .I2(and_in_IBUF[6]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(or_in_IBUF[6]),
        .O(alu_out_OBUF[6]));
  OBUF \alu_out_OBUF[7]_inst 
       (.I(alu_out_OBUF[7]),
        .O(alu_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \alu_out_OBUF[7]_inst_i_1 
       (.I0(inv_in_IBUF[7]),
        .I1(sum_in_IBUF[7]),
        .I2(and_in_IBUF[7]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(or_in_IBUF[7]),
        .O(alu_out_OBUF[7]));
  IBUF \and_in_IBUF[0]_inst 
       (.I(and_in[0]),
        .O(and_in_IBUF[0]));
  IBUF \and_in_IBUF[1]_inst 
       (.I(and_in[1]),
        .O(and_in_IBUF[1]));
  IBUF \and_in_IBUF[2]_inst 
       (.I(and_in[2]),
        .O(and_in_IBUF[2]));
  IBUF \and_in_IBUF[3]_inst 
       (.I(and_in[3]),
        .O(and_in_IBUF[3]));
  IBUF \and_in_IBUF[4]_inst 
       (.I(and_in[4]),
        .O(and_in_IBUF[4]));
  IBUF \and_in_IBUF[5]_inst 
       (.I(and_in[5]),
        .O(and_in_IBUF[5]));
  IBUF \and_in_IBUF[6]_inst 
       (.I(and_in[6]),
        .O(and_in_IBUF[6]));
  IBUF \and_in_IBUF[7]_inst 
       (.I(and_in[7]),
        .O(and_in_IBUF[7]));
  IBUF \inv_in_IBUF[0]_inst 
       (.I(inv_in[0]),
        .O(inv_in_IBUF[0]));
  IBUF \inv_in_IBUF[1]_inst 
       (.I(inv_in[1]),
        .O(inv_in_IBUF[1]));
  IBUF \inv_in_IBUF[2]_inst 
       (.I(inv_in[2]),
        .O(inv_in_IBUF[2]));
  IBUF \inv_in_IBUF[3]_inst 
       (.I(inv_in[3]),
        .O(inv_in_IBUF[3]));
  IBUF \inv_in_IBUF[4]_inst 
       (.I(inv_in[4]),
        .O(inv_in_IBUF[4]));
  IBUF \inv_in_IBUF[5]_inst 
       (.I(inv_in[5]),
        .O(inv_in_IBUF[5]));
  IBUF \inv_in_IBUF[6]_inst 
       (.I(inv_in[6]),
        .O(inv_in_IBUF[6]));
  IBUF \inv_in_IBUF[7]_inst 
       (.I(inv_in[7]),
        .O(inv_in_IBUF[7]));
  IBUF \or_in_IBUF[0]_inst 
       (.I(or_in[0]),
        .O(or_in_IBUF[0]));
  IBUF \or_in_IBUF[1]_inst 
       (.I(or_in[1]),
        .O(or_in_IBUF[1]));
  IBUF \or_in_IBUF[2]_inst 
       (.I(or_in[2]),
        .O(or_in_IBUF[2]));
  IBUF \or_in_IBUF[3]_inst 
       (.I(or_in[3]),
        .O(or_in_IBUF[3]));
  IBUF \or_in_IBUF[4]_inst 
       (.I(or_in[4]),
        .O(or_in_IBUF[4]));
  IBUF \or_in_IBUF[5]_inst 
       (.I(or_in[5]),
        .O(or_in_IBUF[5]));
  IBUF \or_in_IBUF[6]_inst 
       (.I(or_in[6]),
        .O(or_in_IBUF[6]));
  IBUF \or_in_IBUF[7]_inst 
       (.I(or_in[7]),
        .O(or_in_IBUF[7]));
  IBUF \select_in_IBUF[0]_inst 
       (.I(select_in[0]),
        .O(select_in_IBUF[0]));
  IBUF \select_in_IBUF[1]_inst 
       (.I(select_in[1]),
        .O(select_in_IBUF[1]));
  IBUF \sum_in_IBUF[0]_inst 
       (.I(sum_in[0]),
        .O(sum_in_IBUF[0]));
  IBUF \sum_in_IBUF[1]_inst 
       (.I(sum_in[1]),
        .O(sum_in_IBUF[1]));
  IBUF \sum_in_IBUF[2]_inst 
       (.I(sum_in[2]),
        .O(sum_in_IBUF[2]));
  IBUF \sum_in_IBUF[3]_inst 
       (.I(sum_in[3]),
        .O(sum_in_IBUF[3]));
  IBUF \sum_in_IBUF[4]_inst 
       (.I(sum_in[4]),
        .O(sum_in_IBUF[4]));
  IBUF \sum_in_IBUF[5]_inst 
       (.I(sum_in[5]),
        .O(sum_in_IBUF[5]));
  IBUF \sum_in_IBUF[6]_inst 
       (.I(sum_in[6]),
        .O(sum_in_IBUF[6]));
  IBUF \sum_in_IBUF[7]_inst 
       (.I(sum_in[7]),
        .O(sum_in_IBUF[7]));
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
