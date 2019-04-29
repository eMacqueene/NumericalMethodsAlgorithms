% Setup parameters
t=10:10:60;
c=[3.4 2.6 1.6 1.3 1.0 0.5];
concentration = (4.84).*(exp((-0.034)*t))

% Add plots here
plot(t,c,'rd')
title('Photodegradation of Aqueous Bromide vs Time')
xlabel('Time (t) in Seconds')
ylabel('Concentration (c)')
hold on
plot(t,concentration,'g--')
legend('Data Points','Function')