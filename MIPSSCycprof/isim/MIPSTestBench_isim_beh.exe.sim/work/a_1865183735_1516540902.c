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

/* This file is designed for use with ISim build 0x12940baa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/rafa/Desktop/MIPSSCycAddCy/Mux2N.vhd";
extern char *WORK_P_2247078152;



static void work_a_1865183735_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int64 t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int64 t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t13 = ((WORK_P_2247078152) + 1168U);
    t14 = *((char **)t13);
    t15 = *((int64 *)t14);
    t13 = (t0 + 1192U);
    t16 = *((char **)t13);
    t13 = (t0 + 3192);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 5U);
    xsi_driver_first_trans_delta(t13, 0U, 5U, t15);
    t21 = (t0 + 3192);
    xsi_driver_intertial_reject(t21, t15, t15);

LAB2:    t22 = (t0 + 3112);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t1 = ((WORK_P_2247078152) + 1168U);
    t5 = *((char **)t1);
    t6 = *((int64 *)t5);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t1 = (t0 + 3192);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 5U);
    xsi_driver_first_trans_delta(t1, 0U, 5U, t6);
    t12 = (t0 + 3192);
    xsi_driver_intertial_reject(t12, t6, t6);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_1865183735_1516540902_init()
{
	static char *pe[] = {(void *)work_a_1865183735_1516540902_p_0};
	xsi_register_didat("work_a_1865183735_1516540902", "isim/MIPSTestBench_isim_beh.exe.sim/work/a_1865183735_1516540902.didat");
	xsi_register_executes(pe);
}
