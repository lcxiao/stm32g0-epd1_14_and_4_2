#include "EPD_4in2b_V2.h"

/******************************************************************************
 function :	Software reset
 parameter:
 ******************************************************************************/
static void EPD_4IN2B_V2_Reset (void)
{
  DEV_Digital_Write(EPD_RST_PIN, 1);
  DEV_Delay_ms(200);
  DEV_Digital_Write(EPD_RST_PIN, 0);
  DEV_Delay_ms(2);
  DEV_Digital_Write(EPD_RST_PIN, 1);
  DEV_Delay_ms(200);
}

/******************************************************************************
 function :	send command
 parameter:
 Reg : Command register
 ******************************************************************************/
static void EPD_4IN2B_V2_SendCommand (UBYTE Reg)
{
  DEV_Digital_Write(EPD_DC_PIN, 0);
  DEV_Digital_Write(EPD_CS_PIN, 0);
  DEV_SPI_WriteByte (Reg);
  DEV_Digital_Write(EPD_CS_PIN, 1);
}

/******************************************************************************
 function :	send data
 parameter:
 Data : Write data
 ******************************************************************************/
static void EPD_4IN2B_V2_SendData (UBYTE Data)
{
  DEV_Digital_Write(EPD_DC_PIN, 1);
  DEV_Digital_Write(EPD_CS_PIN, 0);
  DEV_SPI_WriteByte (Data);
  DEV_Digital_Write(EPD_CS_PIN, 1);
}

/******************************************************************************
 function :	Wait until the busy_pin goes LOW
 parameter:
 ******************************************************************************/
void EPD_4IN2B_V2_ReadBusy (void)
{
  unsigned char busy;
  do
    {
      EPD_4IN2B_V2_SendCommand (0x71);
      busy = DEV_Digital_Read(EPD_BUSY_PIN);
      busy = !(busy & 0x01);
    } while (busy);
  DEV_Delay_ms(200);
}

/******************************************************************************
 function :	Turn On Display
 parameter:
 ******************************************************************************/
static void EPD_4IN2B_V2_TurnOnDisplay (void)
{
  EPD_4IN2B_V2_SendCommand (0x12);  // DISPLAY_REFRESH
  DEV_Delay_ms(100);
  EPD_4IN2B_V2_ReadBusy ();
}

/******************************************************************************
 function :	Initialize the e-Paper register
 parameter:
 ******************************************************************************/
void EPD_4IN2B_V2_Init (void)
{
  EPD_4IN2B_V2_Reset ();

  EPD_4IN2B_V2_SendCommand (0x04);
  EPD_4IN2B_V2_ReadBusy ();

  EPD_4IN2B_V2_SendCommand (0x00);
  EPD_4IN2B_V2_SendData (0x0f);

  EPD_4IN2B_V2_SendCommand (0x50);
  EPD_4IN2B_V2_SendData (0x77);
}

/******************************************************************************
 function :	Clear screen
 parameter:
 ******************************************************************************/
void EPD_4IN2B_V2_Clear (void)
{
  UWORD Width, Height;
  Width = (EPD_4IN2B_V2_WIDTH % 8 == 0) ? (EPD_4IN2B_V2_WIDTH / 8) : (EPD_4IN2B_V2_WIDTH / 8 + 1);
  Height = EPD_4IN2B_V2_HEIGHT;

  EPD_4IN2B_V2_SendCommand (0x10);
  for (UWORD j = 0; j < Height; j++)
    {
      for (UWORD i = 0; i < Width; i++)
        {
          EPD_4IN2B_V2_SendData (0xFF);
        }
    }

  EPD_4IN2B_V2_SendCommand (0x13);
  for (UWORD j = 0; j < Height; j++)
    {
      for (UWORD i = 0; i < Width; i++)
        {
          EPD_4IN2B_V2_SendData (0xFF);
        }
    }

  EPD_4IN2B_V2_TurnOnDisplay ();
}

/******************************************************************************
 function :	Sends the image buffer in RAM to e-Paper and displays
 parameter:
 ******************************************************************************/
void EPD_4IN2B_V2_Display (const UBYTE *blackimage, const UBYTE *ryimage)
{
  UWORD Width, Height;
  Width = (EPD_4IN2B_V2_WIDTH % 8 == 0) ? (EPD_4IN2B_V2_WIDTH / 8) : (EPD_4IN2B_V2_WIDTH / 8 + 1);
  Height = EPD_4IN2B_V2_HEIGHT;

  EPD_4IN2B_V2_SendCommand (0x10);
  for (UWORD j = 0; j < Height; j++)
    {
      for (UWORD i = 0; i < Width; i++)
        {
          EPD_4IN2B_V2_SendData (blackimage[i + j * Width]);
        }
    }

  EPD_4IN2B_V2_SendCommand (0x13);
  for (UWORD j = 0; j < Height; j++)
    {
      for (UWORD i = 0; i < Width; i++)
        {
          EPD_4IN2B_V2_SendData (ryimage[i + j * Width]);
        }
    }

  EPD_4IN2B_V2_TurnOnDisplay ();
}

/******************************************************************************
 function :	Enter sleep mode
 parameter:
 ******************************************************************************/
void EPD_4IN2B_V2_Sleep (void)
{
  EPD_4IN2B_V2_SendCommand (0X50);
  EPD_4IN2B_V2_SendData (0xf7);		//border floating

  EPD_4IN2B_V2_SendCommand (0X02);  	//power off
  EPD_4IN2B_V2_ReadBusy ();  //waiting for the electronic paper IC to release the idle signal
  EPD_4IN2B_V2_SendCommand (0X07);  	//deep sleep
  EPD_4IN2B_V2_SendData (0xA5);
}
