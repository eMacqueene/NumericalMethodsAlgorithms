%    f(z)=12??e?z2/2
z = [-5:1:5]
f = (1/(sqrt(2*pi)))*(exp(1).^((-z.^2)/2))
% need the dot because operators used are element by element on z.

plot(z,f)
xlabel('z')
ylabel('Frequency')
title('z vs Frequency')