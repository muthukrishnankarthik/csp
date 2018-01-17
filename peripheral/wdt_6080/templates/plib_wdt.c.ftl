/*******************************************************************************
  WDT Peripheral Library

  Company:
    Microchip Technology Inc.

  File Name:
    plib_wdt.c

  Summary:
    WDT Source File

  Description:
    None

*******************************************************************************/

/*******************************************************************************
Copyright (c) 2017 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS  WITHOUT  WARRANTY  OF  ANY  KIND,
EITHER EXPRESS  OR  IMPLIED,  INCLUDING  WITHOUT  LIMITATION,  ANY  WARRANTY  OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A  PARTICULAR  PURPOSE.
IN NO EVENT SHALL MICROCHIP OR  ITS  LICENSORS  BE  LIABLE  OR  OBLIGATED  UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,  BREACH  OF  WARRANTY,  OR
OTHER LEGAL  EQUITABLE  THEORY  ANY  DIRECT  OR  INDIRECT  DAMAGES  OR  EXPENSES
INCLUDING BUT NOT LIMITED TO ANY  INCIDENTAL,  SPECIAL,  INDIRECT,  PUNITIVE  OR
CONSEQUENTIAL DAMAGES, LOST  PROFITS  OR  LOST  DATA,  COST  OF  PROCUREMENT  OF
SUBSTITUTE  GOODS,  TECHNOLOGY,  SERVICES,  OR  ANY  CLAIMS  BY  THIRD   PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE  THEREOF),  OR  OTHER  SIMILAR  COSTS.
*******************************************************************************/

#include "plib_wdt${INDEX?string}.h"

void WDT${INDEX?string}_Initialize( void )
{
	_WDT_REGS->WDT_MR.w = WDT_MR_WDD (${wdtWDD}) | WDT_MR_WDV(${wdtWDV}) \
							${wdtdebugHalt?then(' | WDT_MR_WDDBGHLT_Msk','')}${wdtidleHalt?then(' | WDT_MR_WDIDLEHLT_Msk','')}${wdtEnableReset?then(' | WDT_MR_WDRSTEN_Msk','')}${wdtinterruptMode?then(' | WDT_MR_WDFIEN_Msk','')};
							
}

void WDT${INDEX?string}_Clear(void)
{
	_WDT_REGS->WDT_CR.w = (WDT_CR_KEY_PASSWD | WDT_CR_WDRSTT_Msk);
}

<#if wdtinterruptMode == true>
	<#lt>void WDT${INDEX?string}_CallbackRegister( WDT_CALLBACK callback, uintptr_t context )
	<#lt>{
	<#lt>	wdt.callback = callback;
	<#lt>	wdt.context = context;
	<#lt>}
</#if>