% RK4 Implemented to solve Example 6.18
f=@(t,y) y % D.E
y=@(t) 2*exp(t); % exact solution from p. 283
% Compute RK4 for n = 5, 10, 20, 40, ..., 640 steps
a = 0; b = 2; % a = start time, b = end time
n = 5; % number of steps to start
while n <= 40 % loop for each n
    clear t; clear w; % clear variable for each n
    t(1) = 0; % initial time is 0
    w(1) = 2; % initial approximation is 1
    h = (b - a)/n; % stepsize
    for i = 1:n % loop to implement RK4
        s1 = f(t(i), w(i)); % the Euler slope
        s2 = f(t(i) + h/2, w(i) + h*s1/2); % sniff ahead slope
        s3 = f(t(i) + h/2, w(i) + h*s2/2); % another sniff ahead slope
        s4 = f(t(i) + h, w(i) + h*s3); % still another sniff ahead
        w(i+1) = w(i) + h*(s1 + 2*s2 + 2*s3 + s4)/6; % update w
        t(i+1) = t(i) + h; % update t
    end
    disp([n, h, w(n+1), y(2), abs(w(n+1) - y(2))]) % display (steps, h, approx,
    % error)
    %disp(abs(w(n+1)-y(1)));
    n = 2*n; % update n for next loop
end