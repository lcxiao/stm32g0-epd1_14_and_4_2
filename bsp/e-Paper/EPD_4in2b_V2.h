#ifndef __EPD_4IN2B_V2_H_
#define __EPD_4IN2B_V2_H_

#include "DEV_Config.h"

// Display resolution
#define EPD_4IN2B_V2_WIDTH       400
#define EPD_4IN2B_V2_HEIGHT      300

void EPD_4IN2B_V2_Init(void);
void EPD_4IN2B_V2_Clear(void);
void EPD_4IN2B_V2_Display(const UBYTE *blackimage, const UBYTE *ryimage);
void EPD_4IN2B_V2_Sleep(void);

#endif
