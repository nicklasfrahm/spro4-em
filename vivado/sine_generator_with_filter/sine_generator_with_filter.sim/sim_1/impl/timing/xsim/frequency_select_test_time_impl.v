// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Tue Apr  3 11:03:30 2018
// Host        : Tr0llz0r running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Tamara/Dokumente/study/4th
//               Semester/spro4-em/vivado/sine_generator/sine_generator.sim/sim_1/impl/timing/xsim/frequency_select_test_time_impl.v}
// Design      : frequency_select
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "63e4428d" *) 
(* NotValidForBitStream *)
module frequency_select
   (clk,
    dip_sw_in,
    addr_out);
  input clk;
  input [7:0]dip_sw_in;
  output [4:0]addr_out;

  wire [4:0]addr_out;
  wire [4:0]addr_out_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]dip_sw_in;
  wire [7:0]dip_sw_in_IBUF;
  wire [4:0]plusOp;
  wire sel;
  wire \timer_count[0]_i_10_n_0 ;
  wire \timer_count[0]_i_11_n_0 ;
  wire \timer_count[0]_i_12_n_0 ;
  wire \timer_count[0]_i_13_n_0 ;
  wire \timer_count[0]_i_14_n_0 ;
  wire \timer_count[0]_i_15_n_0 ;
  wire \timer_count[0]_i_16_n_0 ;
  wire \timer_count[0]_i_4_n_0 ;
  wire \timer_count[0]_i_5_n_0 ;
  wire \timer_count[0]_i_6_n_0 ;
  wire \timer_count[0]_i_7_n_0 ;
  wire \timer_count[0]_i_8_n_0 ;
  wire \timer_count[0]_i_9_n_0 ;
  wire [11:0]timer_count_reg;
  wire \timer_count_reg[0]_i_2_n_0 ;
  wire \timer_count_reg[0]_i_2_n_4 ;
  wire \timer_count_reg[0]_i_2_n_5 ;
  wire \timer_count_reg[0]_i_2_n_6 ;
  wire \timer_count_reg[0]_i_2_n_7 ;
  wire \timer_count_reg[0]_i_3_n_0 ;
  wire \timer_count_reg[4]_i_1_n_0 ;
  wire \timer_count_reg[4]_i_1_n_4 ;
  wire \timer_count_reg[4]_i_1_n_5 ;
  wire \timer_count_reg[4]_i_1_n_6 ;
  wire \timer_count_reg[4]_i_1_n_7 ;
  wire \timer_count_reg[8]_i_1_n_4 ;
  wire \timer_count_reg[8]_i_1_n_5 ;
  wire \timer_count_reg[8]_i_1_n_6 ;
  wire \timer_count_reg[8]_i_1_n_7 ;
  wire [3:0]\NLW_timer_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_count_reg[0]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_timer_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_count_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_count_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_timer_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_count_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("frequency_select_test_time_impl.sdf",,,,"tool_control");
