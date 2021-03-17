%Following code authored by Aaron D> Schroeder, A01963244 
clear all; close all; clc
disp("6-7 (All angles displayed in degrees)")
disp("6-7");
[theta3_1, theta3_2, d1, d2] = vLoop3(1.4, 4, 1, 45)

[omega3, dDot] = velocitySlideCrank(1.4, 4, 45, theta3_2, 10)

disp("6-16");
[theta3_1, theta3_2, d1, d2] = vLoop3(0.8, 1.93, 0.38, 34.3)

[omega3, dDot] = velocitySlideCrank(0.8, 1.93, 34.3, theta3_2, 15)
function [omega3, dDot] = velocitySlideCrank(a, b, theta2, theta3, omega2)
omega3 = ((a*cosd(theta2))/(b*cosd(theta3)))*omega2;
dDot = -a*omega2*sind(theta2) + b*omega3*sind(theta3);
end
function [theta3, theta3p, d1, d2] = vLoop3(a, b, offset, theta2)
 theta3 = asind(((a*sind(theta2)) - offset)/b);
 theta3p = theta3 + 180;
 d1 = a*cosd(theta2) - b*cosd(theta3);
 d2 = a*cosd(theta2) - b*cosd(theta3p);
end