% NEWTONS METHOD: is used to make the approximation from Example
% 1.11 (p. 52) in our textbook

clear

f = @(x) exp(x^2)-x-2; % function to find roots.

fPrime = @(x) 2*x*exp(x^2)-1; % derivative of function.

x(1) = -7; % initial guess

for i = 1:30
    x(i+1) = vpa(x(i) - f(x(i))/fPrime(x(i)),11);
end


x' % displays approximates