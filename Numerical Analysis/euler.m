clear
f=@(t,y) t^2 - y^2
t(1) = 0;
w(1) = 1;
h = 0.1;
for i=1:17
    t(i+1) = t(i) + h;
    w(i+1) = w(i) + f(t(i), w(i))*h;
end
[t',w']