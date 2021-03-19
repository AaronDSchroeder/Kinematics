%Following code authored by Aaron D> Schroeder, A01963244 
function [theta3, theta3p, d1, d2] = vLoopSlideCrank(a, b, offset, theta2)
 theta3 = asind(((a*sind(theta2)) - offset)/b);
 theta3p = theta3 + 180;
 d1 = a*cosd(theta2) - b*cosd(theta3);
 d2 = a*cosd(theta2) - b*cosd(theta3p);
end