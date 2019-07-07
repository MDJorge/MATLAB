%sq is placeholder for x in the function g(x)=sqrt(x)
%x(1) is initial guess
%n is steps

clear x
format long
syms sq
syms x
syms n

sq=5;
x(1)=2.25;
n=10;

for i=1:n
        x(i+1)=vpa(((x(i))+(sq/(x(i))))/2);
end


x'