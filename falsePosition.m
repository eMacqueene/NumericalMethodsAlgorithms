% Emily Macqueene, MECH105, 4 March 2019 
% Function to find the roots using the False-Position method
function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
% xu is the upper guess, xl is the lower guess.
% func is the function name.
% xr is the guess at the root. 
% es is the desired relative error.
% maxiter is the max number of iterations allowed, and iter is the number
%   of iterations.
% ea is the approximate relative error as a percent.
% root is the real root and fx is the func value at the root.

testing1 = func(xu)*func(xl);
if testing1 > 0;
    error('Brackets need to have opposite signs in function.')
    % This makes sure the user selects limits that bracket a root.
end
if nargin < 3
    error('At least three inputs required.')
    % Ensures that values are computed.
end
if nargin < 4
    es = 0.0001
end
if nargin < 5
    maxiter = 200
end 
xr = xl;
iter = 0;
ea = 100;
while (1)
    xr_old = xr;
    xr = xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu)))
    iter = iter + 1
    if xr > 0 || xr < 0
        ea = abs((xr-xr_old)/xr) * 100 
    end
    testing = func(xl)*func(xu);
    if testing<0 && func(xu)<0
        xu = xr
    elseif testing<0 && func(xl)<0
        xl = xr
    elseif testing>0 && func(xu)>0
        xu = xr
    elseif testing>0 && func(xl)>0
        xl = xr
    else 
        ea = 0;
    end % This ensures that the new limits bracket the root.
    % The new limit replaces the old limit that shares its sign.
   if ea <= es || iter >= maxiter
       break % Terminates the program if there are too many iterations.
   end
end

format long

root = xr; % Estimate of the root
fx = func(xr); % Function at the estimated root
iter; % Number of iterations used

disp(ea)
disp(root)
disp(fx)
disp(iter)

end
