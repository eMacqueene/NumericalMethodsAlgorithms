clc
clear
fx = @(x) (x^10) -1
[x fx ea iter] = falsePosition(@(x) fx(x),0,1.3)