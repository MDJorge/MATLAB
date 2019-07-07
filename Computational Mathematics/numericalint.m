% Numerical Integration
function [ leftriemann,rightriemann,midriemann ] = numericalint( f,a,b,n )
dx = (b-a)/n; 
leftriemann = 0; 
rightriemann = 0;
midriemann = 0;
for i = 1:n
    leftriemann = vpa(leftriemann + f(a+(i-1)*dx)*dx);
    rightriemann = vpa(rightriemann + f(a+i*dx)*dx);
    midriemann = vpa(midriemann + f(a+(1/2)*dx + (i-1)*dx)*dx);
end
leftriemann
rightriemann
midriemann
end

%{
sample run code
f(x)=x^2
numericalint(f,2,9,20)
%}