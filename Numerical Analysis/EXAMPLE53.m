% EXAMPLE53 In this code I tried to generate the table in
% example 5.3 on page 247 of section 5.1
% this is our 2 pt approx of f’(x).
% use this 2 pt approximate to approximate (e^x)’ at x = 0. We
% know the exat answer is f’(0) = 1.
for n = 1:9
    h = 10^(-n);
    d(n) = (exp(0+h) - exp(0)) / h; % d is a vector of approximate
    % derivatives for different h values.
    e(n) = abs(1 - d(n)); % error computes the difference between
    % the know derivative of 1 and the d(n) approximate.
end
[d', e'] % matrix first column is approximates; 2nd column is errors.