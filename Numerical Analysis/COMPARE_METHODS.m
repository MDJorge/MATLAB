% COMPARE_METHODS
% Euler's vs. Improved Euler's vs. Exact Answer
clear
clf
f=@(t,y) y - 0.5*exp(t/2)*sin(5*t) + 5*exp(t/2)*cos(5*t); % ODE
h=0.01; % stepsize. Play around with different h values.
n=700; % number of steps to time t=7. Play around with n.
% Euler's method to create piecewise linear approximation w(t) to
% the real solution y(t).
w(1)=0; % initial condition for euler's. Try different intial values.
t(1)=0; % intial time
for i =1:n
    s1 = f(t(i),w(i)); % Euler's slope.
    w(i+1) = w(i) + h*s1; % update w(t)
    t(i+1) = t(i) + h; % update time.
end
plot(t,w,'r') % Connect the dots of euler's approximate solution in red.
hold on;
% Improved Euler's method (or Trapezoid method or Heun method) is
% used to create piecewise linear approximation v(t) to
% the real solution y(t).
v(1)=0; % initial condition for euler's. Try different intial values.
t(1)=0; % intial time
for i =1:n
    s1 = f(t(i),v(i)); % Euler's slope.
    s2 = f(t(i) + h,v(i) + s1*h); % Euler's next slope. Sniff
    % ahead slope.
    v(i+1) = v(i) + h*(s1 + s2)/2; % update w(t) with the average
    % of the Euler and Sniff ahead slopes
    t(i+1) = t(i) + h; % update time.
end
plot(t,v,'k.') % Connect the dots of euler's approximate solution in red.
hold on;
% Exact Solution. We know from differential equations course.
t = 1:h:h*n; % time intervals
y = exp(t/2).*sin(5*t); % y(t) is the exact solution
plot(t,y,'b') % exact solution in blue