% NEWTON27 Newton’s method from example 2.32 in section 2.7
% Note that x = (x_1, x_2) is a vector

f=@(x) [x(2)-x(1)^3, x(1)^2 + x(2)^2 - 1]' % function f
Jf=@(x) [-3*x(1)^2, 1; 2*x(1), 2*x(2)]; % Jacobian matrix of f

x=[1,2]' % initial guess

for i = 1:7
    x = x - inv(Jf(x))*f(x)
end