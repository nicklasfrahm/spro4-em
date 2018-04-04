// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Tue Apr  3 09:29:32 2018
// Host        : Tr0llz0r running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Tamara/Dokumente/study/4th
//               Semester/spro4-em/vivado/sine_generator/sine_generator.sim/sim_1/impl/timing/xsim/dip_sw_8_test_time_impl.v}
// Design      : dip_sw_8
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "ae7bd816" *) 
(* NotValidForBitStream *)
module dip_sw_8
   (clk,
    dip_sw0_in,
    dip_sw1_in,
    dip_sw2_in,
    dip_sw3_in,
    dip_sw4_in,
    dip_sw5_in,
    dip_sw6_in,
    dip_sw7_in,
    dip_sw_out);
  input clk;
  input dip_sw0_in;
  input dip_sw1_in;
  input dip_sw2_in;
  input dip_sw3_in;
  input dip_sw4_in;
  input dip_sw5_in;
  input dip_sw6_in;
  input dip_sw7_in;
  output [7:0]dip_sw_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
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
  wire [7:0]dip_sw_out;
  wire [7:0]dip_sw_out_OBUF;

initial begin
 $sdf_annotate("dip_sw_8_test_time_impl.sdf",,,,"tool_control");
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
  OBUF \dip_sw_out_OBUF[0]_inst 
       (.I(dip_sw_out_OBUF[0]),
        .O(dip_sw_out[0]));
  OBUF \dip_sw_out_OBUF[1]_inst 
       (.I(dip_sw_out_OBUF[1]),
        .O(dip_sw_out[1]));
  OBUF \dip_sw_out_OBUF[2]_inst 
       (.I(dip_sw_out_OBUF[2]),
        .O(dip_sw_out[2]));
  OBUF \dip_sw_out_OBUF[3]_inst 
       (.I(dip_sw_out_OBUF[3]),
        .O(dip_sw_out[3]));
  OBUF \dip_sw_out_OBUF[4]_inst 
       (.I(dip_sw_out_OBUF[4]),
        .O(dip_sw_out[4]));
  OBUF \dip_sw_out_OBUF[5]_inst 
       (.I(dip_sw_out_OBUF[5]),
        .O(dip_sw_out[5]));
  OBUF \dip_sw_out_OBUF[6]_inst 
       (.I(dip_sw_out_OBUF[6]),
        .O(dip_sw_out[6]));
  OBUF \dip_sw_out_OBUF[7]_inst 
       (.I(dip_sw_out_OBUF[7]),
        .O(dip_sw_out[7]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dip_sw0_in_IBUF),
        .Q(dip_sw_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dip_sw1_in_IBUF),
        .Q(dip_sw_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dip_sw2_in_IBUF),
        .Q(dip_sw_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dip_sw3_in_IBUF),
        .Q(dip_sw_out_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dip_sw4_in_IBUF),
        .Q(dip_sw_out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dip_sw5_in_IBUF),
        .Q(dip_sw_out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dip_sw6_in_IBUF),
        .Q(dip_sw_out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \dip_sw_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dip_sw7_in_IBUF),
        .Q(dip_sw_out_OBUF[7]),
        .R(1'b0));
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
