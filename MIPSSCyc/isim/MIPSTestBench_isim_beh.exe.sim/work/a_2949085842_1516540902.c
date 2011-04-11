/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xcb73ee62 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/rafa/Downloads/MIPSSCyc/ROM_AR.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2949085842_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t1 = (t0 + 1128U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t1 = (t0 + 1060U);
    t4 = *((char **)t1);
    t1 = (t0 + 592U);
    t5 = *((char **)t1);
    t1 = (t0 + 3516U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t6);
    t9 = (32U * t8);
    t10 = (0 + t9);
    t11 = (t4 + t10);
    t12 = (t0 + 1924);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t11, 32U);
    xsi_driver_first_trans_delta(t12, 0U, 32U, t3);
    t17 = (t0 + 1924);
    xsi_driver_intertial_reject(t17, t3, t3);

LAB2:    t18 = (t0 + 1880);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_2949085842_1516540902_init()
{
	static char *pe[] = {(void *)work_a_2949085842_1516540902_p_0};
	xsi_register_didat("work_a_2949085842_1516540902", "isim/MIPSTestBench_isim_beh.exe.sim/work/a_2949085842_1516540902.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
