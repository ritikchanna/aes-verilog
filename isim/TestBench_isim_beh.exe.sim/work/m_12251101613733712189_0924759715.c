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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/superuser/Workspace/Verilog/AES/AES/TestBench.v";
static unsigned int ng1[] = {1U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};
static unsigned int ng2[] = {8U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};



static void Initial_11_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(12, ng0);

LAB2:    xsi_set_current_line(13, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1608);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 128);
    xsi_set_current_line(14, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 128);

LAB1:    return;
}


extern void work_m_12251101613733712189_0924759715_init()
{
	static char *pe[] = {(void *)Initial_11_0};
	xsi_register_didat("work_m_12251101613733712189_0924759715", "isim/TestBench_isim_beh.exe.sim/work/m_12251101613733712189_0924759715.didat");
	xsi_register_executes(pe);
}
