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
static const char *ng0 = "C:/Users/rafa/Desktop/MIPSSCycAddCy/ALU32.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_2247078152;
extern char *IEEE_P_0774719531;

unsigned char ieee_p_0774719531_sub_1742983514_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_674691591_2162500114(char *, char *, char *, char *, unsigned char );
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_1196643129_1516540902_p_0(char *t0)
{
    char t5[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    int t17;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    int64 t26;
    unsigned int t27;
    unsigned char t28;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 8351);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (0 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 8012U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t12 = (t0 + 2848U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    t11 = (1U + 32U);
    memcpy(t12, t3, t11);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 8352);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (0 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 8028U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t12 = (t0 + 2968U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    t11 = (1U + 32U);
    memcpy(t12, t3, t11);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_2247078152) + 3688U);
    t3 = *((char **)t1);
    t10 = xsi_mem_cmp(t3, t2, 3U);
    if (t10 == 1)
        goto LAB3;

LAB10:    t1 = ((WORK_P_2247078152) + 3808U);
    t4 = *((char **)t1);
    t14 = xsi_mem_cmp(t4, t2, 3U);
    if (t14 == 1)
        goto LAB4;

LAB11:    t1 = ((WORK_P_2247078152) + 3928U);
    t6 = *((char **)t1);
    t15 = xsi_mem_cmp(t6, t2, 3U);
    if (t15 == 1)
        goto LAB5;

LAB12:    t1 = ((WORK_P_2247078152) + 4048U);
    t8 = *((char **)t1);
    t16 = xsi_mem_cmp(t8, t2, 3U);
    if (t16 == 1)
        goto LAB6;

LAB13:    t1 = ((WORK_P_2247078152) + 4168U);
    t9 = *((char **)t1);
    t17 = xsi_mem_cmp(t9, t2, 3U);
    if (t17 == 1)
        goto LAB7;

LAB14:    t1 = ((WORK_P_2247078152) + 4288U);
    t12 = *((char **)t1);
    t18 = xsi_mem_cmp(t12, t2, 3U);
    if (t18 == 1)
        goto LAB8;

LAB15:
LAB9:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)8, 32U);
    t4 = (t0 + 5264);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, t26);
    t13 = (t0 + 5264);
    xsi_driver_intertial_reject(t13, t26, t26);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 5328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)8;
    xsi_driver_first_trans_delta(t1, 0U, 1, t26);
    t9 = (t0 + 5328);
    xsi_driver_intertial_reject(t9, t26, t26);

LAB2:    t1 = (t0 + 5136);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2848U);
    t13 = *((char **)t1);
    t1 = (t0 + 8076U);
    t19 = (t0 + 2968U);
    t20 = *((char **)t19);
    t19 = (t0 + 8092U);
    t21 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t5, t13, t1, t20, t19);
    t22 = (t0 + 3088U);
    t23 = *((char **)t22);
    t22 = (t23 + 0);
    t24 = (t5 + 12U);
    t11 = *((unsigned int *)t24);
    t25 = (1U * t11);
    memcpy(t22, t21, t25);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 3088U);
    t3 = *((char **)t1);
    t11 = (32 - 31);
    t25 = (t11 * 1U);
    t27 = (0 + t25);
    t1 = (t3 + t27);
    t4 = (t0 + 5264);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, t26);
    t13 = (t0 + 5264);
    xsi_driver_intertial_reject(t13, t26, t26);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 3088U);
    t3 = *((char **)t1);
    t10 = (32 - 32);
    t11 = (t10 * -1);
    t25 = (1U * t11);
    t27 = (0 + t25);
    t1 = (t3 + t27);
    t28 = *((unsigned char *)t1);
    t4 = (t0 + 5328);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = t28;
    xsi_driver_first_trans_delta(t4, 0U, 1, t26);
    t13 = (t0 + 5328);
    xsi_driver_intertial_reject(t13, t26, t26);
    goto LAB2;

LAB4:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t1 = (t0 + 8076U);
    t3 = (t0 + 2968U);
    t4 = *((char **)t3);
    t3 = (t0 + 8092U);
    t6 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t7, t2, t1, t4, t3);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t28 = *((unsigned char *)t9);
    t8 = ieee_p_0774719531_sub_674691591_2162500114(IEEE_P_0774719531, t5, t6, t7, t28);
    t12 = (t0 + 3088U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    t19 = (t5 + 12U);
    t11 = *((unsigned int *)t19);
    t25 = (1U * t11);
    memcpy(t12, t8, t25);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 3088U);
    t3 = *((char **)t1);
    t11 = (32 - 31);
    t25 = (t11 * 1U);
    t27 = (0 + t25);
    t1 = (t3 + t27);
    t4 = (t0 + 5264);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, t26);
    t13 = (t0 + 5264);
    xsi_driver_intertial_reject(t13, t26, t26);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 3088U);
    t3 = *((char **)t1);
    t10 = (32 - 32);
    t11 = (t10 * -1);
    t25 = (1U * t11);
    t27 = (0 + t25);
    t1 = (t3 + t27);
    t28 = *((unsigned char *)t1);
    t4 = (t0 + 5328);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = t28;
    xsi_driver_first_trans_delta(t4, 0U, 1, t26);
    t13 = (t0 + 5328);
    xsi_driver_intertial_reject(t13, t26, t26);
    goto LAB2;

