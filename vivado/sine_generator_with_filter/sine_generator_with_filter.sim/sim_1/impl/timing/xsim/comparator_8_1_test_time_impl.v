// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Mon Mar 26 15:31:21 2018
// Host        : Tr0llz0r running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Tamara/Dokumente/study/4th
//               Semester/spro4-em/vivado/Assignment_3/Assignment_3.sim/sim_1/impl/timing/xsim/comparator_8_1_test_time_impl.v}
// Design      : comparator_8_1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "c60557f" *) 
(* NotValidForBitStream *)
module comparator_8_1
   (clk,
    reset,
    a_in,
    b_in,
    comp_out);
  input clk;
  input reset;
  input [7:0]a_in;
  input [7:0]b_in;
  output comp_out;

  wire [7:0]a_in;
  wire [7:0]a_in_IBUF;
  wire [7:0]b_in;
  wire [7:0]b_in_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire comp_out;
  wire comp_out_OBUF;
  wire comp_out_i_2_n_0;
  wire comp_out_i_3_n_0;
  wire comp_out_i_4_n_0;
  wire comp_out_i_5_n_0;
  wire comp_out_i_6_n_0;
  wire comp_out_i_7_n_0;
  wire comp_out_i_8_n_0;
  wire comp_out_i_9_n_0;
  wire comp_out_reg_i_1_n_0;
  wire reset;
  wire reset_IBUF;
  wire [2:0]NLW_comp_out_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_comp_out_reg_i_1_O_UNCONNECTED;

initial begin
 $sdf_annotate("comparator_8_1_test_time_impl.sdf",,,,"tool_control");
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
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF comp_out_OBUF_inst
       (.I(comp_out_OBUF),
        .O(comp_out));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out_i_2
       (.I0(b_in_IBUF[6]),
        .I1(a_in_IBUF[6]),
        .I2(a_in_IBUF[7]),
        .I3(b_in_IBUF[7]),
        .O(comp_out_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out_i_3
       (.I0(b_in_IBUF[4]),
        .I1(a_in_IBUF[4]),
        .I2(a_in_IBUF[5]),
        .I3(b_in_IBUF[5]),
        .O(comp_out_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out_i_4
       (.I0(b_in_IBUF[2]),
        .I1(a_in_IBUF[2]),
        .I2(a_in_IBUF[3]),
        .I3(b_in_IBUF[3]),
        .O(comp_out_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    comp_out_i_5
       (.I0(b_in_IBUF[0]),
        .I1(a_in_IBUF[0]),
        .I2(a_in_IBUF[1]),
        .I3(b_in_IBUF[1]),
        .O(comp_out_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out_i_6
       (.I0(b_in_IBUF[6]),
        .I1(a_in_IBUF[6]),
        .I2(b_in_IBUF[7]),
        .I3(a_in_IBUF[7]),
        .O(comp_out_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out_i_7
       (.I0(b_in_IBUF[4]),
        .I1(a_in_IBUF[4]),
        .I2(b_in_IBUF[5]),
        .I3(a_in_IBUF[5]),
        .O(comp_out_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out_i_8
       (.I0(b_in_IBUF[2]),
        .I1(a_in_IBUF[2]),
        .I2(b_in_IBUF[3]),
        .I3(a_in_IBUF[3]),
        .O(comp_out_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    comp_out_i_9
       (.I0(b_in_IBUF[0]),
        .I1(a_in_IBUF[0]),
        .I2(b_in_IBUF[1]),
        .I3(a_in_IBUF[1]),
        .O(comp_out_i_9_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    comp_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(comp_out_reg_i_1_n_0),
        .Q(comp_out_OBUF),
        .R(reset_IBUF));
  CARRY4 comp_out_reg_i_1
       (.CI(1'b0),
        .CO({comp_out_reg_i_1_n_0,NLW_comp_out_reg_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({comp_out_i_2_n_0,comp_out_i_3_n_0,comp_out_i_4_n_0,comp_out_i_5_n_0}),
        .O(NLW_comp_out_reg_i_1_O_UNCONNECTED[3:0]),
        .S({comp_out_i_6_n_0,comp_out_i_7_n_0,comp_out_i_8_n_0,comp_out_i_9_n_0}));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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
