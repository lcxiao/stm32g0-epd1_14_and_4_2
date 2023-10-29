#ifndef _DEV_CONFIG_H_
#define _DEV_CONFIG_H_

#include "main.h"
#include <stdint.h>
#include <stdio.h>

extern SPI_HandleTypeDef hspi1;

/**
 * data
 **/
#define UBYTE   uint8_t
#define UWORD   uint16_t
#define UDOUBLE uint32_t

/**
 * e-Paper GPIO
 **/
#define EPD_RST_PIN     GPIOA, GPIO_PIN_2
#define EPD_DC_PIN      GPIOA, GPIO_PIN_3
#define EPD_CS_PIN      GPIOA, GPIO_PIN_4
#define EPD_BUSY_PIN    GPIOA, GPIO_PIN_1

/**
 * GPIO read and write
 **/
#define DEV_Digital_Write(_pin, _value) HAL_GPIO_WritePin(_pin, _value == 0? GPIO_PIN_RESET:GPIO_PIN_SET)
#define DEV_Digital_Read(_pin) HAL_GPIO_ReadPin(_pin)

/**
 * delay x ms
 **/
#define DEV_Delay_ms(__xms) HAL_Delay(__xms);

void DEV_SPI_WriteByte (UBYTE value);

int DEV_Module_Init (void);
void DEV_Module_Exit (void);
#endif
