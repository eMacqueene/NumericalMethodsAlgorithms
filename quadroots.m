% Loops II assignment
% For MECH 103
% By Emily Macqueene
% 5 November 2018
% Description: The program calculates the number of real roots and the real
% roots of a quadratic equation based on the descriminate.

clear %Cleans the windows and workspace
clc

disp('d = sqrt((b^2) - 4*a*c)')
a = input('Type the value of a here. ') %Asks user input for each constant.
b = input('Type the value of b here. ')
c = input('Type the value of c here. ')

d = sqrt((b^2) - 4*a*c); %This is the equation for the descriminate d.
root1 = (-b + (d))/2; %These are the equations for the roots.
root2 = (-b - (d))/2;


if d > 0 %The program comes here if there are two real roots. 
    disp('There are 2 real roots.')
    %disp(['The roots of the input are ', num2str(root1), ' and ', num2str(root2)])
    %This displays the value of the two real roots in this case.
    formatSpec = 'root1 is %8.3f \nroot2 is %8.3f \n.';
    fprintf(formatSpec,root1,root2) %This displays the value of the roots.

elseif d == 0 %It comes here if the inputs give only one real root.
    disp('There is 1 real root.')
    %disp(['The root of the input is ', num2str(root1)])
    formatSpec = 'root1 is %8.3f \n.';
    fprintf(formatSpec, root1) %This displays the value of the root.
else
    disp ('There are 0 real roots.') %If input gives no real roots, the program comes here. 
    %disp(['The imaginary roots are', num2str(root1), ' and ', num2str(root2)])
    formatSpec = 'root1 is %8.3f + %8.3fi \nroot2 is %8.3f + %8.3fi \n.';
    fprintf(formatSpec,real(root1),imag(root1),real(root2),imag(root2))
    %This displays the value of the imaginary root(s).
end
