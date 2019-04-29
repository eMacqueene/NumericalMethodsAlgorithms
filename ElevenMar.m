%% 11 mars 2019
% A = [0 -7 5; 0 4 7; -4 3 -7];
% B = [50; -30; 40];
% 
% a = [6 0 -1 0 0; -3 3 0 0 0; 0 -1 9 0 0; 0 -1 -8 11 -2; -3 -1 0 0 4];
% b = [50; 0; 160; 0; 0];
% a\b;
% 
% f=[cosd(30),0,-cosd(60),0,0,0; sind(30),0,sind(60),0,0,0; -cosd(30),-1,0,-1,0,0; -0.5,0,0,0,-1,0; 0,1,0.5,0,0,0; 0,0,-sind(60),0,0,-1]
% g=[0; -1000; 0; 0; 0; 0]
% h=f\g
% 
% 
% A = [8 2 1; 3 7 2; 2 3 9]
% 
% A =
% 
%      8     2     1
%      3     7     2
%      2     3     9
% 
% [L,u] = lu(A)
% 
% L =
% 
%     1.0000         0         0
%     0.3750    1.0000         0
%     0.2500    0.4000    1.0000
% 
% 
% u =
% 
%     8.0000    2.0000    1.0000
%          0    6.2500    1.6250
%          0         0    8.1000
% 
% det(A)
% 
% ans =
% 
%    405
%% 29 mars 2019

% Notes:
% PA = LU

% Ax = b, want to solve
a = [1 8 6; 1 10 5; 6 2 1];
% a' pivots the first and third rows. 

clc
% Solve? Find LU decomp and P. Check my hand? LU = PA and Ax = b
A = [1 4; 3 5];
b = [3; 2];
P = eye(2);
% have to pivot
% know that A21/A11 is 1/3. L21 = 1/3.

%% 1 avril 2019
% Let me die. 1 April
% A = [2 -6 -1; -3 -1 7; -8 1 -2]. You know the drill. ;)
% On a test: Give A and perf LU. Ask what U(2,2) is after Gauss. 
% Would not need to complete full. Once pivoted last time, we know that the
% 2,2 value is set. 

%% fml
% function [I] = Simpson(x,y)
% % Emily Macqueene, MECH105, 19 April 2019
% 
% % This algorithm applies Simpson's 1/3 rule of integration to a tabulated
% % set of data with equal independent variable spacing.
% % If the number of intervals is odd, the last will be calculated
% % with one iteration of the trapezoidal rule. 
% 
% % x is the array of equally-spaced independent variables.
% % y is the array of dependent variables.
%  
% % x MUST BE EVENLY SPACED. %%%%%%%
% clc
% 
% 
% if nargin ~= 2
%     error('Need 2 inputs.')
% end
% 
% if length(y) ~= length(x)
%     error('x and y must be same length.')
% end
% if mod(length(x),2) == 1 % odd # of points = even # of intervals
%     i = y(length(y) - 2); % sets up y0
%     j = y(length(y)); % sets up y2
%     k = y(length(y)-1); % sets up intermediate y1
%     lastInt = 0;
% else
%     i = y(length(y)-3);
%     j = y(length(y)-1);
%     k = y(length(y)-2);
%     b=y(length(y));
%     a=y(length(y)-1);
%     lastInt = (x(2)-x(1))*((b+a)/2); %calcs trapezoidal
%     warning('The last interval is a trapezoidal approx.')
% end
% 
% h = (x(2)-x(1))/2;
% count = 0;
% for y0 = y(1):i
%      y2 = y(3):j
%      y1 = y(2):k
%     I = ((h)*((y0+(4*y1)+y2)/3)) + lastInt;  
%     count = count + I; % Sums up segments.    
% end
% I = count
% end

%%



