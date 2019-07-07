% GAUSS_SEIDEL computes first 7 iterates of Gauss-Seidel’s method to
% solve system Ax=b when A is square b is column
% and x is initial guess

L=tril(A,-1); % L = Lower triangular part (not LU decomposition)
U=triu(A,1); % U = Upper triangular part (not LU decomposition)
D=diag(diag(A)); % D = diagonal part (not LDU decomposition)

T=@(x) inv(L+D)*(b-U*x) % Gauss-Seidel iterate

for i = 1:7
    x = T(x)
end