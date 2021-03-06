function [theta3,theta3p, theta4, theta4p] = vectorloop(a, b, c, d, theta2)
[theta3, theta3p] = vectorLoop3(a, b, c, d, theta2);

[theta4, theta4p] = vectorLoop4(a, b, c, d, theta2);
end
function [theta4, theta4p] = vectorLoop4(a, b, c, d, theta2)
K1 = d/a;
K2 = d/c;
K3 = (a^2 - b^2 + c^2 + d^2)/(2*a*c);
A = cos(theta2*(pi/180)) - K1 - (K2*cos(theta2*(pi/180))) + K3;
B = -2*sin(theta2*(pi/180));
C = K1 - (K2 + 1)*cos(theta2*(pi/180)) + K3;
if (B^2 < (4*A*C))
   theta4 = 0;
   theta4p = 0;
   disp("The chosen link lengths are incapable of connecting at the chosen input angle. Linkage not possible or is a non-Grashof linkage.");
else
    theta4p = 2*atand((-B + sqrt((B^2 - 4*A*C)))/(2*A));
    theta4 = 2*atand((-B - sqrt((B^2 - 4*A*C)))/(2*A));
end
end

function [theta3, theta3p] = vectorLoop3(a, b, c, d, theta2)
K1 = d/a;
K4 = d/b;
K5 = (c^2 - d^2 - a^2 - b^2)/(2*a*b);
D = cos(theta2*(pi/180)) - K1 + (K4*cos(theta2*(pi/180))) + K5;
E = -2*sin(theta2*(pi/180));
F = K1 + (K4 - 1)*cos(theta2*(pi/180)) + K5;
if (E^2 < (4*D*F))
   theta3 = 0;
   theta3p = 0;
   disp("The chosen link lengths are incapable of connecting at the chosen input angle. Linkage not possible or is a non-Grashof linkage.");
else    
theta3p = 2*atand((-E + sqrt((E^2 - 4*D*F)))/(2*D));
theta3 = 2*atand((-E - sqrt((E^2 - 4*D*F)))/(2*D));
end
end

