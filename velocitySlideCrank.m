function [omega3, dDot] = velocitySlideCrank(a, b, theta2, theta3, omega2)
omega3 = ((a*cosd(theta2))/(b*cosd(theta3)))*omega2;
dDot = -a*omega2*sind(theta2) + b*omega3*sind(theta3);
end