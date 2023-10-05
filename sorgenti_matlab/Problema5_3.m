disp("problema 5.3");
ub = [];
A=[];
b=[];
lb = [0,0,0,0,0,0,0,0,0,0,0];
Aeq=[-2,-2,4,-4,-6,-2,-2,-2,-2,-2,0;2,-2,-2,5,8,3,4,5,6,8,1];
beq=[1;1];
c = [1,1,1,3,5,2,3,4,5,7,1];
x=linprog(c,A,b,Aeq,beq,lb,ub);
f=c*x;
disp("l'ottimo del problema al primo step è");
disp(x);
% secondo step
c1 = [0.17,0.2,0.23,0.27,0.32,0.38,0.44,0.52,0.61,0.72,0.85];
Aeq1=[Aeq;c];
beq1=[beq;f];
x1=linprog(c1,A,b,Aeq1,beq1,lb,ub);
f1 =c1 * x1;
disp("l'ottimo del problema al secondo step è")
disp(f1);