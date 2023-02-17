clc;
A=[1 3 1 5;2 1 0 3;4 2 2 1;-3 1 3 2];
b=adjoint(A);
invr=b/det(A);
invr
co=inv(A);
co
if invr~=co
disp('inverse is proved');
else
disp('inverse if failed');
end
