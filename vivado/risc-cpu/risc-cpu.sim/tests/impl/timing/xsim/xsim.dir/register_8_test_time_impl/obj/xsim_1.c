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
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_16(char*, char *);
extern void execute_468(char*, char *);
extern void execute_469(char*, char *);
extern void execute_470(char*, char *);
extern void execute_471(char*, char *);
extern void execute_472(char*, char *);
extern void execute_473(char*, char *);
extern void execute_474(char*, char *);
extern void execute_475(char*, char *);
extern void execute_476(char*, char *);
extern void execute_477(char*, char *);
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
extern void execute_511(char*, char *);
extern void execute_512(char*, char *);
extern void execute_513(char*, char *);
extern void execute_514(char*, char *);
extern void execute_515(char*, char *);
extern void execute_516(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void vlog_timingcheck_execute_0(char*, char*, char*);
extern void execute_104(char*, char *);
extern void execute_19(char*, char *);
extern void execute_105(char*, char *);
extern void execute_39(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_141(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_144(char*, char *);
extern void execute_145(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_147(char*, char *);
extern void execute_148(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_1(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_2(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_175(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_176(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_177(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_178(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_179(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_180(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_181(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_182(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_183(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_184(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_185(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_186(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_187(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_188(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_189(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_190(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_191(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_192(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_193(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_194(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_195(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_196(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_197(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_198(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_27(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_28(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_29(char*, char *);
extern void timing_checker_condition_m_a6a9cae0_67151b0a_30(char*, char *);
extern void execute_171(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
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
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
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
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_239(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_267(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_295(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[188] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_96, (funcp)execute_97, (funcp)execute_16, (funcp)execute_468, (funcp)execute_469, (funcp)execute_470, (funcp)execute_471, (funcp)execute_472, (funcp)execute_473, (funcp)execute_474, (funcp)execute_475, (funcp)execute_476, (funcp)execute_477, (funcp)execute_478, (funcp)execute_479, (funcp)execute_480, (funcp)execute_481, (funcp)execute_482, (funcp)execute_483, (funcp)execute_484, (funcp)execute_485, (funcp)execute_486, (funcp)execute_487, (funcp)execute_488, (funcp)execute_489, (funcp)execute_490, (funcp)execute_491, (funcp)execute_492, (funcp)execute_493, (funcp)execute_494, (funcp)execute_495, (funcp)execute_496, (funcp)execute_497, (funcp)execute_498, (funcp)execute_499, (funcp)execute_500, (funcp)execute_501, (funcp)execute_502, (funcp)execute_503, (funcp)execute_504, (funcp)execute_505, (funcp)execute_506, (funcp)execute_507, (funcp)execute_508, (funcp)execute_509, (funcp)execute_510, (funcp)execute_511, (funcp)execute_512, (funcp)execute_513, (funcp)execute_514, (funcp)execute_515, (funcp)execute_516, (funcp)execute_100, (funcp)execute_101, (funcp)vlog_timingcheck_execute_0, (funcp)execute_104, (funcp)execute_19, (funcp)execute_105, (funcp)execute_39, (funcp)execute_115, (funcp)execute_116, (funcp)execute_117, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)execute_139, (funcp)execute_140, (funcp)execute_141, (funcp)execute_142, (funcp)execute_143, (funcp)execute_144, (funcp)execute_145, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_147, (funcp)execute_148, (funcp)execute_149, (funcp)execute_150, (funcp)execute_151, (funcp)execute_152, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_1, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_2, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_175, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_176, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_177, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_178, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_179, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_180, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_181, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_182, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_183, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_184, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_185, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_186, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_187, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_188, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_189, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_190, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_191, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_192, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_193, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_194, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_195, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_196, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_197, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_198, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_27, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_28, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_29, (funcp)timing_checker_condition_m_a6a9cae0_67151b0a_30, (funcp)execute_171, (funcp)execute_176, (funcp)execute_177, (funcp)execute_178, (funcp)execute_179, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_88, (funcp)transaction_99, (funcp)transaction_127, (funcp)transaction_155, (funcp)transaction_183, (funcp)transaction_211, (funcp)transaction_239, (funcp)transaction_267, (funcp)transaction_295};
const int NumRelocateId= 188;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/register_8_test_time_impl/xsim.reloc",  (void **)funcTab, 188);
	iki_vhdl_file_variable_register(dp + 70632);
	iki_vhdl_file_variable_register(dp + 70688);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/register_8_test_time_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/register_8_test_time_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 75664, dp + 76624, 0, 7, 0, 7, 8, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 75704, dp + 76848, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 75760, dp + 76512, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 75816, dp + 76344, 0, 0, 0, 0, 1, 1);
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
    iki_set_sv_type_file_path_name("xsim.dir/register_8_test_time_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/register_8_test_time_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/register_8_test_time_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
