/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_16(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_478(char*, char *);
extern void execute_479(char*, char *);
extern void execute_480(char*, char *);
extern void execute_481(char*, char *);
extern void execute_482(char*, char *);
extern void execute_483(char*, char *);
extern void execute_484(char*, char *);
extern void execute_485(char*, char *);
extern void execute_486(char*, char *);
extern void execute_487(char*, char *);
extern void execute_488(char*, char *);
extern void execute_489(char*, char *);
extern void execute_490(char*, char *);
extern void execute_491(char*, char *);
extern void execute_492(char*, char *);
extern void execute_493(char*, char *);
extern void execute_494(char*, char *);
extern void execute_495(char*, char *);
extern void execute_496(char*, char *);
extern void execute_497(char*, char *);
extern void execute_498(char*, char *);
extern void execute_499(char*, char *);
extern void execute_500(char*, char *);
extern void execute_501(char*, char *);
extern void execute_502(char*, char *);
extern void execute_503(char*, char *);
extern void execute_504(char*, char *);
extern void execute_505(char*, char *);
extern void execute_506(char*, char *);
extern void execute_507(char*, char *);
extern void execute_508(char*, char *);
extern void execute_509(char*, char *);
extern void execute_510(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void vlog_timingcheck_execute_0(char*, char*, char*);
extern void execute_100(char*, char *);
extern void execute_19(char*, char *);
extern void execute_101(char*, char *);
extern void execute_37(char*, char *);
extern void execute_110(char*, char *);
extern void execute_111(char*, char *);
extern void execute_112(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_136(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_144(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_147(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_1(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_2(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_175(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_176(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_177(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_178(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_179(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_180(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_181(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_182(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_183(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_184(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_185(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_186(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_187(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_188(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_189(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_190(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_191(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_192(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_193(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_194(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_195(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_196(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_197(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_198(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_27(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_28(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_29(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_788b03ef_30(char*, char *);
extern void execute_166(char*, char *);
extern void execute_171(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_174(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_114(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_226(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_254(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_282(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_310(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[172] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_92, (funcp)execute_93, (funcp)execute_16, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_478, (funcp)execute_479, (funcp)execute_480, (funcp)execute_481, (funcp)execute_482, (funcp)execute_483, (funcp)execute_484, (funcp)execute_485, (funcp)execute_486, (funcp)execute_487, (funcp)execute_488, (funcp)execute_489, (funcp)execute_490, (funcp)execute_491, (funcp)execute_492, (funcp)execute_493, (funcp)execute_494, (funcp)execute_495, (funcp)execute_496, (funcp)execute_497, (funcp)execute_498, (funcp)execute_499, (funcp)execute_500, (funcp)execute_501, (funcp)execute_502, (funcp)execute_503, (funcp)execute_504, (funcp)execute_505, (funcp)execute_506, (funcp)execute_507, (funcp)execute_508, (funcp)execute_509, (funcp)execute_510, (funcp)execute_96, (funcp)execute_97, (funcp)vlog_timingcheck_execute_0, (funcp)execute_100, (funcp)execute_19, (funcp)execute_101, (funcp)execute_37, (funcp)execute_110, (funcp)execute_111, (funcp)execute_112, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_134, (funcp)execute_135, (funcp)execute_136, (funcp)execute_137, (funcp)execute_138, (funcp)execute_139, (funcp)execute_140, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_142, (funcp)execute_143, (funcp)execute_144, (funcp)execute_145, (funcp)execute_146, (funcp)execute_147, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_1, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_2, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_175, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_176, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_177, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_178, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_179, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_180, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_181, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_182, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_183, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_184, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_185, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_186, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_187, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_188, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_189, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_190, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_191, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_192, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_193, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_194, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_195, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_196, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_197, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_198, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_27, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_28, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_29, (funcp)timing_checker_condition_m_a6a9cae0_788b03ef_30, (funcp)execute_166, (funcp)execute_171, (funcp)execute_172, (funcp)execute_173, (funcp)execute_174, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_114, (funcp)transaction_142, (funcp)transaction_170, (funcp)transaction_198, (funcp)transaction_226, (funcp)transaction_254, (funcp)transaction_282, (funcp)transaction_310};
const int NumRelocateId= 172;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/dip_sw_8_test_time_impl/xsim.reloc",  (void **)funcTab, 172);
	iki_vhdl_file_variable_register(dp + 71896);
	iki_vhdl_file_variable_register(dp + 71952);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/dip_sw_8_test_time_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/dip_sw_8_test_time_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 76928, dp + 78072, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 76984, dp + 78240, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 77040, dp + 78352, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 77096, dp + 78464, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 77152, dp + 78576, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 77208, dp + 78688, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 77264, dp + 78800, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 77320, dp + 78912, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 77376, dp + 79024, 0, 0, 0, 0, 1, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/dip_sw_8_test_time_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/dip_sw_8_test_time_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/dip_sw_8_test_time_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
