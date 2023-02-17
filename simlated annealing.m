
close all;
clear all;
syms x1;
syms x2;
f=input("Enter the Function x");
t0=input("Enter the initial Step size");
iT=input("Enter the initial temperature");
x1=input("Enter the x1");
x2=input("enter the x2");
solution1=subs(f,x1);
isolution=subs(solution1,x2);
i=0;
if(iT>0)
    for T = iT:-50:0.0
        disp(" value of T:");
        disp(T);
        disp("Value of x1:");
        disp(x1);
        disp("Value of x2:");
        disp(x2);
        disp("Previous cost:");
        disp(isolution);
        r1=rand(1);
        r2=rand(1);
        x1=(x1-6)+(r1*((x1+6)-(x1-6)));
        x2=(x2-6)+(r2*((x2+6-(x2-6))));
        solution2=vpa(abs(subs(f,x1)));
        solution=vpa(abs(subs(solution2,x2)));
        disp("Current cost:");
        disp(solution);
        costdiff=solution-isolution;
        disp("cost difference:");
        disp(costdiff);
        if(costdiff<0)
            isolution=solution;
        else
            factor=exp(-costdiff/((1.38*10^-23)*T));
            if(factor>0)&&(factor<1)
                isolution=solution;
            end
        end
        i=i+1;
    end
end
disp(i);
