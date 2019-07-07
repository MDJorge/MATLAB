% ROMBERG_INTEGRATION
% Approximates the integral of f(x) on the interval a<=x<=b
% using Romberg integration in section 5.4 computer problem 2.
clear
f=@(x) exp(cos(x)); a=0; b=pi; % function and boundaries
R=zeros(5); % Romberg Integration Tableau
R(1,1)=(b-a)/2*(f(a)+f(b));
% First approximate integral using Trapezoid rule with
% n=1,2,4,8,16 panels.
for i = 2:5
    h = (b-a)/2^(i-1);
    R(i,1) = 1/2*R(i-1,1);
for k = 1:2^(i-2)
    R(i,1) = R(i,1) + h*f(a+(2*k-1)*h);
end
end
% Extrapolate on first column of R
for j=2:5 % columns
    for i=j:5 % rows
        R(i,j) = (4^(j-1)*R(i,j-1) - R(i-1,j-1)) / (4^(j-1) - 1);
    end
end
R