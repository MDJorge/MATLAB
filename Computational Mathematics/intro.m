%Create a matrix
A=[1 2 3; 4 5 6]

%to declare a function
syms x
f(x)=x^2+x+1

f(0)

f(x)*f(x)

f(A)

%part two

syms y z
g(x,y,z) = x+2*y+3*z+x*y*z


%exponents

f(x)=exp(x)-x^2
ezplot(f(x),[-3,3])


%create matrix
A=[1,2,3;4,5,6]
B=[0 1; 1 0; 1 -1]

%get dimensions
size(A)

%make matrices of certain values
zeros(2,3) %makes 2x3 matrix of zeroes

ones(2,3)

2*ones(3,6) %matrix of twos

M=2*ones(3,6) %assign variable name to matrix

M(3,3) %pulls entry M_(3,3) out of M

linspace(3,8,10) % creates linearly spaced list of numbers  starting at a and ending at b, with a total of n intervals

A' %transpose of matrix A (A^t)

A*B %dot product of matrix A and B; AB!=BA


A=[2 1; 0 3]
C=[1 4]

eye(5) %create identity matrix

A^(-1) %inverse matrix of A

sym(A^(-1)) %fractions instead of decimals

[A;C] %combine two matrices

det(A) %find determinant of matrix


