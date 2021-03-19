function [bDot, omega4] = velocityISlideCrank(a, b, c, theta2, theta3, theta4, omega2)
omega4 =  (a*omega2*cosd(theta2 - theta3))/(b + c*cosd(theta4 - theta3));
bDot = ((-a*omega2*sind(theta2) + omega4*(b*sind(theta3)+ c*sin(theta4))))/cosd(theta3)
end