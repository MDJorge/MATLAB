% Solve for egeinvectors
function [ x ] = eigvec( A,c )
[n,m] = size(A);
I = eye(n);
B = A - c*I;
M = [B;ones(1,n)];
b = [zeros(n,1);1];
x = least2norm(M,b);
x = x/norm(x);
end

