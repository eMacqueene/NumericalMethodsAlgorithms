clc
clear
disp('How is life? Type 1 for good or 2 for bad. ')
Life = input('1 for good or 2 for bad. ')
if Life == 1
    disp('Hallelujah')
elseif Life == 2
    disp('Sucks to be you.')
else
    disp('You obviously cannot follow directions. Try again.')
end
