function x=naivegauss(a, b, eps)
    [n,n] = size(a)

%{
example code to run

A=[2 -3;5 -6]
B=[2;8]
naivegauss(A,B,0.005)
%}
    
%{
for j = 1 : n-1
        eliminate column j
end

for j = 1: n-1
    for i = j+1 : n
        eliminate entry a(i,j)
    end
end
%}

for j = 1 : n - 1
    if abs(a(j,j))<eps; error('zero pivot encountered'); 
    end
    for i = j + 1 : n
        mult = a(i,j)/a(j,j);
        for k = j+1 : n
            a(i,k) = a(i,k) - mult*a(j,k);
        end
        b(i)= b(i) - mult*b(j)
    end
end

for i = n : -1: 1
    for j = i+1:n
        b(i) = b(i) - a(i,j)*x(j);
    end
    x(i)=b(i)/a(i,i);
end
