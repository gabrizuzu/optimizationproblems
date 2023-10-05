disp("problema 5.2");
A=[];
b=[];
ub=[];
lb=[0,0,0,0,0,0];

Aeq=[2,1,1,0,0,0;2,3,0,1,0,0;4,3,0,0,1,0;-1,-2,0,0,0,1];
beq=[120;210;270;-60];
c = [-8,-12,0,0,0,0];
x=linprog(c,A,b,Aeq,beq,lb,ub);
f=c*x;
disp("l'ottimo del problema al primo step è");
disp(x);
% secondo step
c1 = [-14,-10,0,0,0,0];
Aeq1=[Aeq;c];
beq1=[beq;f];
x1=linprog(c1,A,b,Aeq1,beq1,lb,ub);
f1 =c1 * x1;
disp("l'ottimo del problema al secondo step è")
disp(f1);


