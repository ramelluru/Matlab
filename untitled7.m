clc
for c=1:7
        gain=di(c,4)-di(c,3);
        if gain>15
        a=di(c);
        b=di(c,2)*1i*(1:1:1);
        datr=a+b;
        %disp(datr);
        z0 = 50;
        gamma1 = z2gamma(datr,z0);
        smithplot(gamma1,".",'Color','g');
        hold on;
        elseif (gain>14) && (gain<15)
        a=di(c);
        b=di(c,2)*1i*(1:1:1);
        datr=a+b;
        %disp(datr);
        z0 = 50;
        gamma1 = z2gamma(datr,z0);
        smithplot(gamma1,".",'Color','y');
        hold on;    
        else
        a=di(c);
        b=di(c,2)*1i*(1:1:1);
        datr=a+b;
        %disp(datr);
        z0 = 50;
        gamma1 = z2gamma(datr,z0);
        smithplot(gamma1,".",'Color','r');
        hold on;

        end
end