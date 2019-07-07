% Solving differential equations using Euler's method
function [ y ] = eulersmethod(f,t0,y0,tn,n)
    y=y0;
    dt = (tn-t0)/n;
    for i = 1:n
        y = vpa(y + f(t0+i*dt,y)*dt);
    end
    y
end

%{
sample run code
syms T Y;
f(T,Y) = T + Y;
eulersmethod(f,1,2,4,50)
%}