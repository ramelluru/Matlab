clc;
syms x
%% Getting inputs from the User
f=input("Enter the Function that needs to be minimized using Secant Method in terms of x");
E=input("Enter The error");
t0=input("Enter the initial Step size");
df=diff(f,x);
disp(df);
n=100;
%% Finding the Interval limits to start the process and printing the limits
for i=0:n
into=2*i*t0;
new =subs(df,x,into);
if(new>0)
break
end
end
into1=into;
into2=into-2*t0;
disp(into1);
disp(into2);
%% Applying the method and Finding the Results
for j=2:100
new2=vpa((into2-(((subs(df,x,into2))*(into1-into2))/(subs(df,x,into1)-(subs(df,x,into2))))));
disp("new2");
disp(new2);
s=vpa(abs(subs(df,x,new2)));
disp("s");
disp(s);
if(s<E)% if the function value is less than error specified
disp("Minimum Value of X")
display(new2);
disp("Mimimal Function Value");
disp(s);
disp("Total Iterations");
disp(j);
break
end
into2=into1;
into1=new2;
end
