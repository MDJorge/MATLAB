% Given list of food costs and shopping constraints, minimize amount spent
c = [.49;.5;.44;.22;.70;.49];
b = [0;0;0;0;0;0;-300;-120;-3900;4100];

I=eye(6);

B = [-20,-9,-20,-82,0,-30; -25,-2,-1.6,-14,-31,-36;-590,-160,-85,-400,-165,-450;590,160,85,400,165,450];

A = [-I;B]

xmin=linprog(c,A,b)
xmax=linprog(-c,A,b)

costmin=c'*xmin

costmax=c'*xmax