%a=[30,40,50];
%for j=1:3
   for i=1:10
         %a1=a(j);
         %b1=a(j)*1i*(1:1:1);
         %dtr=a1+b1;
         %disp(a(j));
         b=book(i,2);
         disp(b);
         if  b=="Mayfield_:IIP3_dBm_-22in_7125M"
         IIP3=str2double(book(i,7));
         OIP3=str2double(book(i+1,7));
         disp('IIP3:');
         disp(IIP3);
         disp('OIP3:'); ...
         disp(OIP3);
         gain=OIP3-IIP3;
         disp('gain');
         disp(gain);
        end
   end
%end
