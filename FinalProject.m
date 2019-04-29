%% Mech 103 Final Project - Monday, December 3, 2018
%The purpose of this project is to analyze the specific heat of ice and
%apply that to find the amount of energy that each of five different
%materials were able to transfer into the melting ice. The ice cube
%suspended with aluminum foil was considered the control for the
%experiement.

clear
clc

% Reading the excel file
filename = 'Mech_103_Data.xlsx';
time = xlsread(filename, 'a2:a27');
alFoil = xlsread(filename, 'b2:b27');
wPlastic = xlsread(filename, 'c2:c27');
bPlastic = xlsread(filename, 'd2:d27');
flatGlass = xlsread(filename, 'e2:e27');
styro = xlsread(filename, 'f2:f27');

%Calculating energy into the system for each ice cube
%heat of fusion of water = 334 J/g
%using 1 cm^3 ice
volume = 1;
density = 0.91;
mass = density/volume;

fusion = 334;
energyIn = fusion*mass;


%Using the total time that it took for an ice cube to melt on each surface
%to calculate the heat transfer of each material compared to the control
timeAL = 19.383*60;
timeWP = 19.5*60;
timeBP = 20.6*60;
timeGL = 18.017*60;
timeST = 35.15*60;

%The variable name starting with delta indicate change in energy per time
%from each material, assuming that the control acts as a zero becuase its
%change in energy comes completely from ambient air

deltaAL = energyIn/timeAL;
deltaWP = energyIn/timeWP;
deltaBP = energyIn/timeBP;
deltaGL = energyIn/timeGL;
deltaST = energyIn/timeST;

%The final values are the difference in energy transfered compared to the
%control that is indicated in deltaAL. This will tell whether something was
%insulating or whether it was able to transfer energy faster than the air.
%Measured in joules/(second*cm^2)

finWP = deltaWP-deltaAL;
finBP = deltaBP-deltaAL;
finGL = deltaGL-deltaAL;
finST = deltaST-deltaAL;

finWP
finBP
finGL
finST


%%
x = [0:10:40]
y = [-20:10:20]
t = [timeWP timeBP timeGL timeST]
f = [finWP finBP finGL finST]
plot(t,f,'o')
grid on
title('Heat Transfer of Four Surfaces with Time')
xlabel('Time in Seconds')
ylabel('Heat Transfer in Watts per Square cm')
text(timeWP+100,finWP,'White Plastic','FontSize',12)
text(timeBP+100,finBP,'Black Plastic','FontSize',12)
text(timeGL,finGL-0.002,'Glass Sheet','FontSize',12)
text(timeST-180,finST,'Styrofoam','FontSize',12)



