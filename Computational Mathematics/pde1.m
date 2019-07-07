%A PDE is to be solved on the domain where 0 < t < 0.5, 0 < x < 5.
%Subject to: u(x,0) = x^2, u(0,t) = 2t, u(1,t) = 2t + 25.
%The PDE for u = u(x,t) is the equation u_t = u_xx.
%When the step sizes are chosen to be dx = 1 and dt = .1 
%the corresponding difference equation becomes, 
%u_(i,j+1) = (.1)u_(i-1,j) + (0.8)u_(i,j) + (0.1)u_(i+1,j) 
%Set up a matrix of values for the function u(x,t) on this grid of points

syms z 
lower(z) = z^2;
left(z) = 2*z;
right(z) = 25 + 2*z;
dx = 1;
dt = 0.1;


for c = 1:6
    M(1,c) = lower((c-1)*dx);
end

for r = 1:6
    M(r,1) = left((r-1)*dt);
end

for r = 1:6
    M(r,6) = right((r-1)*dt);
end

for r = 2:6
    for c = 2:5
        M(r,c) = (0.1)*M(r-1,c-1) + (0.8)*M(r-1,c) + (.1)*M(r-1,c+1);
    end
end

x = linspace(0,5,6);
t = linspace(0,0.5,6);
[X,T] = meshgrid(x,t);



