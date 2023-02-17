  for i=1:5
         b=book(i,1);
         disp(b);
         d="Parameters:";
         n = length(d); 
         %if strncmp(b, d, 3)
         if contains(b, d)
         v=book(i+3,7);
         disp(v);
        end
   end
%end
