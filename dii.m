clc
for c=2:13
    for d=2:8
        a=dii(d);
        b=dii(1,c)*1i*(1:1:1);
        datr=a+b;
        gain=dii(c,d);
        disp(datr)
        disp(gain)
    end
end