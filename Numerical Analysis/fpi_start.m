%g=@(x) cos(x)
%
%x(1)=.13;
%for i=1:10
%        x(i+1)=g(x(i));
%end
%x'

clear x
syms y

g=@(x) cos(x)*cos(x)

format long
x(1)=0;


n = 1500;

for i=1:n
        x(i+1)=g(x(i));
end
x'

a = diff(g(y))

abs(vpa(subs(a,y,x(n))))