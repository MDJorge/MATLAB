% Orthogonally Diagonalize a Symmetric Matrix
function [ A ] = OD( M )
[n,n] = size(M);
eigval = eig(M);
A = eigvec(M,eigval(1));
    for i = 2:n
        A = [A,eigvec(M,eigval(i))];
    end
end


