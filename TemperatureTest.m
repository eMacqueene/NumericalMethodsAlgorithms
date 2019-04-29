% Converts temperature between F and C

t = input('Enter beginning temperature value.')
T = input('What unit is this in? 1 for farenheit, 2 for celsius. ')
if T == 1
    temp = (t-32)/1.8
elseif T == 2
    temp = (t*1.8) + 32
else
    disp('You cannot follow directions, can you?')
end
disp(temp)
