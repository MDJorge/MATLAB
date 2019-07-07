% LAGRANGE_EVAL applies Lagrange interpolation to data points
% x, y, where x and y are n dimensional row vectors. The matrix C
% is the matrix of Newton divided difference coefficients. The
% Lagrange polyn is then evaluated at t.

C=zeros(n); % square matrix to hold coefficients from Newton’s
    % divided difference.
C(:,1)=y'; % first column of C is y

for j=2:n
    for i=1:(n-j+1)
        C(i,j)=(C(i+1,j-1) - C(i,j-1)) / (x(j+i-1) - x(i));
    end
end

% The first row of matrix C are the coefficients of the L.I.P.
% If you want to see these coefficients, include the line:
% disp(C(1,:))

% Now we evaluate the L.I.P. at the value t.
s=0; % evaluation
x_mult=1; % multiples of form (t-x1)(t-x2)...(t-xk)

for j = 1:n
    s = vpa(s + C(1,j)*x_mult);
    x_mult = x_mult*(t-x(j));
end
s