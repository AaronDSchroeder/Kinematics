function [alpha3, alpha4] = Accel(a, b, c, d, theta2, omega2, alpha2)
[theta3, theta3p, theta4, theta4p] = vectorloop(a, b, c, d, theta2);
[omega3, omega4] = velocity4Bar(a, b, c, omega2, theta2, theta3, theta4);
A = c*sind(theta4);
B = b*sind(theta3);
C = a*alpha2*sind(theta2) + a*(omega2^2)*cosd(theta2) + b*(omega3^2)*cosd(theta3) - c*(omega4^2)*cosd(theta4);
D = c*cosd(theta4);
E = b*cosd(theta3);
F = a*alpha2*cosd(theta2) - a*(omega2^2)*sind(theta2) - b*(omega3^2)*sind(theta3) + c*(omega4^2)*sind(theta4);

alpha3 = (C*D - A*F)/(A*E - B*D);
alpha4 = (C*E - B*F)/(A*E - B*D);
end