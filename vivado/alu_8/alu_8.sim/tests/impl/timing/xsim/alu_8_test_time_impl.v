// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Mon Feb 19 17:02:30 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/alu_8/alu_8.sim/tests/impl/timing/xsim/alu_8_test_time_impl.v}
// Design      : alu_8
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "c64c0a82" *) 
(* NotValidForBitStream *)
module alu_8
   (a_in,
    b_in,
    select_in,
    alu_out,
    carry_in,
    carry_out);
  input [7:0]a_in;
  input [7:0]b_in;
  input [1:0]select_in;
  output [7:0]alu_out;
  input carry_in;
  output carry_out;

  wire [7:0]a_in;
  wire [7:0]a_in_IBUF;
  wire \adder_8_component/carry_out10__1 ;
  wire \adder_8_component/carry_out12__1 ;
  wire \adder_8_component/carry_out14__1 ;
  wire \adder_8_component/carry_out2__1 ;
  wire \adder_8_component/carry_out4__1 ;
  wire \adder_8_component/carry_out6__1 ;
  wire \adder_8_component/carry_out826_out ;
  wire \adder_8_component/carry_out8__1 ;
  wire [7:0]alu_out;
  wire [7:0]alu_out_OBUF;
  wire \alu_out_OBUF[7]_inst_i_3_n_0 ;
  wire \alu_out_OBUF[7]_inst_i_4_n_0 ;
  wire [7:0]b_in;
  wire [7:0]b_in_IBUF;
  wire carry_in;
  wire carry_in_IBUF;
  wire carry_out;
  wire carry_out_OBUF;
  wire [1:0]select_in;
  wire [1:0]select_in_IBUF;

