% Minimizes the least 1-norm
function [ xmin ] = least1norm(A,b)
    [n,m] = size(A);
    I = eye(n);
    c1 = linspace(0,0,m)';
    c2 = linspace(1,1,n)';
    c = [c1;c2];
    b1 = [b;-b];
    M = [A,-I; -A,-I];
    solution = linprog(c,M,b1);
    xmin = solution(1:m);
    minimumvalue=sum(solution(m+1:n,1))
end