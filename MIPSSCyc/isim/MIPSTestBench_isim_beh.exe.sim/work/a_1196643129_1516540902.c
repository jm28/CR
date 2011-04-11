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
static const char *ng0 = "C:/Users/rafa/Downloads/MIPSSCyc/ALU32.vhd";
extern char *WORK_P_2247078152;
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_0774719531_sub_1742983514_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_1196643129_1516540902_p_0(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    char *t11;
    int t12;
    char *t13;
    int64 t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_2247078152) + 1964U);
    t3 = *((char **)t1);
    t4 = xsi_mem_cmp(t3, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB9:    t1 = ((WORK_P_2247078152) + 2032U);
    t5 = *((char **)t1);
    t6 = xsi_mem_cmp(t5, t2, 3U);
    if (t6 == 1)
        goto LAB4;

LAB10:    t1 = ((WORK_P_2247078152) + 2100U);
    t7 = *((char **)t1);
    t8 = xsi_mem_cmp(t7, t2, 3U);
    if (t8 == 1)
        goto LAB5;

LAB11:    t1 = ((WORK_P_2247078152) + 2168U);
    t9 = *((char **)t1);
    t10 = xsi_mem_cmp(t9, t2, 3U);
    if (t10 == 1)
        goto LAB6;

LAB12:    t1 = ((WORK_P_2247078152) + 2236U);
    t11 = *((char **)t1);
    t12 = xsi_mem_cmp(t11, t2, 3U);
    if (t12 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1292U);
    t2 = *((char **)t1);
    t14 = *((int64 *)t2);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)8, 32U);
    t5 = (t0 + 2392);
    t7 = (t5 + 32U);
    t9 = *((char **)t7);
    t11 = (t9 + 40U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_delta(t5, 0U, 32U, t14);
    t16 = (t0 + 2392);
    xsi_driver_intertial_reject(t16, t14, t14);

LAB2:    t1 = (t0 + 2332);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1224U);
    t13 = *((char **)t1);
    t14 = *((int64 *)t13);
    t1 = (t0 + 684U);
    t16 = *((char **)t1);
    t1 = (t0 + 4008U);
    t17 = (t0 + 776U);
    t18 = *((char **)t17);
    t17 = (t0 + 4024U);
    t19 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t15, t16, t1, t18, t17);
    t20 = (t0 + 2392);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t19, 32U);
    xsi_driver_first_trans_delta(t20, 0U, 32U, t14);
    t25 = (t0 + 2392);
    xsi_driver_intertial_reject(t25, t14, t14);
    goto LAB2;

LAB4:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1224U);
    t2 = *((char **)t1);
    t14 = *((int64 *)t2);
    t1 = (t0 + 684U);
    t3 = *((char **)t1);
    t1 = (t0 + 4008U);
    t5 = (t0 + 776U);
    t7 = *((char **)t5);
    t5 = (t0 + 4024U);
    t9 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t15, t3, t1, t7, t5);
    t11 = (t0 + 2392);
    t13 = (t11 + 32U);
    t16 = *((char **)t13);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 32U);
    xsi_driver_first_trans_delta(t11, 0U, 32U, t14);
    t19 = (t0 + 2392);
    xsi_driver_intertial_reject(t19, t14, t14);
    goto LAB2;

LAB5:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1292U);
    t2 = *((char **)t1);
    t14 = *((int64 *)t2);
    t1 = (t0 + 684U);
    t3 = *((char **)t1);
    t1 = (t0 + 4008U);
    t5 = (t0 + 776U);
    t7 = *((char **)t5);
    t5 = (t0 + 4024U);
    t9 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t15, t3, t1, t7, t5);
    t11 = (t0 + 2392);
    t13 = (t11 + 32U);
    t16 = *((char **)t13);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 32U);
    xsi_driver_first_trans_delta(t11, 0U, 32U, t14);
    t19 = (t0 + 2392);
    xsi_driver_intertial_reject(t19, t14, t14);
    goto LAB2;

LAB6:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1292U);
    t2 = *((char **)t1);
    t14 = *((int64 *)t2);
    t1 = (t0 + 684U);
    t3 = *((char **)t1);
    t1 = (t0 + 4008U);
    t5 = (t0 + 776U);
    t7 = *((char **)t5);
    t5 = (t0 + 4024U);
    t9 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t15, t3, t1, t7, t5);
    t11 = (t0 + 2392);
    t13 = (t11 + 32U);
    t16 = *((char **)t13);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 32U);
    xsi_driver_first_trans_delta(t11, 0U, 32U, t14);
    t19 = (t0 + 2392);
    xsi_driver_intertial_reject(t19, t14, t14);
    goto LAB2;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 4008U);
    t3 = (t0 + 776U);
    t5 = *((char **)t3);
    t3 = (t0 + 4024U);
    t26 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t26 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1224U);
    t2 = *((char **)t1);
    t14 = *((int64 *)t2);
    t1 = (t0 + 4232);
    t5 = (t0 + 2392);
    t7 = (t5 + 32U);
    t9 = *((char **)t7);
    t11 = (t9 + 40U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_delta(t5, 0U, 32U, t14);
    t16 = (t0 + 2392);
    xsi_driver_intertial_reject(t16, t14, t14);

LAB16:    goto LAB2;

LAB14:;
LAB15:    xsi_set_current_line(51, ng0);
    t7 = (t0 + 1224U);
    t9 = *((char **)t7);
    t14 = *((int64 *)t9);
    t7 = (t0 + 4200);
    t13 = (t0 + 2392);
    t16 = (t13 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 32U);
    xsi_driver_first_trans_delta(t13, 0U, 32U, t14);
    t20 = (t0 + 2392);
    xsi_driver_intertial_reject(t20, t14, t14);
    goto LAB16;

}

static void work_a_1196643129_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2428);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2340);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1196643129_1516540902_p_2(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    int64 t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int64 t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 4056U);
    t3 = (t0 + 4264);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 31;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (31 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t18 = (t0 + 1292U);
    t19 = *((char **)t18);
    t20 = *((int64 *)t19);
    t18 = (t0 + 2464);
    t21 = (t18 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_first_trans_delta(t18, 0U, 1, t20);
    t25 = (t0 + 2464);
    xsi_driver_intertial_reject(t25, t20, t20);

LAB2:    t26 = (t0 + 2348);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1292U);
    t11 = *((char **)t7);
    t12 = *((int64 *)t11);
    t7 = (t0 + 2464);
    t13 = (t7 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_delta(t7, 0U, 1, t12);
    t17 = (t0 + 2464);
    xsi_driver_intertial_reject(t17, t12, t12);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_1196643129_1516540902_init()
{
	static char *pe[] = {(void *)work_a_1196643129_1516540902_p_0,(void *)work_a_1196643129_1516540902_p_1,(void *)work_a_1196643129_1516540902_p_2};
	xsi_register_didat("work_a_1196643129_1516540902", "isim/MIPSTestBench_isim_beh.exe.sim/work/a_1196643129_1516540902.didat");
	xsi_register_executes(pe);
}
