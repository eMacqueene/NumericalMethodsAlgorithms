function [I] = Simpson(x,y)
% Emily Macqueene, MECH105, 19 April 2019

% This algorithm applies Simpson's 1/3 rule of integration to a tabulated
% set of data with equal independent variable spacing.
% If the number of intervals is odd, the last will be calculated
% with one iteration of the trapezoidal rule.
 
% x is the array of equally-spaced independent variables.
% y is the array of dependent variables.

% notable formulas below:
% h = (b-a)/2
% I = (h/3)*(y0+(4*y1)+y2) for even number of intervals
% TrapRule = (b-a)*((yb+ya)/2)
% Where b=y(length(y)) and a=y(length(y)-1) etc.
clc
if nargin ~= 2
    error('Must have 2 inputs')
end

int = linspace(x(1),x(length(x)),length(x));
if isequal(int,x) == 0
    error('x must be equally spaced.')
end

if length(y) ~= length(x) 
    error('x and y must be same length.')
end

if mod(length(x),2) == 1 % odd # of points = even # of intervals
    lastInt = 0;
else
    b=y(length(y));
    a=y(length(y)-1);
    lastInt = ((b+a)/2); %calcs trapezoidal
    warning('The last interval is a trapezoidal approx.')
end

h = (x(3)-x(1))/2; %Sets step 
count = 0;
for m= 1:2:(length(y)-2)
    y0 = y(m);
    y2 = y(m+2);
    y1 = y(m+1);
    I = ((h/3)*((y0+(4*y1)+y2))); % Calculates Simpson's rule
    count = count + I; % Adds up Simpson intervals
end
count = count + h*lastInt;
I = count
end




