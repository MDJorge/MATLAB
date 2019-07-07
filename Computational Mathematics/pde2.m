%A PDE is to be solved on the domain where 0 < t < 2, 0 < x < 1. 
%Subject to: u(x,0) = x(1-x), u(0,t) = 0, u(1,t) = 0. 
%When the step sizes are chosen to be dx = .05 and dt = .1 
%the corresponding difference equation becomes, 
%u_(i,j+1) = (.5)u(i-1,j) + (.5)u(i+1,j) 
%The surface plot for u(x,t) for the solution

syms z 
lower(z) = z*(1-z);
dx = .05;
dt = .10;

for c = 1:21
M(1,c) = lower((c-1)*dx);
end

for r = 1:21
M(r,1) = 0;
end

for r = 2:21
for c = 2:20 
M(r,c) = (.5)*M(r-1,c-1) + (.5)*M(r-1,c+1);
end
end

x = 0:dx:1; % row matrix from 0 to 1 equally spaced with width dx
t = 0:dt:2; 

X = meshgrid(x,t);
T = meshgrid(t,x)';

M = double(M); %this eliminates square brackets around the matrix for M

surf(X,T,M)
