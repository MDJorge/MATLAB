% Example of using linear programming for minimizing and maximizing
A=[-1,0;0,-1;-1,1;1,6;4,-1]
b=[0;0;1;15;10]
c=[1;1]

minimum=linprog(c,A,b)

maximum=linprog(-c,A,b)