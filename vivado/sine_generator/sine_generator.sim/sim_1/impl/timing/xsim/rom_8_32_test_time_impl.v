// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Mon Mar 26 13:08:40 2018
// Host        : Tr0llz0r running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Tamara/Dokumente/study/4th
//               Semester/spro4-em/vivado/Assignment_3/Assignment_3.sim/sim_1/impl/timing/xsim/rom_8_32_test_time_impl.v}
// Design      : rom_8_32
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "3b2e6830" *) 
(* NotValidForBitStream *)
module rom_8_32
   (adr_in,
    rom_out);
  input [5:0]adr_in;
  output [7:0]rom_out;

  wire [5:0]adr_in;
  wire [4:0]adr_in_IBUF;
  wire [7:0]rom_out;
  wire [7:0]rom_out_OBUF;

initial begin
 $sdf_annotate("rom_8_32_test_time_impl.sdf",,,,"tool_control");
end
  IBUF \adr_in_IBUF[0]_inst 
       (.I(adr_in[0]),
        .O(adr_in_IBUF[0]));
  IBUF \adr_in_IBUF[1]_inst 
       (.I(adr_in[1]),
        .O(adr_in_IBUF[1]));
  IBUF \adr_in_IBUF[2]_inst 
       (.I(adr_in[2]),
        .O(adr_in_IBUF[2]));
  IBUF \adr_in_IBUF[3]_inst 
       (.I(adr_in[3]),
        .O(adr_in_IBUF[3]));
  IBUF \adr_in_IBUF[4]_inst 
       (.I(adr_in[4]),
        .O(adr_in_IBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF83E07C0)) 
    g0_b0
       (.I0(adr_in_IBUF[0]),
        .I1(adr_in_IBUF[1]),
        .I2(adr_in_IBUF[2]),
        .I3(adr_in_IBUF[3]),
        .I4(adr_in_IBUF[4]),
        .O(rom_out_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC6C63938)) 
    g0_b1
       (.I0(adr_in_IBUF[0]),
        .I1(adr_in_IBUF[1]),
        .I2(adr_in_IBUF[2]),
        .I3(adr_in_IBUF[3]),
        .I4(adr_in_IBUF[4]),
        .O(rom_out_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hD83627C8)) 
    g0_b2
       (.I0(adr_in_IBUF[0]),
        .I1(adr_in_IBUF[1]),
        .I2(adr_in_IBUF[2]),
        .I3(adr_in_IBUF[3]),
        .I4(adr_in_IBUF[4]),
        .O(rom_out_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h644C9BB2)) 
    g0_b3
       (.I0(adr_in_IBUF[0]),
        .I1(adr_in_IBUF[1]),
        .I2(adr_in_IBUF[2]),
        .I3(adr_in_IBUF[3]),
        .I4(adr_in_IBUF[4]),
        .O(rom_out_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2828D7D6)) 
    g0_b4
       (.I0(adr_in_IBUF[0]),
        .I1(adr_in_IBUF[1]),
        .I2(adr_in_IBUF[2]),
        .I3(adr_in_IBUF[3]),
        .I4(adr_in_IBUF[4]),
        .O(rom_out_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB01A4FE4)) 
    g0_b5
       (.I0(adr_in_IBUF[0]),
        .I1(adr_in_IBUF[1]),
        .I2(adr_in_IBUF[2]),
        .I3(adr_in_IBUF[3]),
        .I4(adr_in_IBUF[4]),
        .O(rom_out_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hC0063FF8)) 
    g0_b6
       (.I0(adr_in_IBUF[0]),
        .I1(adr_in_IBUF[1]),
        .I2(adr_in_IBUF[2]),
        .I3(adr_in_IBUF[3]),
        .I4(adr_in_IBUF[4]),
        .O(rom_out_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    g0_b7
       (.I0(adr_in_IBUF[0]),
        .I1(adr_in_IBUF[1]),
        .I2(adr_in_IBUF[2]),
        .I3(adr_in_IBUF[3]),
        .I4(adr_in_IBUF[4]),
        .O(rom_out_OBUF[7]));
  OBUF \rom_out_OBUF[0]_inst 
       (.I(rom_out_OBUF[0]),
        .O(rom_out[0]));
  OBUF \rom_out_OBUF[1]_inst 
       (.I(rom_out_OBUF[1]),
        .O(rom_out[1]));
  OBUF \rom_out_OBUF[2]_inst 
       (.I(rom_out_OBUF[2]),
        .O(rom_out[2]));
  OBUF \rom_out_OBUF[3]_inst 
       (.I(rom_out_OBUF[3]),
        .O(rom_out[3]));
  OBUF \rom_out_OBUF[4]_inst 
       (.I(rom_out_OBUF[4]),
        .O(rom_out[4]));
  OBUF \rom_out_OBUF[5]_inst 
       (.I(rom_out_OBUF[5]),
        .O(rom_out[5]));
  OBUF \rom_out_OBUF[6]_inst 
       (.I(rom_out_OBUF[6]),
        .O(rom_out[6]));
  OBUF \rom_out_OBUF[7]_inst 
       (.I(rom_out_OBUF[7]),
        .O(rom_out[7]));
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
