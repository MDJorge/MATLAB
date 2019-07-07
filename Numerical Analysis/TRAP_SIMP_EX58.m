% TRAP_SIMP_EX58 Example 5.8 from section 5.1
f=@(x) log(x);
a = 1; b = 2; % integral bounds
% Trapezoid method
m = 4; % number of panels
h = (b - a)/4; % panel width
T = f(a) + f(b); % T is the Trapezoid running sum
for i = 1:(m-1)
    T = T + 2*f(a + i*h);
end
T = (h/2)*T;
% Simpson’s method
m = 4; % number of panels
h = (b - a)/(2*m); % panel width
S = f(a) + f(b); % S is Simpson’s running sum

% Add up the weights of 4
for i = 1:m
    S = S + 4*f(a + (2*i - 1)*h);
end
% Add up the weights of 2
for i = 1:(m-1)
    S = S + 2*f(a + 2*i*h);
end
S = (h/3)*S;
[T S]