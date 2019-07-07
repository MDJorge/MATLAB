% Create Laplacian Matrix
function [ M ] = laplacianmatrix( n )
M = zeros(n^2,n^2);
M(1,1) = 4;
M(1,2) = -1;
M(1,n+1) = -1;
M(n,n) = 4;
M(n,n-1) = -1;
M(n,2*n) = -1;
M(n^2-n+1,n^2-n+1) = 4;
M(n^2-n+1,n^2-2*n+1) = -1;
M(n^2-n+1,n^2-n+2) = -1;
M(n^2,n^2) = 4;
M(n^2,n^2-1) = -1;
M(n^2,n^2-n) = -1;
for i = 2:n-1
    M(i,i) = 4;
    M(i,i-1) = -1;
    M(i,i+1) = -1;
    M(i,i+n) = -1;
end
for i = 1:n-2
    M(i*n+1,i*n+1) = 4;
    M(i*n+1,i*n+2) = -1;
    M(i*n+1,i*n+1+n) = -1;
    M(i*n+1,i*n+1-n) = -1;
end
for i = 2:n-1
    M(i*n,i*n) = 4;
    M(i*n,i*n-1) = -1;
    M(i*n,(i-1)*n) = - 1;
    M(i*n,(i+1)*n) = -1;
end
for i = 2:n-1
    M(n^2-n+i,n^2-n+i) = 4;
    M(n^2-n+i,n^2-n+i+1) = -1;
    M(n^2-n+i,n^2-n+i-1) = -1;
    M(n^2-n+i,n^2-2*n+i) = -1;
end
for i = 2:n-1
    for j = 1:n-2
        M(j*n+i,j*n+i) = 4;
        M(j*n+i,j*n+i-1) = -1;
        M(j*n+i,j*n+i+1) = -1;
        M(j*n+i,j*n+i+n) = -1;
        M(j*n+i,j*n+i-n) = -1;
    end
end
end

