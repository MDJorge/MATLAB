% finding roots of polynomials
syms x
f(x)=x^2-5*x+6; %WRITE IN DESCENDING POWERS, MUST BE DONE FOR P
p=[1,-5,6] %coefficients of f(x)
roots(p)

g(x)=x^4+1
q=[1,0,0,0,1]
roots(q)

h(x)=3*(x-2)^3*(x^2+2)^4
expand(h(x))
r=[3 -18 60 -168 360 -624 960 -1152 1200 -1056 576 -384]
roots(r)