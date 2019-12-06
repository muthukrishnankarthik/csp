/*******************************************************************************
  TWIHS Peripheral Library Interface Header File

  Company
    Microchip Technology Inc.

  File Name
    plib_${TWIHS_INSTANCE_NAME?lower_case}.h

  Summary
    TWIHS peripheral library interface.

  Description
    This file defines the interface to the TWIHS peripheral library.  This
    library provides access to and control of the associated peripheral
    instance.

  Remarks:

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

#ifndef PLIB_${TWIHS_INSTANCE_NAME}_H
#define PLIB_${TWIHS_INSTANCE_NAME}_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "plib_twihs_master.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Interface Routines
// *****************************************************************************
// *****************************************************************************

void ${TWIHS_INSTANCE_NAME}_Initialize( void );

void ${TWIHS_INSTANCE_NAME}_CallbackRegister( TWIHS_CALLBACK callback, uintptr_t contextHandle );

bool ${TWIHS_INSTANCE_NAME}_IsBusy( void );

bool ${TWIHS_INSTANCE_NAME}_Read( uint16_t address, uint8_t *pdata, size_t length );

bool ${TWIHS_INSTANCE_NAME}_Write( uint16_t address, uint8_t *pdata, size_t length );

bool ${TWIHS_INSTANCE_NAME}_WriteRead( uint16_t address, uint8_t *wdata, size_t wlength, uint8_t *rdata, size_t rlength );

TWIHS_ERROR ${TWIHS_INSTANCE_NAME}_ErrorGet( void );

bool ${TWIHS_INSTANCE_NAME}_TransferSetup( TWIHS_TRANSFER_SETUP* setup, uint32_t srcClkFreq );

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END

#endif //PLIB_${TWIHS_INSTANCE_NAME}_H
