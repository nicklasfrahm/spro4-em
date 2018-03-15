// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Tue Mar  6 10:42:13 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/risc-cpu/risc-cpu.sim/tests/impl/timing/xsim/mux_4_1_test_time_impl.v}
// Design      : mux_4_1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "4b76c445" *) 
(* NotValidForBitStream *)
module mux_4_1
   (a_in,
    b_in,
    c_in,
    d_in,
    select_in,
    mux_out);
  input [7:0]a_in;
  input [7:0]b_in;
  input [7:0]c_in;
  input [7:0]d_in;
  input [1:0]select_in;
  output [7:0]mux_out;

  wire [7:0]a_in;
  wire [7:0]a_in_IBUF;
  wire [7:0]b_in;
  wire [7:0]b_in_IBUF;
  wire [7:0]c_in;
  wire [7:0]c_in_IBUF;
  wire [7:0]d_in;
  wire [7:0]d_in_IBUF;
  wire [7:0]mux_out;
  wire [7:0]mux_out_OBUF;
  wire [1:0]select_in;
  wire [1:0]select_in_IBUF;

initial begin
 $sdf_annotate("mux_4_1_test_time_impl.sdf",,,,"tool_control");
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
  IBUF \c_in_IBUF[0]_inst 
       (.I(c_in[0]),
        .O(c_in_IBUF[0]));
  IBUF \c_in_IBUF[1]_inst 
       (.I(c_in[1]),
        .O(c_in_IBUF[1]));
  IBUF \c_in_IBUF[2]_inst 
       (.I(c_in[2]),
        .O(c_in_IBUF[2]));
  IBUF \c_in_IBUF[3]_inst 
       (.I(c_in[3]),
        .O(c_in_IBUF[3]));
  IBUF \c_in_IBUF[4]_inst 
       (.I(c_in[4]),
        .O(c_in_IBUF[4]));
  IBUF \c_in_IBUF[5]_inst 
       (.I(c_in[5]),
        .O(c_in_IBUF[5]));
  IBUF \c_in_IBUF[6]_inst 
       (.I(c_in[6]),
        .O(c_in_IBUF[6]));
  IBUF \c_in_IBUF[7]_inst 
       (.I(c_in[7]),
        .O(c_in_IBUF[7]));
  IBUF \d_in_IBUF[0]_inst 
       (.I(d_in[0]),
        .O(d_in_IBUF[0]));
  IBUF \d_in_IBUF[1]_inst 
       (.I(d_in[1]),
        .O(d_in_IBUF[1]));
  IBUF \d_in_IBUF[2]_inst 
       (.I(d_in[2]),
        .O(d_in_IBUF[2]));
  IBUF \d_in_IBUF[3]_inst 
       (.I(d_in[3]),
        .O(d_in_IBUF[3]));
  IBUF \d_in_IBUF[4]_inst 
       (.I(d_in[4]),
        .O(d_in_IBUF[4]));
  IBUF \d_in_IBUF[5]_inst 
       (.I(d_in[5]),
        .O(d_in_IBUF[5]));
  IBUF \d_in_IBUF[6]_inst 
       (.I(d_in[6]),
        .O(d_in_IBUF[6]));
  IBUF \d_in_IBUF[7]_inst 
       (.I(d_in[7]),
        .O(d_in_IBUF[7]));
  OBUF \mux_out_OBUF[0]_inst 
       (.I(mux_out_OBUF[0]),
        .O(mux_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \mux_out_OBUF[0]_inst_i_1 
       (.I0(b_in_IBUF[0]),
        .I1(a_in_IBUF[0]),
        .I2(d_in_IBUF[0]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(c_in_IBUF[0]),
        .O(mux_out_OBUF[0]));
  OBUF \mux_out_OBUF[1]_inst 
       (.I(mux_out_OBUF[1]),
        .O(mux_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \mux_out_OBUF[1]_inst_i_1 
       (.I0(b_in_IBUF[1]),
        .I1(a_in_IBUF[1]),
        .I2(d_in_IBUF[1]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(c_in_IBUF[1]),
        .O(mux_out_OBUF[1]));
  OBUF \mux_out_OBUF[2]_inst 
       (.I(mux_out_OBUF[2]),
        .O(mux_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \mux_out_OBUF[2]_inst_i_1 
       (.I0(b_in_IBUF[2]),
        .I1(a_in_IBUF[2]),
        .I2(d_in_IBUF[2]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(c_in_IBUF[2]),
        .O(mux_out_OBUF[2]));
  OBUF \mux_out_OBUF[3]_inst 
       (.I(mux_out_OBUF[3]),
        .O(mux_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \mux_out_OBUF[3]_inst_i_1 
       (.I0(b_in_IBUF[3]),
        .I1(a_in_IBUF[3]),
        .I2(d_in_IBUF[3]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(c_in_IBUF[3]),
        .O(mux_out_OBUF[3]));
  OBUF \mux_out_OBUF[4]_inst 
       (.I(mux_out_OBUF[4]),
        .O(mux_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \mux_out_OBUF[4]_inst_i_1 
       (.I0(b_in_IBUF[4]),
        .I1(a_in_IBUF[4]),
        .I2(d_in_IBUF[4]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(c_in_IBUF[4]),
        .O(mux_out_OBUF[4]));
  OBUF \mux_out_OBUF[5]_inst 
       (.I(mux_out_OBUF[5]),
        .O(mux_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \mux_out_OBUF[5]_inst_i_1 
       (.I0(b_in_IBUF[5]),
        .I1(a_in_IBUF[5]),
        .I2(d_in_IBUF[5]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(c_in_IBUF[5]),
        .O(mux_out_OBUF[5]));
  OBUF \mux_out_OBUF[6]_inst 
       (.I(mux_out_OBUF[6]),
        .O(mux_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \mux_out_OBUF[6]_inst_i_1 
       (.I0(b_in_IBUF[6]),
        .I1(a_in_IBUF[6]),
        .I2(d_in_IBUF[6]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(c_in_IBUF[6]),
        .O(mux_out_OBUF[6]));
  OBUF \mux_out_OBUF[7]_inst 
       (.I(mux_out_OBUF[7]),
        .O(mux_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \mux_out_OBUF[7]_inst_i_1 
       (.I0(b_in_IBUF[7]),
        .I1(a_in_IBUF[7]),
        .I2(d_in_IBUF[7]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .I5(c_in_IBUF[7]),
        .O(mux_out_OBUF[7]));
  IBUF \select_in_IBUF[0]_inst 
       (.I(select_in[0]),
        .O(select_in_IBUF[0]));
  IBUF \select_in_IBUF[1]_inst 
       (.I(select_in[1]),
        .O(select_in_IBUF[1]));
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
