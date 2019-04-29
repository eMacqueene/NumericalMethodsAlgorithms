function [nd] = days(mo, da, leap)
% Emily Macqueene, 1 Feb 2019, Mech 105
% This function finds the elapsed days, including the current day,
% for any day that is entered by the user. It considers leap years. 

clc
clear

mo = input('What month is it (1-12)? ')
if mo > 12 || mo < 1
    disp('Please pick a month that exists.')
end
da = input('Input the day of the month. ')
if da > 31 || da < 1
    disp('Please pick a day that exists.')
end
leap = input('Is it a leap year? 1 for yes or 0 for no. ')
if leap ~= 1 || leap ~= 0
    disp('1 for yes, 0 for no.')
end

dpm = [0 31 28 31 30 31 30 31 31 30 31 30 31];
% Creates vector with days in each month.

if mo > 0 && leap == 0
    nd = sum(dpm(1:(mo))) + da
elseif mo > 2 & leap == 1
    nd = sum(dpm(1:(mo))) + da + 1
end
disp('This is the number of days elapsed in the year, including today.')

end


