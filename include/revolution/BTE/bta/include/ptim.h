/******************************************************************************
 *
 *  NOTICE OF CHANGES
 *  2024/03/26:
 *      - Modify tPTIM_CB structure to match RVL target
 * 
 *  Compile with REVOLUTION defined to include these changes.
 * 
 ******************************************************************************/



/******************************************************************************
 *
 *  Copyright (C) 2003-2012 Broadcom Corporation
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at:
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 ******************************************************************************/

/******************************************************************************
 *
 *  Protocol timer services.
 *
 ******************************************************************************/
#ifndef PTIM_H
#define PTIM_H

#include "gki.h"

/*****************************************************************************
**  Constants and data types
*****************************************************************************/

typedef struct
{
    TIMER_LIST_Q        timer_queue;        /* GKI timer queue */
    INT32               period;             /* Timer period in milliseconds */
#ifndef REVOLUTION
    UINT32              last_gki_ticks;     /* GKI ticks since last time update called */
#endif
    UINT8               timer_id;           /* GKI timer id */
} tPTIM_CB;

#ifdef __cplusplus
extern "C"
{
#endif

/*****************************************************************************
**  Function Declarations
*****************************************************************************/

/*******************************************************************************
**
** Function         ptim_init
**
** Description      Initialize a protocol timer service control block.
**
** Returns          void
**
*******************************************************************************/
extern void ptim_init(tPTIM_CB *p_cb, UINT16 period, UINT8 timer_id);

/*******************************************************************************
**
** Function         ptim_timer_update
**
** Description      Update the protocol timer list and handle expired timers.
**
** Returns          void
**
*******************************************************************************/
extern void ptim_timer_update(tPTIM_CB *p_cb);

/*******************************************************************************
**
** Function         ptim_start_timer
**
** Description      Start a protocol timer for the specified amount
**                  of time in milliseconds.
**
** Returns          void
**
*******************************************************************************/
extern void ptim_start_timer(tPTIM_CB *p_cb, TIMER_LIST_ENT *p_tle, UINT16 type, INT32 timeout);

/*******************************************************************************
**
** Function         ptim_stop_timer
**
** Description      Stop a protocol timer.
**
** Returns          void
**
*******************************************************************************/
extern void ptim_stop_timer(tPTIM_CB *p_cb, TIMER_LIST_ENT *p_tle);

#ifdef __cplusplus
}
#endif

#endif /* PTIM_H */
