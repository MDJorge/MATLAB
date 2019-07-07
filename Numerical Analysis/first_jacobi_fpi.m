% FIRST_JACOBI_FPI Solves linear system Ax=b using fpi x=Tx+c
% when Dx = -(L+U)x + b. So T=-D^-1(L+U) and c=D^-1(b)
clear

A=[5 4; 1 3]
b=[6 -1]'; % initial problem

L=tril(A,-1); % L = Lower triangular part (not LU decomposition)
U=triu(A,1); % U = Upper triangular part (not LU decomposition)
D=diag(diag(A)); % D = diagonal part (not LDU decomposition)

T=-inv(D)*(L+U); % Jacobi iterate
c=inv(D)*b;

x=[0 0]'; % initial guess
X=zeros(11,2); % FPIs

for i=1:12
    x= T*x + c;
    X(i+1,:)=x;
end
X