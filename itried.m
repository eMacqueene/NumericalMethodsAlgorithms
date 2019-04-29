% m1*v1i + m2*v2i = m1*v1f + m2*v2f
% e = (v2f-v1f)/(v1i-v2i)

% 5 kg object travels right with a velocity of 1 m/s. 3 kg object
% travels left with a velocity of 4.5 m/s. After collision, 3 kg object 
% travels right with a velocity of 3 m/s. What is the velocity of the 
% 5 kg object, along with the coefficient of restitution?

% This was my recitation quiz this morning, and I only had about 3 minutes
% to complete it. I feel like I am losing my mind, so I wrote a code to
% solve. I have no clue what the answer should be, or what is wrong with
% the code. Thanks.

% P.S., be proud of me. I am being a good engineer and using MATLAB to help
% me out. Heh.

clc
clear

m1 = 3
v1i = -4.5
v1f = 3
m2 = 5
v2i = 1
v2f = ((m1*v1i + m2*v2i) - (m1*v1f)) / m2 

e = (v2f-v1f)/(v1i-v2i)

disp('Fuck my life, but hey, it is almost Friday. :)')