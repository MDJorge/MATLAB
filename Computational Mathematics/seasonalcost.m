% A business needs to produce a certain quantity of goods every season.
% Optimize costs by determing a production plan that utilizes permanent and
% temporary workers, and that determines whether it is more cost efficent
% to produce the goods in a given season or pay for storage space (and how
% much)
lb = transpose( [0,0,0,0,0,0,0,0]);
ub = transpose( [300,300,300,300,100,100,100,100] );
Aeq = [1,1,1,1,1,1,1,1];
beq = [1000];
c = transpose( [26,24,22,20,36,34,32,30] );
A = [1,0,0,0,1,0,0,0; 1,1,0,0,1,1,0,0; 1,1,1,0,1,1,1,0];
b = transpose([100,300,700]);
t = linprog(c,A,b,Aeq,beq,lb,ub)