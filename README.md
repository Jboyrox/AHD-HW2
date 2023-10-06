# AHD-HW2
<img width="1181" alt="Upcounter" src="https://github.com/Jboyrox/AHD-HW2/assets/45749588/617e18b0-07b0-4b16-bf36-8ee69640054d">

The above image is the resultant waveform of the upcounter i had designed using verilog.
You can notice that in the beginning when the reset signal is set to 0. The counter value is also 0. This because our reset signal is an active low signal and when it is active it sets the counter to the default value 0. When the reset signal becomes 1 and the count enable becomes 1 the counter starts counting up. Then you see that when the count enable signal becomes 0. The counter stops counting and remains stuck in its last value. Finally you see that the reset pin becomes 0 again and the value of the counter becomes the default value that is 0.

<img width="1193" alt="upcounter_out" src="https://github.com/Jboyrox/AHD-HW2/assets/45749588/5059a723-3745-4ad7-96da-76684cf6e537">

<img width="1194" alt="upcounter_in" src="https://github.com/Jboyrox/AHD-HW2/assets/45749588/18a8a5a4-a230-4393-a0f6-e0e8bb16a915">