end
  LUT1 #(
    .INIT(2'h1)) 
    \addr[0]_i_1 
       (.I0(addr_out_OBUF[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr[1]_i_1 
       (.I0(addr_out_OBUF[0]),
        .I1(addr_out_OBUF[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr[2]_i_1 
       (.I0(addr_out_OBUF[0]),
        .I1(addr_out_OBUF[1]),
        .I2(addr_out_OBUF[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr[3]_i_1 
       (.I0(addr_out_OBUF[1]),
        .I1(addr_out_OBUF[0]),
        .I2(addr_out_OBUF[2]),
        .I3(addr_out_OBUF[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr[4]_i_1 
       (.I0(addr_out_OBUF[2]),
        .I1(addr_out_OBUF[0]),
        .I2(addr_out_OBUF[1]),
        .I3(addr_out_OBUF[3]),
        .I4(addr_out_OBUF[4]),
        .O(plusOp[4]));
  OBUF \addr_out_OBUF[0]_inst 
       (.I(addr_out_OBUF[0]),
        .O(addr_out[0]));
  OBUF \addr_out_OBUF[1]_inst 
       (.I(addr_out_OBUF[1]),
        .O(addr_out[1]));
  OBUF \addr_out_OBUF[2]_inst 
       (.I(addr_out_OBUF[2]),
        .O(addr_out[2]));
  OBUF \addr_out_OBUF[3]_inst 
       (.I(addr_out_OBUF[3]),
        .O(addr_out[3]));
  OBUF \addr_out_OBUF[4]_inst 
       (.I(addr_out_OBUF[4]),
        .O(addr_out[4]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[0]),
        .Q(addr_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[1]),
        .Q(addr_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[2]),
        .Q(addr_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[3]),
        .Q(addr_out_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[4]),
        .Q(addr_out_OBUF[4]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \dip_sw_in_IBUF[0]_inst 
       (.I(dip_sw_in[0]),
        .O(dip_sw_in_IBUF[0]));
  IBUF \dip_sw_in_IBUF[1]_inst 
       (.I(dip_sw_in[1]),
        .O(dip_sw_in_IBUF[1]));
  IBUF \dip_sw_in_IBUF[2]_inst 
       (.I(dip_sw_in[2]),
        .O(dip_sw_in_IBUF[2]));
  IBUF \dip_sw_in_IBUF[3]_inst 
       (.I(dip_sw_in[3]),
        .O(dip_sw_in_IBUF[3]));
  IBUF \dip_sw_in_IBUF[4]_inst 
       (.I(dip_sw_in[4]),
        .O(dip_sw_in_IBUF[4]));
  IBUF \dip_sw_in_IBUF[5]_inst 
       (.I(dip_sw_in[5]),
        .O(dip_sw_in_IBUF[5]));
  IBUF \dip_sw_in_IBUF[6]_inst 
       (.I(dip_sw_in[6]),
        .O(dip_sw_in_IBUF[6]));
  IBUF \dip_sw_in_IBUF[7]_inst 
       (.I(dip_sw_in[7]),
        .O(dip_sw_in_IBUF[7]));
  LUT4 #(
    .INIT(16'h2F02)) 
    \timer_count[0]_i_10 
       (.I0(timer_count_reg[4]),
        .I1(dip_sw_in_IBUF[0]),
        .I2(dip_sw_in_IBUF[1]),
        .I3(timer_count_reg[5]),
        .O(\timer_count[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \timer_count[0]_i_11 
       (.I0(timer_count_reg[2]),
        .I1(timer_count_reg[3]),
        .O(\timer_count[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \timer_count[0]_i_12 
       (.I0(timer_count_reg[0]),
        .I1(timer_count_reg[1]),
        .O(\timer_count[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \timer_count[0]_i_13 
       (.I0(timer_count_reg[6]),
        .I1(dip_sw_in_IBUF[2]),
        .I2(timer_count_reg[7]),
        .I3(dip_sw_in_IBUF[3]),
        .O(\timer_count[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \timer_count[0]_i_14 
       (.I0(timer_count_reg[4]),
        .I1(dip_sw_in_IBUF[0]),
        .I2(timer_count_reg[5]),
        .I3(dip_sw_in_IBUF[1]),
        .O(\timer_count[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer_count[0]_i_15 
       (.I0(timer_count_reg[2]),
        .I1(timer_count_reg[3]),
        .O(\timer_count[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer_count[0]_i_16 
       (.I0(timer_count_reg[0]),
        .I1(timer_count_reg[1]),
        .O(\timer_count[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \timer_count[0]_i_4 
       (.I0(timer_count_reg[10]),
        .I1(dip_sw_in_IBUF[6]),
        .I2(dip_sw_in_IBUF[7]),
        .I3(timer_count_reg[11]),
        .O(\timer_count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \timer_count[0]_i_5 
       (.I0(timer_count_reg[8]),
        .I1(dip_sw_in_IBUF[4]),
        .I2(dip_sw_in_IBUF[5]),
        .I3(timer_count_reg[9]),
        .O(\timer_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \timer_count[0]_i_6 
       (.I0(timer_count_reg[10]),
        .I1(dip_sw_in_IBUF[6]),
        .I2(timer_count_reg[11]),
        .I3(dip_sw_in_IBUF[7]),
        .O(\timer_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \timer_count[0]_i_7 
       (.I0(timer_count_reg[8]),
        .I1(dip_sw_in_IBUF[4]),
        .I2(timer_count_reg[9]),
        .I3(dip_sw_in_IBUF[5]),
        .O(\timer_count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer_count[0]_i_8 
       (.I0(timer_count_reg[0]),
        .O(\timer_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \timer_count[0]_i_9 
       (.I0(timer_count_reg[6]),
        .I1(dip_sw_in_IBUF[2]),
        .I2(dip_sw_in_IBUF[3]),
        .I3(timer_count_reg[7]),
        .O(\timer_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_7 ),
        .Q(timer_count_reg[0]),
        .R(sel));
  CARRY4 \timer_count_reg[0]_i_1 
       (.CI(\timer_count_reg[0]_i_3_n_0 ),
        .CO({\NLW_timer_count_reg[0]_i_1_CO_UNCONNECTED [3:2],sel,\NLW_timer_count_reg[0]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\timer_count[0]_i_4_n_0 ,\timer_count[0]_i_5_n_0 }),
        .O(\NLW_timer_count_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\timer_count[0]_i_6_n_0 ,\timer_count[0]_i_7_n_0 }));
  CARRY4 \timer_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\timer_count_reg[0]_i_2_n_0 ,\NLW_timer_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\timer_count_reg[0]_i_2_n_4 ,\timer_count_reg[0]_i_2_n_5 ,\timer_count_reg[0]_i_2_n_6 ,\timer_count_reg[0]_i_2_n_7 }),
        .S({timer_count_reg[3:1],\timer_count[0]_i_8_n_0 }));
  CARRY4 \timer_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\timer_count_reg[0]_i_3_n_0 ,\NLW_timer_count_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\timer_count[0]_i_9_n_0 ,\timer_count[0]_i_10_n_0 ,\timer_count[0]_i_11_n_0 ,\timer_count[0]_i_12_n_0 }),
        .O(\NLW_timer_count_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\timer_count[0]_i_13_n_0 ,\timer_count[0]_i_14_n_0 ,\timer_count[0]_i_15_n_0 ,\timer_count[0]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_5 ),
        .Q(timer_count_reg[10]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_4 ),
        .Q(timer_count_reg[11]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_6 ),
        .Q(timer_count_reg[1]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_5 ),
        .Q(timer_count_reg[2]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[0]_i_2_n_4 ),
        .Q(timer_count_reg[3]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_7 ),
        .Q(timer_count_reg[4]),
        .R(sel));
  CARRY4 \timer_count_reg[4]_i_1 
       (.CI(\timer_count_reg[0]_i_2_n_0 ),
        .CO({\timer_count_reg[4]_i_1_n_0 ,\NLW_timer_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_count_reg[4]_i_1_n_4 ,\timer_count_reg[4]_i_1_n_5 ,\timer_count_reg[4]_i_1_n_6 ,\timer_count_reg[4]_i_1_n_7 }),
        .S(timer_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_6 ),
        .Q(timer_count_reg[5]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_5 ),
        .Q(timer_count_reg[6]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[4]_i_1_n_4 ),
        .Q(timer_count_reg[7]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_7 ),
        .Q(timer_count_reg[8]),
        .R(sel));
  CARRY4 \timer_count_reg[8]_i_1 
       (.CI(\timer_count_reg[4]_i_1_n_0 ),
        .CO(\NLW_timer_count_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_count_reg[8]_i_1_n_4 ,\timer_count_reg[8]_i_1_n_5 ,\timer_count_reg[8]_i_1_n_6 ,\timer_count_reg[8]_i_1_n_7 }),
        .S(timer_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_count_reg[8]_i_1_n_6 ),
        .Q(timer_count_reg[9]),
        .R(sel));
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
