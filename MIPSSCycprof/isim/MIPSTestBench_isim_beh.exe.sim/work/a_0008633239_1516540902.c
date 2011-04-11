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
static const char *ng0 = "C:/Users/rafa/Desktop/MIPSSCycAddCy/AndGate2.vhd";
extern char *WORK_P_2247078152;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );


static void work_a_0008633239_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(26, ng0);

LAB3:    t1 = ((WORK_P_2247078152) + 1168U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t5, t7);
    t1 = (t0 + 2912);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t8;
    xsi_driver_first_trans_delta(t1, 0U, 1, t3);
    t13 = (t0 + 2912);
    xsi_driver_intertial_reject(t13, t3, t3);

LAB2:    t14 = (t0 + 2832);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0008633239_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0008633239_1516540902_p_0};
	xsi_register_didat("work_a_0008633239_1516540902", "isim/MIPSTestBench_isim_beh.exe.sim/work/a_0008633239_1516540902.didat");
	xsi_register_executes(pe);
}
