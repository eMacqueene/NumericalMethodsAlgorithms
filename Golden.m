%golden section problem
clear
clc
% Es is (2-phi)*((xu-xl)/xopt)*100
phi = (1+sqrt(5))/2; iter = 0;
xl = -2; xu = 1;
Es = 2;
d=(phi-1)*(xu-xl);
x1= xl+d; x2 = xu-d;
f1 = goldfn(x1);
f2 = goldfn(x2);
while iter < 12
    
xint = xu-xl;
%Set sign of compare below to '<' for a maximum problme.
%Set sign of compare below to '>' for a maximum problme.
if (f1<f2) % Whichever one is bigger is the one that replaces a limit. MIN ONLY
    xopt = x1;
    xl = x2;
    x2 = x1;
    f2 = f1;
    x1 = xl + (phi-1)*(xu-xl);
    f1 = goldfn(x1);
else
    xopt = x2;
    xu = x1;
    x1 = x2;
    f1 = f2;
    x2 = xu - (phi-1)*(xu-xl);
    f2 = goldfn(x2);
end 
Es = (2-phi)*abs(xint/xopt)*100
iter =iter+1
end

xopt

function fx = goldfn(x)
fx = -1.5*x^6 - 2*x^4 + 12*x;
end