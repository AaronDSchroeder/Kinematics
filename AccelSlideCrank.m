function [alpha3, dddot] = AccelSlideCrank(a, b, offset, theta2, omega2, alpha2)
[theta3, theta3p, d1, d2] = vLoopSlideCrank(a, b, offset, theta2);
[omega3, dDot] = velocitySlideCrank(a, b, theta2, theta3p, omega2);
alpha3 = (a*alpha2*cosd(theta2) - a*(omega2^2)*sind(theta2) + b*(omega3^2)*sind(theta3p))/(b*cosd(theta3p));
dddot = -a*alpha2*sind(theta2) - a*(omega2^2)*cosd(theta2) + b*alpha3*sind(theta3p) + b*(omega3^2)*cosd(theta3p);

end