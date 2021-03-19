function [omega3, omega4] = velocity4Bar(a, b, c, omega2, theta2, theta3, theta4)
theta3
theta4
omega3 = (a*omega2/b)*(sind(theta4 - theta2)/sind(theta3 - theta4))
omega4 = (a*omega2/c)*(sind(theta2 - theta3)/sind(theta4 - theta3))
end