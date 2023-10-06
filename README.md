# AHD-HW2
<img width="1181" alt="Upcounter" src="https://github.com/Jboyrox/AHD-HW2/assets/45749588/617e18b0-07b0-4b16-bf36-8ee69640054d">

The above image is the resultant waveform of the upcounter i had designed using verilog.
You can notice that in the beginning when the reset signal is set to 0. The counter value is also 0. This because our reset signal is an active low signal and when it is active it sets the counter to the default value 0. When the reset signal becomes 1 and the count enable becomes 1 the counter starts counting up. Then you see that when the count enable signal becomes 0. The counter stops counting and remains stuck in its last value. Finally you see that the reset pin becomes 0 again and the value of the counter becomes the default value that is 0.

<img width="1193" alt="upcounter_out" src="https://github.com/Jboyrox/AHD-HW2/assets/45749588/5059a723-3745-4ad7-96da-76684cf6e537">

<img width="1194" alt="upcounter_in" src="https://github.com/Jboyrox/AHD-HW2/assets/45749588/18a8a5a4-a230-4393-a0f6-e0e8bb16a915">

In this schematic, we have a clock divider register referred to as clk_div_counter. On each positive edge of the clock, it takes a 27-bit sequence and increments it by 1 bit. The resulting 27th bit is then sent to the slow_clk. On the positive edge of the clock, slow_clk takes this 27th bit and uses it as the clock signal for the i_cnt register. If the reset is activated, the 6-bit sequence resets to a specified N number. When the input enable is active and the reset is not, the counter increments by 1. To handle cases where all bit values are full and for different combinational bit addition sequences, a MUX is employed to reset the count back to 0. The resulting 6-bit sequence is then passed to cnt, which in turn is connected to LEDs for output.

![Downcounter](https://github.com/Jboyrox/AHD-HW2/assets/45749588/3d8b7d79-ef85-4d62-945a-40b67f6637d9)

