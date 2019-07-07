% Least-squares optimization, least 1-norm
function [ slope,intercept ] = best1line( x,y )
    n = length(x);
    b = y';
    c = linspace(1,1,n);
    A = [x',c'];
    solution = least1norm(A,b);
    slope = solution(1)
    intercept = solution(2)
end