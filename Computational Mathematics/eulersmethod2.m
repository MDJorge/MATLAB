% Solve a DE with two initial conditions using Euler's method
function [ xplot, yplot, xyplot ] = eulersmethod2( f,g,t0,x0,y0,tn,n )
    t = linspace(t0,tn,n+1);
    x = x0;
    y = y0;
    dt = (tn - t0)/n;
    for i = 1:n
        x = vpa([x,x(i) + f(t0+i*dt,x(i),y(i))*dt]);
        y = vpa([y,y(i) + g(t0+i*dt,x(i),y(i))*dt]);
    end
    
    figure(1)
    xplot = plot(t,x);
    figure(2)
    yplot = plot(t,y);
    figure(3)
    xyplot = plot(x,y);
end