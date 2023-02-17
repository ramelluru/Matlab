clc;
A=[1 1 1;3 2 1;-2 3 -2];
[L,U,P] = lu(A)
if L*U==A
disp('We got A');
else
disp('We got permuted matrix of A');
end
[Lnew,Unew] = lu(A)
if Lnew*Unew==A
disp('We got A matrix');
else
disp('Its not our A');
end
