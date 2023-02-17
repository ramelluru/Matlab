clc
for c=1:12
    for d=1:7
        a=datareal(d);
        b=datareal(c,2)*1i*(0:1:1);
        datr=a+b;
        disp(datr);
        z0 = 50;
        gamma1 = z2gamma(datr,z0);
        smithplot(gamma1,".");
        hold on;
        legend();%'real=1,imaginary=5' ,'real=2,imaginary=10', 'real=3,imaginary=15' ,'real=4,imaginary=20' , ...
        %'real=5,imaginary=25' ,'real=6,imaginary=30', ...
        %'real=7,imaginary=35', 'real=8,imaginary=40', 'real=9,imaginary=45' ,'real=10,imaginary=50' );
    end
end