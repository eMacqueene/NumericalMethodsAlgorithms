function [L,U,P] = luFactor(A)
% Emily Macqueene
% Mech 105
% 3 April 2019

% A is the matrix of the coefficients of the equations.
% U is the upper triangular matrix
% L is the lower triangular matrix 
% P is the pivotal matrix that keeps track of the pivots.

% A = L*U
% P*A = L*U

[m,n] = size(A);
if m~=n
    error('This matrix must be square.')
end
L = eye(length(A)); %Sets up L matrix.
P = eye(length(A)); %Sets up pivot matrix.
a = A;

for k = 1:(n-1)
    [big,i] = max(abs(a(k:n,k)));
    checkR = i + (k-1);
    if checkR ~= k
        a([k,checkR],:) = a([checkR,k],:);
        P([k,checkR],:) = P([checkR,k],:);
    end
    for i = (k + 1):n
        Lf = a(i,k)/a(k,k);
        a(i,k:n) = a(i,k:n)-(Lf*a(k,k:n)); %Performs elimination.
        L(i,k) = Lf; %Sets up L matrix.
    end
end
% know that PA = UL.
U = a 
L
P

