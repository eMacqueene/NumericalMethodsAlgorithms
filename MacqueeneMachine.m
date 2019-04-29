% Emily Macqueene 8 Feb 2019
% This finds the Machine Epsilon

clc
clear

E = 1
while (1)
    if 1 + E <= 1
        E = 2*E
        break
    else
        E = E/2
    end
end
