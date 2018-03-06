// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Tue Mar  6 09:56:23 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/risc-cpu/risc-cpu.sim/tests/impl/timing/xsim/register_8_test_time_impl.v}
// Design      : register_8
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "1c4da713" *) 
(* NotValidForBitStream *)
module register_8
   (clk,
    reset,
    enable,
    reg_in,
    reg_out);
  input clk;
  input reset;
  input enable;
  input [7:0]reg_in;
  output [7:0]reg_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire enable;
  wire enable_IBUF;
  wire [7:0]reg_in;
  wire [7:0]reg_in_IBUF;
  wire [7:0]reg_out;
  wire [7:0]reg_out_OBUF;
  wire reset;
  wire reset_IBUF;

initial begin
 $sdf_annotate("register_8_test_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF enable_IBUF_inst
       (.I(enable),
        .O(enable_IBUF));
  IBUF \reg_in_IBUF[0]_inst 
       (.I(reg_in[0]),
        .O(reg_in_IBUF[0]));
  IBUF \reg_in_IBUF[1]_inst 
       (.I(reg_in[1]),
        .O(reg_in_IBUF[1]));
  IBUF \reg_in_IBUF[2]_inst 
       (.I(reg_in[2]),
        .O(reg_in_IBUF[2]));
  IBUF \reg_in_IBUF[3]_inst 
       (.I(reg_in[3]),
        .O(reg_in_IBUF[3]));
  IBUF \reg_in_IBUF[4]_inst 
       (.I(reg_in[4]),
        .O(reg_in_IBUF[4]));
  IBUF \reg_in_IBUF[5]_inst 
       (.I(reg_in[5]),
        .O(reg_in_IBUF[5]));
  IBUF \reg_in_IBUF[6]_inst 
       (.I(reg_in[6]),
        .O(reg_in_IBUF[6]));
  IBUF \reg_in_IBUF[7]_inst 
       (.I(reg_in[7]),
        .O(reg_in_IBUF[7]));
  OBUF \reg_out_OBUF[0]_inst 
       (.I(reg_out_OBUF[0]),
        .O(reg_out[0]));
  OBUF \reg_out_OBUF[1]_inst 
       (.I(reg_out_OBUF[1]),
        .O(reg_out[1]));
  OBUF \reg_out_OBUF[2]_inst 
       (.I(reg_out_OBUF[2]),
        .O(reg_out[2]));
  OBUF \reg_out_OBUF[3]_inst 
       (.I(reg_out_OBUF[3]),
        .O(reg_out[3]));
  OBUF \reg_out_OBUF[4]_inst 
       (.I(reg_out_OBUF[4]),
        .O(reg_out[4]));
  OBUF \reg_out_OBUF[5]_inst 
       (.I(reg_out_OBUF[5]),
        .O(reg_out[5]));
  OBUF \reg_out_OBUF[6]_inst 
       (.I(reg_out_OBUF[6]),
        .O(reg_out[6]));
  OBUF \reg_out_OBUF[7]_inst 
       (.I(reg_out_OBUF[7]),
        .O(reg_out[7]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(reg_in_IBUF[0]),
        .Q(reg_out_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(reg_in_IBUF[1]),
        .Q(reg_out_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(reg_in_IBUF[2]),
        .Q(reg_out_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(reg_in_IBUF[3]),
        .Q(reg_out_OBUF[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(reg_in_IBUF[4]),
        .Q(reg_out_OBUF[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(reg_in_IBUF[5]),
        .Q(reg_out_OBUF[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(reg_in_IBUF[6]),
        .Q(reg_out_OBUF[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(reg_in_IBUF[7]),
        .Q(reg_out_OBUF[7]),
        .R(reset_IBUF));
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
