% EULERS_METHOD
clear
clf
% SET PARAMETERS FOR PREDATOR (FOX) AND PREY (RABBIT)
a=.1; % 0.1 rabbit per month per rabbit growth
b=10000; % carrying capacity
c=0.005; % rabbit per month per rabbit-fox
d=0.00004; % fox per month per rabbit-fox
e=0.04; % fox per month
RPrime=@(R,F) a*R*(1 - R/b) - c*R*F; % Change in Rabbits = R’
FPrime=@(R,F) d*R*F - e*F; % Change in Foxes = F’
h=0.1; % stepsize in months
n=120*20; % 20 years into future
t(1)=0; % initial time
r(1)=2000; % initial number of rabbits
f(1)=10; % initial number of foxes
for i =1:n
    t(i+1) = t(i) + h; % update time
    r(i+1) = r(i) + RPrime(r(i),f(i))*h; % update rabbit population
    f(i+1) = f(i) + FPrime(r(i),f(i))*h; % update fox population
end
plot(t,r,t,100*f) % solution graphs