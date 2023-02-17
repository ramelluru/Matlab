% Simmulated Annealing using build in Function
clc;
ObjFun = @ simulated_anneling;
z = [4 5];   
lb =[0 0];
ub =[6 6];
[z,fval] = simulannealbnd(ObjFun,z,lb,ub);
disp("x");
disp(z);
disp("f");
disp(fval);
