clc;
ObjFcn =@(x)x(1)*x^2-2*x-11;
nvars=1;
Lb=[-2];
Ub=[2];
options=optimoptions("particleswarm","SwarmSize",4,'HybridFcn',@fmincon);
[x,fval]=particleswarm(ObjFcn,nvars,Lb,Ub,options);
disp(x)
disp(fval)