initial begin
 $sdf_annotate("alu_8_test_time_impl.sdf",,,,"tool_control");
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
  OBUF \alu_out_OBUF[0]_inst 
       (.I(alu_out_OBUF[0]),
        .O(alu_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC00FFC96)) 
    \alu_out_OBUF[0]_inst_i_1 
       (.I0(carry_in_IBUF),
        .I1(b_in_IBUF[0]),
        .I2(a_in_IBUF[0]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .O(alu_out_OBUF[0]));
  OBUF \alu_out_OBUF[1]_inst 
       (.I(alu_out_OBUF[1]),
        .O(alu_out[1]));
  LUT5 #(
    .INIT(32'hC00FFC96)) 
    \alu_out_OBUF[1]_inst_i_1 
       (.I0(\adder_8_component/carry_out14__1 ),
        .I1(b_in_IBUF[1]),
        .I2(a_in_IBUF[1]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .O(alu_out_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \alu_out_OBUF[1]_inst_i_2 
       (.I0(carry_in_IBUF),
        .I1(b_in_IBUF[0]),
        .I2(a_in_IBUF[0]),
        .O(\adder_8_component/carry_out14__1 ));
  OBUF \alu_out_OBUF[2]_inst 
       (.I(alu_out_OBUF[2]),
        .O(alu_out[2]));
  LUT5 #(
    .INIT(32'hC00FFC96)) 
    \alu_out_OBUF[2]_inst_i_1 
       (.I0(\adder_8_component/carry_out12__1 ),
        .I1(b_in_IBUF[2]),
        .I2(a_in_IBUF[2]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .O(alu_out_OBUF[2]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \alu_out_OBUF[2]_inst_i_2 
       (.I0(carry_in_IBUF),
        .I1(b_in_IBUF[0]),
        .I2(a_in_IBUF[0]),
        .I3(b_in_IBUF[1]),
        .I4(a_in_IBUF[1]),
        .O(\adder_8_component/carry_out12__1 ));
  OBUF \alu_out_OBUF[3]_inst 
       (.I(alu_out_OBUF[3]),
        .O(alu_out[3]));
  LUT5 #(
    .INIT(32'hC00FFC96)) 
    \alu_out_OBUF[3]_inst_i_1 
       (.I0(\adder_8_component/carry_out10__1 ),
        .I1(b_in_IBUF[3]),
        .I2(a_in_IBUF[3]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .O(alu_out_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \alu_out_OBUF[3]_inst_i_2 
       (.I0(\adder_8_component/carry_out12__1 ),
        .I1(b_in_IBUF[2]),
        .I2(a_in_IBUF[2]),
        .O(\adder_8_component/carry_out10__1 ));
  OBUF \alu_out_OBUF[4]_inst 
       (.I(alu_out_OBUF[4]),
        .O(alu_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC00FFC96)) 
    \alu_out_OBUF[4]_inst_i_1 
       (.I0(\adder_8_component/carry_out8__1 ),
        .I1(b_in_IBUF[4]),
        .I2(a_in_IBUF[4]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .O(alu_out_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \alu_out_OBUF[4]_inst_i_2 
       (.I0(\adder_8_component/carry_out12__1 ),
        .I1(b_in_IBUF[2]),
        .I2(a_in_IBUF[2]),
        .I3(b_in_IBUF[3]),
        .I4(a_in_IBUF[3]),
        .O(\adder_8_component/carry_out8__1 ));
  OBUF \alu_out_OBUF[5]_inst 
       (.I(alu_out_OBUF[5]),
        .O(alu_out[5]));
  LUT5 #(
    .INIT(32'hC00FFC96)) 
    \alu_out_OBUF[5]_inst_i_1 
       (.I0(\adder_8_component/carry_out6__1 ),
        .I1(b_in_IBUF[5]),
        .I2(a_in_IBUF[5]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .O(alu_out_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \alu_out_OBUF[5]_inst_i_2 
       (.I0(\adder_8_component/carry_out8__1 ),
        .I1(b_in_IBUF[4]),
        .I2(a_in_IBUF[4]),
        .O(\adder_8_component/carry_out6__1 ));
  OBUF \alu_out_OBUF[6]_inst 
       (.I(alu_out_OBUF[6]),
        .O(alu_out[6]));
  LUT5 #(
    .INIT(32'hC00FFC96)) 
    \alu_out_OBUF[6]_inst_i_1 
       (.I0(\adder_8_component/carry_out4__1 ),
        .I1(b_in_IBUF[6]),
        .I2(a_in_IBUF[6]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .O(alu_out_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \alu_out_OBUF[6]_inst_i_2 
       (.I0(\adder_8_component/carry_out8__1 ),
        .I1(b_in_IBUF[4]),
        .I2(a_in_IBUF[4]),
        .I3(b_in_IBUF[5]),
        .I4(a_in_IBUF[5]),
        .O(\adder_8_component/carry_out4__1 ));
  OBUF \alu_out_OBUF[7]_inst 
       (.I(alu_out_OBUF[7]),
        .O(alu_out[7]));
  LUT5 #(
    .INIT(32'hC00FFC96)) 
    \alu_out_OBUF[7]_inst_i_1 
       (.I0(\adder_8_component/carry_out2__1 ),
        .I1(b_in_IBUF[7]),
        .I2(a_in_IBUF[7]),
        .I3(select_in_IBUF[1]),
        .I4(select_in_IBUF[0]),
        .O(alu_out_OBUF[7]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \alu_out_OBUF[7]_inst_i_2 
       (.I0(\alu_out_OBUF[7]_inst_i_3_n_0 ),
        .I1(\alu_out_OBUF[7]_inst_i_4_n_0 ),
        .I2(b_in_IBUF[5]),
        .I3(a_in_IBUF[5]),
        .I4(b_in_IBUF[6]),
        .I5(a_in_IBUF[6]),
        .O(\adder_8_component/carry_out2__1 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \alu_out_OBUF[7]_inst_i_3 
       (.I0(\adder_8_component/carry_out826_out ),
        .I1(a_in_IBUF[3]),
        .I2(b_in_IBUF[3]),
        .I3(a_in_IBUF[2]),
        .I4(b_in_IBUF[2]),
        .I5(\adder_8_component/carry_out12__1 ),
        .O(\alu_out_OBUF[7]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alu_out_OBUF[7]_inst_i_4 
       (.I0(a_in_IBUF[4]),
        .I1(b_in_IBUF[4]),
        .O(\alu_out_OBUF[7]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out_OBUF[7]_inst_i_5 
       (.I0(a_in_IBUF[4]),
        .I1(b_in_IBUF[4]),
        .O(\adder_8_component/carry_out826_out ));
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
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    carry_out_OBUF_inst_i_1
       (.I0(\adder_8_component/carry_out4__1 ),
        .I1(b_in_IBUF[6]),
        .I2(a_in_IBUF[6]),
        .I3(b_in_IBUF[7]),
        .I4(a_in_IBUF[7]),
        .O(carry_out_OBUF));
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
