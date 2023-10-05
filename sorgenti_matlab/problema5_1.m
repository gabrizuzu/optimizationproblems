disp("problema 5.1")
A=[];
b=[];
lb=[0,0,0,0];
ub=[];
Aeq =[-2,1,1,-1;1,-2,1,-1];
beq =[3;3];
c=[1,-4,14,-14];
x = linprog(c,A,b,Aeq,beq,lb,ub);
f=c*x;
disp("la soluzione ottima al primo step è");
disp(x);
Aeq1 = [Aeq;c];
beq1 = [beq;f];
c1 = [-1,-1,-1,-1];
x1 = linprog(c1,A,b,Aeq1,beq1,lb,ub);
disp("al secondo step il problema diventa Unbounded");
