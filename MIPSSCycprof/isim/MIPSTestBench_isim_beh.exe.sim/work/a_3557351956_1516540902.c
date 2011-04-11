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
static const char *ng0 = "C:/Users/rafa/Desktop/MIPSSCycAddCy/RegN.vhd";
extern char *WORK_P_2247078152;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3557351956_1516540902_p_0(char *t0)
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
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3552);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(34, ng0);
    t1 = ((WORK_P_2247078152) + 1408U);
    t5 = *((char **)t1);
    t6 = *((int64 *)t5);
    t1 = (t0 + 5660);
    t8 = (t0 + 3632);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_delta(t8, 0U, 32U, t6);
    t13 = (t0 + 3632);
    xsi_driver_intertial_reject(t13, t6, t6);
    goto LAB3;

LAB5:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t14 = (t4 == (unsigned char)3);
    if (t14 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t15 = *((unsigned char *)t7);
    t16 = (t15 == (unsigned char)3);
    if (t16 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(40, ng0);
    t1 = ((WORK_P_2247078152) + 1408U);
    t2 = *((char **)t1);
    t6 = *((int64 *)t2);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 3632);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 32U);
    xsi_driver_first_trans_delta(t1, 0U, 32U, t6);
    t11 = (t0 + 3632);
    xsi_driver_intertial_reject(t11, t6, t6);

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(38, ng0);
    t2 = ((WORK_P_2247078152) + 1408U);
    t8 = *((char **)t2);
    t6 = *((int64 *)t8);
    t2 = (t0 + 5692);
    t10 = (t0 + 3632);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    memcpy(t17, t2, 32U);
    xsi_driver_first_trans_delta(t10, 0U, 32U, t6);
    t18 = (t0 + 3632);
    xsi_driver_intertial_reject(t18, t6, t6);
    goto LAB11;

}


extern void work_a_3557351956_1516540902_init()
{
	static char *pe[] = {(void *)work_a_3557351956_1516540902_p_0};
	xsi_register_didat("work_a_3557351956_1516540902", "isim/MIPSTestBench_isim_beh.exe.sim/work/a_3557351956_1516540902.didat");
	xsi_register_executes(pe);
}