LAB5:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t1 = (t0 + 8076U);
    t3 = (t0 + 2968U);
    t4 = *((char **)t3);
    t3 = (t0 + 8092U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t5, t2, t1, t4, t3);
    t8 = (t0 + 3088U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t12 = (t5 + 12U);
    t11 = *((unsigned int *)t12);
    t25 = (1U * t11);
    memcpy(t8, t6, t25);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 3088U);
    t3 = *((char **)t1);
    t11 = (32 - 31);
    t25 = (t11 * 1U);
    t27 = (0 + t25);
    t1 = (t3 + t27);
    t4 = (t0 + 5264);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, t26);
    t13 = (t0 + 5264);
    xsi_driver_intertial_reject(t13, t26, t26);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 3088U);
    t3 = *((char **)t1);
    t10 = (32 - 32);
    t11 = (t10 * -1);
    t25 = (1U * t11);
    t27 = (0 + t25);
    t1 = (t3 + t27);
    t28 = *((unsigned char *)t1);
    t4 = (t0 + 5328);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = t28;
    xsi_driver_first_trans_delta(t4, 0U, 1, t26);
    t13 = (t0 + 5328);
    xsi_driver_intertial_reject(t13, t26, t26);
    goto LAB2;

LAB6:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 8012U);
    t4 = (t0 + 1512U);
    t6 = *((char **)t4);
    t4 = (t0 + 8028U);
    t8 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t5, t3, t1, t6, t4);
    t9 = (t0 + 5264);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_delta(t9, 0U, 32U, t26);
    t21 = (t0 + 5264);
    xsi_driver_intertial_reject(t21, t26, t26);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 5328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t26);
    t9 = (t0 + 5328);
    xsi_driver_intertial_reject(t9, t26, t26);
    goto LAB2;

LAB7:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 8012U);
    t4 = (t0 + 1512U);
    t6 = *((char **)t4);
    t4 = (t0 + 8028U);
    t8 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t5, t3, t1, t6, t4);
    t9 = (t0 + 5264);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_delta(t9, 0U, 32U, t26);
    t21 = (t0 + 5264);
    xsi_driver_intertial_reject(t21, t26, t26);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 5328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t26);
    t9 = (t0 + 5328);
    xsi_driver_intertial_reject(t9, t26, t26);
    goto LAB2;

LAB8:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 8012U);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t3 = (t0 + 8028U);
    t28 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t2, t1, t4, t3);
    if (t28 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 8385);
    t4 = (t0 + 5264);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, t26);
    t13 = (t0 + 5264);
    xsi_driver_intertial_reject(t13, t26, t26);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 5328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t26);
    t9 = (t0 + 5328);
    xsi_driver_intertial_reject(t9, t26, t26);

LAB18:    goto LAB2;

LAB16:;
LAB17:    xsi_set_current_line(71, ng0);
    t6 = (t0 + 2608U);
    t8 = *((char **)t6);
    t26 = *((int64 *)t8);
    t6 = (t0 + 8353);
    t12 = (t0 + 5264);
    t13 = (t12 + 56U);
    t19 = *((char **)t13);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t6, 32U);
    xsi_driver_first_trans_delta(t12, 0U, 32U, t26);
    t22 = (t0 + 5264);
    xsi_driver_intertial_reject(t22, t26, t26);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t26 = *((int64 *)t2);
    t1 = (t0 + 5328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, t26);
    t9 = (t0 + 5328);
    xsi_driver_intertial_reject(t9, t26, t26);
    goto LAB18;

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

LAB0:    xsi_set_current_line(84, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5392);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5152);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1196643129_1516540902_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5456);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5168);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1196643129_1516540902_p_3(char *t0)
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

LAB0:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 8060U);
    t3 = (t0 + 8417);
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
LAB5:    t18 = (t0 + 2728U);
    t19 = *((char **)t18);
    t20 = *((int64 *)t19);
    t18 = (t0 + 5520);
    t21 = (t18 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_first_trans_delta(t18, 0U, 1, t20);
    t25 = (t0 + 5520);
    xsi_driver_intertial_reject(t25, t20, t20);

LAB2:    t26 = (t0 + 5184);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 2728U);
    t11 = *((char **)t7);
    t12 = *((int64 *)t11);
    t7 = (t0 + 5520);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_delta(t7, 0U, 1, t12);
    t17 = (t0 + 5520);
    xsi_driver_intertial_reject(t17, t12, t12);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_1196643129_1516540902_init()
{
	static char *pe[] = {(void *)work_a_1196643129_1516540902_p_0,(void *)work_a_1196643129_1516540902_p_1,(void *)work_a_1196643129_1516540902_p_2,(void *)work_a_1196643129_1516540902_p_3};
	xsi_register_didat("work_a_1196643129_1516540902", "isim/MIPSTestBench_isim_beh.exe.sim/work/a_1196643129_1516540902.didat");
	xsi_register_executes(pe);
}
