clear all; close all; clc
disp("6-9 (All angles displayed in degrees)")
disp("6-9a");
[theta4_open, theta4_crossed, b1, b2] = vLoopISlideCrank(2, 4 , 6, 90, 30)

theta3 = theta4_open + 90
[bDot, omega4] = velocityISlideCrank(2, -b1, 4, 30, theta3, theta4_open, 10)