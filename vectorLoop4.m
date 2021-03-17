%Following code authored by Aaron D> Schroeder, A01963244 
clear all; close all; clc
disp("6-9 (All angles displayed in degrees)")
disp("6-9a");
[theta4_open, theta4_crossed, b1, b2] = vLoop4(2, 4 , 6, 90, 30)

theta3 = theta4_open + 90
[bDot, omega4] = velocityISlideCrank(2, -b1, 4, 30, theta3, theta4_open, 10)

function [bDot, omega4] = velocityISlideCrank(a, b, c, theta2, theta3, theta4, omega2)
omega4 =  (a*omega2*cosd(theta2 - theta3))/(b + c*cosd(theta4 - theta3));
bDot = ((-a*omega2*sind(theta2) + omega4*(b*sind(theta3)+ c*sin(theta4))))/cosd(theta3)
end
function [theta4_crossed, theta4_open, b1, b2] = vLoop4(a, c, d, gamma, theta2)
P =a*sind(theta2)*sind(gamma) + (a*cosd(theta2) - d)*cosd(gamma);
Q = -a*sind(theta2)*cosd(gamma) + (a*cosd(theta2) - d)*sind(gamma);
R = -c*sind(gamma);

S = R - Q;
T = 2*P;
U = Q + R;
if (T^2 < (4*S*U))
   theta4_crossed = 0;
   theta4_open = 0;
   b1 = 0;
   b2 = 0;
   disp("The chosen link lengths are incapable of connecting at the chosen input angle. Linkage not possible or is a non-Grashof linkage.");
else
    theta4_crossed = 2*atand((-T + sqrt((T^2 - 4*S*U)))/(2*S));
    theta4_open = 2*atand((-T - sqrt((T^2 - 4*S*U)))/(2*S));
    b1 = (a*sind(theta2) - c*sind(theta4_crossed))/(sind(theta4_crossed + gamma - 180));
    b2 = (a*sind(theta2) - c*sind(theta4_crossed))/(sind(theta4_open + gamma));
end
end