% Draw solution using Euler's method
function [ G ] = eulersmethodgraph( f,t0,y0,t1,n )
    dt = (t1-t0)/n;
    y = y0;
    for i = 1:n
        y = vpa([y,y(i) + f(t0+i*dt,y(i))*dt]);
    end
    t = linspace(t0,t1,n+1);
    G = plot(t,y)
end