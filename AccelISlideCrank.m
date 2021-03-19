function [alpha4, bdDot] = AccelISlideCrank(a, c, d, gamma, theta2, omega2, alpha2)
[theta4_crossed, theta4_open, b1, b2] = vLoopISlideCrank(a, c, d, gamma, theta2);
theta3 = theta4_open + 90;
[bDot, omega4] = velocityISlideCrank(a, b2, c, theta2, theta3, theta4_open, omega2);

alpha4 = (a*(alpha2*cosd(theta3 - theta2) + (omega2^2)*sind(theta3 - theta2)) + c*(omega4^2)*sind(theta4_open - theta2) - 2*bDot*omega4)/(b2 + c*cosd(theta3 - theta4_open));
bdDot = 0;
end