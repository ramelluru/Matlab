clc
for c=2:13
    for d=2:8
        a=dii(d);
        b=dii(1,c)*1i*(1:1:1);
        datr=a+b;
        gain=dii(d,c);
        disp(datr)
        disp(gain)
        if gain>15
        z0 = 50;
        gamma1 = z2gamma(datr,z0);
        smithplot(gamma1,".",'Color','m');
        hold on;
        elseif (gain>14)&&(gain<15)
        z0 = 50;    
        gamma1 = z2gamma(datr,z0);
        smithplot(gamma1,".",'Color','b');
        hold on;
        else
        z0 = 50;
        gamma1 = z2gamma(datr,z0);
        smithplot(gamma1,".",'Color','r');
        hold on;
        end

    end
end