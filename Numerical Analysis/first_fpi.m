% FIRST_FPI Solves linear system Ax=b using fpi x=Tx+c
% when T=I-A and c = b

A=[3 1 -1; 1 -4 2; -2 -1 5];
T=eye(3)-A;
b=[3 -1 2]';
c=b;

x=[0 0 0]'; % initial guess

X=zeros(13,3); % FPIs
for i=1:12
    x= T*x + c;
    X(i+1,:)=x;
end
X