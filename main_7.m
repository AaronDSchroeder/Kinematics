clear all; close all; clc
[alpha3, alpha4] = Accel(2, 7, 9, 6, 30, 10, 0)
disp("6-7 (All angles displayed in degrees)")
disp("6-7");

[alpha3, dddot] = AccelSlideCrank(1.4, 4, 1, 45, 10, 0)

