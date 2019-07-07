% Solve for eigenvalues
syms k
A=[3,2,4;2,0,2;4,2,3;]
I=eye(3)
det(A-k*I)
eig(A)
rref(A-8*I,.1)