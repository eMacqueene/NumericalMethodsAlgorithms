%  q(t)=q0e?Rt/(2L)cos(1LC?(R2L)2????????????t)
q0 = 10;
R = 60;
L = 9;
C = 0.00005;
t0 = 0;
t8 = 0.8;
% q1 = q0*exp(1)^((-R*t0)/(2*L))*cos((sqrt((1/L*C)-((R/(2*L))^2))*t0));
% q2 = q0*exp(1)^((-R*t8)/(2*L))*cos((sqrt((1/L*C)-((R/(2*L))^2))*t8));
t = linspace(0,0.8,100)
% q = q0*exp(1).^((-R*t)/(2*L)).*cos((sqrt((1/L*C)-((R/(2*L))^2))*t)); 

q = q0*exp(-R*t/(2*L)).*cos(sqrt(1/(L*C)-(R/(2*L))^2)*t)
subplot(2,1,1)
plot(t,q)
xlabel('Time (t)')
ylabel('Capacitator Charge (q)')
title('Time vs Charge of Capacitator')



q2 = q0*exp(-R*t/(2*L)).*cos(sqrt(1/(L*C*10)-(R/(2*L))^2)*t)
subplot(2,1,2)
plot(t,q2)
xlabel('Time (t)')
ylabel('Capacitator Charge (q2)')
title('Time vs Charge of Capacitator')