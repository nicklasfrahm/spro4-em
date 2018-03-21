// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar  6 08:42:08 2018
// Host        : laptop-nicklas running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Nicklas
//               Frahm/Desktop/GitLab/Uni/spro4-em/vivado/risc-components/risc-components.sim/tests/impl/timing/xsim/counter_8_test_time_impl.v}
// Design      : counter_8
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "ef1ba8b4" *) 
(* NotValidForBitStream *)
module counter_8
   (clk,
    reset,
    direction,
    q_out);
  input clk;
  input reset;
  input direction;
  output [7:0]q_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire direction;
  wire direction_IBUF;
  wire [7:0]q_out;
  wire [7:0]q_out_OBUF;
  wire reset;
  wire reset_IBUF;
  wire \tmp[0]_i_1_n_0 ;
  wire \tmp[4]_i_2_n_0 ;
  wire \tmp[4]_i_3_n_0 ;
  wire \tmp[4]_i_4_n_0 ;
  wire \tmp[4]_i_5_n_0 ;
  wire \tmp[4]_i_6_n_0 ;
  wire \tmp[7]_i_2_n_0 ;
  wire \tmp[7]_i_3_n_0 ;
  wire \tmp[7]_i_4_n_0 ;
  wire \tmp_reg[4]_i_1_n_0 ;
  wire \tmp_reg[4]_i_1_n_4 ;
  wire \tmp_reg[4]_i_1_n_5 ;
  wire \tmp_reg[4]_i_1_n_6 ;
  wire \tmp_reg[4]_i_1_n_7 ;
  wire \tmp_reg[7]_i_1_n_5 ;
  wire \tmp_reg[7]_i_1_n_6 ;
  wire \tmp_reg[7]_i_1_n_7 ;
  wire [2:0]\NLW_tmp_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp_reg[7]_i_1_O_UNCONNECTED ;

initial begin
 $sdf_annotate("counter_8_test_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF direction_IBUF_inst
       (.I(direction),
        .O(direction_IBUF));
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
        .O(\tmp[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp[4]_i_2 
       (.I0(q_out_OBUF[1]),
        .O(\tmp[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp[4]_i_3 
       (.I0(q_out_OBUF[3]),
        .I1(q_out_OBUF[4]),
        .O(\tmp[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp[4]_i_4 
       (.I0(q_out_OBUF[2]),
        .I1(q_out_OBUF[3]),
        .O(\tmp[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp[4]_i_5 
       (.I0(q_out_OBUF[1]),
        .I1(q_out_OBUF[2]),
        .O(\tmp[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp[4]_i_6 
       (.I0(q_out_OBUF[1]),
        .I1(direction_IBUF),
        .O(\tmp[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp[7]_i_2 
       (.I0(q_out_OBUF[6]),
        .I1(q_out_OBUF[7]),
        .O(\tmp[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp[7]_i_3 
       (.I0(q_out_OBUF[5]),
        .I1(q_out_OBUF[6]),
        .O(\tmp[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp[7]_i_4 
       (.I0(q_out_OBUF[4]),
        .I1(q_out_OBUF[5]),
        .O(\tmp[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp[0]_i_1_n_0 ),
        .Q(q_out_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_reg[4]_i_1_n_7 ),
        .Q(q_out_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_reg[4]_i_1_n_6 ),
        .Q(q_out_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_reg[4]_i_1_n_5 ),
        .Q(q_out_OBUF[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_reg[4]_i_1_n_4 ),
        .Q(q_out_OBUF[4]),
        .R(reset_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmp_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\tmp_reg[4]_i_1_n_0 ,\NLW_tmp_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(q_out_OBUF[0]),
        .DI({q_out_OBUF[3:1],\tmp[4]_i_2_n_0 }),
        .O({\tmp_reg[4]_i_1_n_4 ,\tmp_reg[4]_i_1_n_5 ,\tmp_reg[4]_i_1_n_6 ,\tmp_reg[4]_i_1_n_7 }),
        .S({\tmp[4]_i_3_n_0 ,\tmp[4]_i_4_n_0 ,\tmp[4]_i_5_n_0 ,\tmp[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_reg[7]_i_1_n_7 ),
        .Q(q_out_OBUF[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_reg[7]_i_1_n_6 ),
        .Q(q_out_OBUF[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_reg[7]_i_1_n_5 ),
        .Q(q_out_OBUF[7]),
        .R(reset_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmp_reg[7]_i_1 
       (.CI(\tmp_reg[4]_i_1_n_0 ),
        .CO(\NLW_tmp_reg[7]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,q_out_OBUF[5:4]}),
        .O({\NLW_tmp_reg[7]_i_1_O_UNCONNECTED [3],\tmp_reg[7]_i_1_n_5 ,\tmp_reg[7]_i_1_n_6 ,\tmp_reg[7]_i_1_n_7 }),
        .S({1'b0,\tmp[7]_i_2_n_0 ,\tmp[7]_i_3_n_0 ,\tmp[7]_i_4_n_0 }));
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
