%Following code authored by Aaron D> Schroeder, A01963244 
clear all; close all; clc
disp("4-10 (All angles displayed in degrees)")
disp("4-10a");
[theta3_1, theta3_2, d1, d2] = vLoop3(1.4, 4, 1, 45)
disp("4-10b");
[theta3_1, theta3_2, d1, d2] = vLoop3(2, 6, -3, 60)
disp("4-10c");
[theta3_1, theta3_2, d1, d2] = vLoop3(3, 8, 2, -30)
disp("4-10d");
[theta3_1, theta3_2, d1, d2] = vLoop3(3.5, 10, 1, 120)
function [theta3, theta3p, d1, d2] = vLoop3(a, b, offset, theta2)
 theta3 = asind(((a*sind(theta2)) - offset)/b);
 theta3p = theta3 + 180;
 d1 = a*cosd(theta2) - b*cosd(theta3);
 d2 = a*cosd(theta2) - b*cosd(theta3p);
end