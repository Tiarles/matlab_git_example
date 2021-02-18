fun = @(x)x(1)*x(4)*(x(1)+x(2)+x(3)) + x(3);

nonlcon = @supernonlcon;

A = [];
b = [];
Aeq = [];
beq = [];

lb = [1,1,1,1];
ub = [5,5,5,5];

x0 = [1, 5, 5, 1];

[x,fval,exitflag,output,lambda,grad,hessian] = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon)

% Result
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% x =1.0000    5.0000    3.6056    1.0000
%
% fval = 13.2111
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%