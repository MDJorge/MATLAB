% solve for roots of a function using newton's method
function [ root ] = newton366( f,g, x0, n )

root = x0;
for i = 1:n
    root = vpa(root -f(root)/g(root),11)
end

end

%{

sample run code 

syms x
f(x)=x^2-2
g(x)=diff(f,x)
newtonsmethod(f,g,1,5)

1 inital guess, 5 steps

%}