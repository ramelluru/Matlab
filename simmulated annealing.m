clc;
syms x1;
syms x2;
f=input("Enter the Function x");
t0=input("Enter the initial Step size");
T=input("Enter the initial temperature");
x1=input("Enter the x1");
x2=input("enter the x2");
solution1=subs(f,x1);
isolution=subs(solution1,x2);
dff=diff(f);
if(T<0)
    for T = 270.0:-0.2:0.0
        disp("Iteration:",i);
        disp(" value of T:",T);
        disp("Value of x1:",x1);
        disp("Value of x2:",x2);
        disp("Previous cost:",isolution);
        %disp(T);
        solution2=subs(dff,x1);
        solution=subs(solution2,x2);
        disp("Current cost:",solution);
        costdiff=solution-isolution;
        disp("cost difference:",costdiff);
        if(costdiff<0)
            isolution=solution;
        else
            factor=exp(-costdiff/((1.38*10^-23)*T));
            if(factor>0)&&(factor<1)
                isolution=solution;
            end
        end
    end
    x1=(x1-6)+(rand(1)*((x(1)+6)-(x(1)-6)));
    x2=(x2-6)+(rand(1)*((x(2)+6-(x(2)-6))));
    T=t0*T;
    i=i-1;
end
