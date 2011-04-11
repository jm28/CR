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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_2247078152;
char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_0774719531;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_0774719531_init();
    work_p_2247078152_init();
    work_a_3557351956_1516540902_init();
    work_a_0919301120_1516540902_init();
    work_a_2949085842_1516540902_init();
    work_a_3887404847_1516540902_init();
    work_a_0641517468_1516540902_init();
    work_a_2096391741_1516540902_init();
    work_a_1865183735_1516540902_init();
    work_a_2085381579_1516540902_init();
    work_a_1218917173_1516540902_init();
    work_a_1196643129_1516540902_init();
    work_a_0135331787_1516540902_init();
    work_a_0008633239_1516540902_init();
    work_a_3338344821_1516540902_init();
    work_a_2161724912_0556555087_init();


    xsi_register_tops("work_a_2161724912_0556555087");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_2247078152 = xsi_get_engine_memory("work_p_2247078152");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");

    return xsi_run_simulation(argc, argv);

}
