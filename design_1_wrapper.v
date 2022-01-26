//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Dec 22 18:47:15 2021
//Host        : LAPTOP-FLANJ560 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (HSYNC,
    VGA_B,
    VGA_G,
    VGA_R,
    VSYNC,
    push_buttons_4bits_tri_i,
    reset,
    seven_seg,
    seven_seg_led_an,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output HSYNC;
  output [2:0]VGA_B;
  output [2:0]VGA_G;
  output [2:0]VGA_R;
  output VSYNC;
  input [3:0]push_buttons_4bits_tri_i;
  input reset;
  output [6:0]seven_seg;
  output [3:0]seven_seg_led_an;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire HSYNC;
  wire [2:0]VGA_B;
  wire [2:0]VGA_G;
  wire [2:0]VGA_R;
  wire VSYNC;
  wire [3:0]push_buttons_4bits_tri_i;
  wire reset;
  wire [6:0]seven_seg;
  wire [3:0]seven_seg_led_an;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.HSYNC(HSYNC),
        .VGA_B(VGA_B),
        .VGA_G(VGA_G),
        .VGA_R(VGA_R),
        .VSYNC(VSYNC),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .reset(reset),
        .seven_seg(seven_seg),
        .seven_seg_led_an(seven_seg_led_an),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
