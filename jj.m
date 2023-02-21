   for i=1:10
         b=book(i,3);
         disp(b);
         if b=="IIP3_dBm_-22in_7125M"
            m=book(i-1,1);
            num = zeros(1, 2);
            [numbr, matches] = sscanf(m, "Parameters: R1=%d X=%d");
            if matches == 1
            num(1) = numbr(1);
            elseif matches == 2
            num(1:2) = numbr(1:2);
            end
            IIP3=str2double(book(i,7));
            disp(IIP3);
            OIP3=str2double(book(i+1,7));
            disp(OIP3);
            gain=OIP3-IIP3;
            disp(gain);
            im=num(2)*1i*(1:1:1);
            datr=num(1)+im;
            if gain>15
            z0 = 50;
            gamma1 = z2gamma(datr,z0);
            smithplot(gamma1,".",'Color','g');
            hold on;
            elseif (gain>14)&&(gain<15)
            z0 = 50;    
            gamma1 = z2gamma(datr,z0);
            smithplot(gamma1,".",'Color','y');
            hold on;
            else
            z0 = 50;
            gamma1 = z2gamma(datr,z0);
            smithplot(gamma1,".",'Color','r');
            hold on;
            end
        end
   end
