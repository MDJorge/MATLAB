% EXAMPLE53 In this code I tried to generate the table in
% example 5.3 on page 247 of section 5.1
% this is our 2 pt approx of f’(x).
% use this 2 pt approximate to approximate (e^x)’ at x = 0. We
% know the exat answer is f’(0) = 1.
 n = 9
    h = 10^(-n);
    d(n) = ((2+h)^(-1) - (2)^(-1)) / h; % d is a vector of approximate
    % derivatives for different h values.
    e(n) = abs(1 - d(n)); % error computes the difference between
    % the know derivative of 1 and the d(n) approximate.

[vpa(d,16)', vpa(e,16)'] % matrix first column is approximates; 2nd column is errors.