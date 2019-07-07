% Solving Second-Order Linear Differential Equations
function [ y ] = solde(p,q,r,t0,x0,x0p,tn,n)
    syms u v w;
    f(u,v,w) = w;
    g(u,v,w) = r(u) - p(u)*w - q(u)*v;
    y = eulersmethod2(f,g,t0,x0,x0p,tn,n);
end