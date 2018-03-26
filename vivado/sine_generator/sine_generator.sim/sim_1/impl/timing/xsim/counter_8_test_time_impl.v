// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Mon Mar 26 14:52:53 2018
// Host        : Tr0llz0r running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Tamara/Dokumente/study/4th
//               Semester/spro4-em/vivado/Assignment_3/Assignment_3.sim/sim_1/impl/timing/xsim/counter_8_test_time_impl.v}
// Design      : counter_8
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "92aaf674" *) 
(* NotValidForBitStream *)
module counter_8
   (clk,
    reset,
    q_out);
  input clk;
  input reset;
  output [7:0]q_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]plusOp;
  wire [7:0]q_out;
  wire [7:0]q_out_OBUF;
  wire reset;
  wire reset_IBUF;
  wire \tmp[7]_i_2_n_0 ;

initial begin
 $sdf_annotate("counter_8_test_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \q_out_OBUF[0]_inst 
       (.I(q_out_OBUF[0]),
        .O(q_out[0]));
  OBUF \q_out_OBUF[1]_inst 
       (.I(q_out_OBUF[1]),
        .O(q_out[1]));
  OBUF \q_out_OBUF[2]_inst 
       (.I(q_out_OBUF[2]),
        .O(q_out[2]));
  OBUF \q_out_OBUF[3]_inst 
       (.I(q_out_OBUF[3]),
        .O(q_out[3]));
  OBUF \q_out_OBUF[4]_inst 
       (.I(q_out_OBUF[4]),
        .O(q_out[4]));
  OBUF \q_out_OBUF[5]_inst 
       (.I(q_out_OBUF[5]),
        .O(q_out[5]));
  OBUF \q_out_OBUF[6]_inst 
       (.I(q_out_OBUF[6]),
        .O(q_out[6]));
  OBUF \q_out_OBUF[7]_inst 
       (.I(q_out_OBUF[7]),
        .O(q_out[7]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp[0]_i_1 
       (.I0(q_out_OBUF[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[1]_i_1 
       (.I0(q_out_OBUF[0]),
        .I1(q_out_OBUF[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp[2]_i_1 
       (.I0(q_out_OBUF[0]),
        .I1(q_out_OBUF[1]),
        .I2(q_out_OBUF[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tmp[3]_i_1 
       (.I0(q_out_OBUF[1]),
        .I1(q_out_OBUF[0]),
        .I2(q_out_OBUF[2]),
        .I3(q_out_OBUF[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tmp[4]_i_1 
       (.I0(q_out_OBUF[2]),
        .I1(q_out_OBUF[0]),
        .I2(q_out_OBUF[1]),
        .I3(q_out_OBUF[3]),
        .I4(q_out_OBUF[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \tmp[5]_i_1 
       (.I0(q_out_OBUF[3]),
        .I1(q_out_OBUF[1]),
        .I2(q_out_OBUF[0]),
        .I3(q_out_OBUF[2]),
        .I4(q_out_OBUF[4]),
        .I5(q_out_OBUF[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[6]_i_1 
       (.I0(\tmp[7]_i_2_n_0 ),
        .I1(q_out_OBUF[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp[7]_i_1 
       (.I0(\tmp[7]_i_2_n_0 ),
        .I1(q_out_OBUF[6]),
        .I2(q_out_OBUF[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \tmp[7]_i_2 
       (.I0(q_out_OBUF[5]),
        .I1(q_out_OBUF[3]),
        .I2(q_out_OBUF[1]),
        .I3(q_out_OBUF[0]),
        .I4(q_out_OBUF[2]),
        .I5(q_out_OBUF[4]),
        .O(\tmp[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(q_out_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(q_out_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(q_out_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(q_out_OBUF[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(q_out_OBUF[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(q_out_OBUF[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(q_out_OBUF[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(q_out_OBUF[7]),
        .R(reset_IBUF));
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
