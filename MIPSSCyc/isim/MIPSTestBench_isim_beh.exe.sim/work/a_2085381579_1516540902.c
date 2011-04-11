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
static const char *ng0 = "C:/Users/rafa/Downloads/MIPSSCyc/RegBank32_32.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2085381579_1516540902_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int64 t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2608);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1500U);
    t7 = *((char **)t3);
    t8 = *((int64 *)t7);
    t3 = (t0 + 868U);
    t9 = *((char **)t3);
    t3 = (t0 + 776U);
    t10 = *((char **)t3);
    t3 = (t0 + 4780U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t3);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (32U * t13);
    t15 = (0U + t14);
    t16 = (t0 + 2668);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 32U);
    xsi_driver_first_trans_delta(t16, t15, 32U, t8);
    t21 = (t0 + 776U);
    t22 = *((char **)t21);
    t21 = (t0 + 4780U);
    t23 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t22, t21);
    t24 = (t23 - 0);
    t25 = (t24 * 1);
    t26 = (32U * t25);
    t27 = (0U + t26);
    t28 = (t0 + 2668);
    xsi_driver_intertial_reject(t28, t8, t8);
    goto LAB6;

}

static void work_a_2085381579_1516540902_p_1(char *t0)
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
    char *t20;
    char *t21;
    int64 t22;
    char *t23;
    char *t24;
    int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 4812U);
    t3 = (t0 + 6012);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 4;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (4 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t20 = (t0 + 1568U);
    t21 = *((char **)t20);
    t22 = *((int64 *)t21);
    t20 = (t0 + 1328U);
    t23 = *((char **)t20);
    t20 = (t0 + 960U);
    t24 = *((char **)t20);
    t20 = (t0 + 4812U);
    t25 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t24, t20);
    t26 = (t25 - 0);
    t9 = (t26 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t25);
    t27 = (32U * t9);
    t28 = (0 + t27);
    t29 = (t23 + t28);
    t30 = (t0 + 2704);
    t31 = (t30 + 32U);
    t32 = *((char **)t31);
    t33 = (t32 + 40U);
    t34 = *((char **)t33);
    memcpy(t34, t29, 32U);
    xsi_driver_first_trans_delta(t30, 0U, 32U, t22);
    t35 = (t0 + 2704);
    xsi_driver_intertial_reject(t35, t22, t22);

LAB2:    t36 = (t0 + 2616);
    *((int *)t36) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1568U);
    t11 = *((char **)t7);
    t12 = *((int64 *)t11);
    t7 = xsi_get_transient_memory(32U);
    memset(t7, 0, 32U);
    t13 = t7;
    memset(t13, (unsigned char)2, 32U);
    t14 = (t0 + 2704);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 32U);
    xsi_driver_first_trans_delta(t14, 0U, 32U, t12);
    t19 = (t0 + 2704);
    xsi_driver_intertial_reject(t19, t12, t12);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2085381579_1516540902_p_2(char *t0)
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
    char *t20;
    char *t21;
    int64 t22;
    char *t23;
    char *t24;
    int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 4828U);
    t3 = (t0 + 6017);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 4;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (4 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t20 = (t0 + 1568U);
    t21 = *((char **)t20);
    t22 = *((int64 *)t21);
    t20 = (t0 + 1328U);
    t23 = *((char **)t20);
    t20 = (t0 + 1052U);
    t24 = *((char **)t20);
    t20 = (t0 + 4828U);
    t25 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t24, t20);
    t26 = (t25 - 0);
    t9 = (t26 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t25);
    t27 = (32U * t9);
    t28 = (0 + t27);
    t29 = (t23 + t28);
    t30 = (t0 + 2740);
    t31 = (t30 + 32U);
    t32 = *((char **)t31);
    t33 = (t32 + 40U);
    t34 = *((char **)t33);
    memcpy(t34, t29, 32U);
    xsi_driver_first_trans_delta(t30, 0U, 32U, t22);
    t35 = (t0 + 2740);
    xsi_driver_intertial_reject(t35, t22, t22);

LAB2:    t36 = (t0 + 2624);
    *((int *)t36) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1568U);
    t11 = *((char **)t7);
    t12 = *((int64 *)t11);
    t7 = xsi_get_transient_memory(32U);
    memset(t7, 0, 32U);
    t13 = t7;
    memset(t13, (unsigned char)2, 32U);
    t14 = (t0 + 2740);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 32U);
    xsi_driver_first_trans_delta(t14, 0U, 32U, t12);
    t19 = (t0 + 2740);
    xsi_driver_intertial_reject(t19, t12, t12);
    goto LAB2;

LAB6:    goto LAB2;

}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_2085381579_1516540902_init()
{
	static char *pe[] = {(void *)work_a_2085381579_1516540902_p_0,(void *)work_a_2085381579_1516540902_p_1,(void *)work_a_2085381579_1516540902_p_2};
	xsi_register_didat("work_a_2085381579_1516540902", "isim/MIPSTestBench_isim_beh.exe.sim/work/a_2085381579_1516540902.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
