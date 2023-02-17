clc
for c=1:84
        diff=datar(c,4)-datar(c,3);
        if diff>25
        a=datar(c);
        b=datar(c,2)*1i*(0:1:1);
        datr=a+b;
        disp(datr);
        z0 = 50;
        gamma1 = z2gamma(datr,z0);
        smithplot(gamma1,".",'Color','g');
        hold on;
        else
        a=datar(c);
        b=datar(c,2)*1i*(0:1:1);
        datr=a+b;
        disp(datr);
        z0 = 50;
        gamma1 = z2gamma(datr,z0);
        smithplot(gamma1,".",'Color','r');
        hold on;

        end
end