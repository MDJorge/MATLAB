% Minimizes least 2-norm
function [ xmin ] = least2norm( A,b )
    xmin = (A'*A)^(-1)*(A'*b);
end