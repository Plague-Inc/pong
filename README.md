This is an FPGA project where the application runs on the BRAM of the Basys3 board I used. It uses a softcore processor called the Microblaze

The MicroBlaze is responsible for determining the position of the ball and bat in addition to calculate the core which will be displayed on the seven-segment diaplay. 

It also consists of an IP block that displays(HUD) the ball and bat that is to be used by the player. This is a HLS(High-Level Synthesis) block that generates the positions of the ball and bat for every frame. This block outputs a pixel that contains an RGB and alpha channel(for opacity).. 

The main feed to the video mixer is supplied by a test pattern generator. This enables the background of the game video to be changed on the fly and between solid or color patterns. The final element of the chain is a video timing controller and an AXI Stream to video out block.

In Vitis, the application software configures the video timing generator for the required video output in addition to setting up the video mixer to mix the test pattern generator and the other positional layers

The ball / bat position is calculated by a software loop that runs every 250 ms. On each loop, it determines if the ball has hit one of the three corners of the screen or the bat. If the ball is hit by the bat, the score is increased by one. If the bat misses the ball, the score is reset to zero and ball is re-generated on the screen. 

The entire project was done using Vivado 2019.1 and SDK
