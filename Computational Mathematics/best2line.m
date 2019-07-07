% Least-squares optimization, least 2-norm
function [ slope,intercept ] = best2line( x,y )
    n = length(x);
    b = y';
    c = linspace(1,1,n);
    A = [x',c'];
    solution = least2norm(A,b);
    slope = solution(1)
    intercept = solution(2)
end