#ifndef __EPD_2IN13B_V3_H_
#define __EPD_2IN13B_V3_H_

#include "DEV_Config.h"

// Display resolution
#define EPD_2IN13B_V3_WIDTH       104
#define EPD_2IN13B_V3_HEIGHT      212

void EPD_2IN13B_V3_Init(void);
void EPD_2IN13B_V3_Clear(void);
void EPD_2IN13B_V3_Display(const UBYTE *blackimage, const UBYTE *ryimage);
void EPD_2IN13B_V3_Sleep(void);

#endif
