%Augmenting matrices
syms r
% [EA, jb] = rref(A,err)
A=[2 -3 2; 1 2 3; 3 1 -1]
b=[14; 6; -2]

Aug = [A b]

EAug=rref(Aug)

x=EAug(:,4) %4 columns

%example 2 with infinite possibility variable
C=[1 2 3 4 5;0 1 2 3 -1; 0 0 1 2 3; 0 0 0 1 2]
d=[6;7;7;9]
Aug= [C d]
EAug=rref(Aug)
x=[EAug(:,6)-EAug(:,5)*r;r]

%example 3
A=[1 2 3 4 5;0 1 2 3 -1; 0 0 1 2 3; 0 0 0 1 2]
[EA jb]=rref(A)
r=length(jb)
A(:,jb)