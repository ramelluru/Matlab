clc;
A=[1 3 1 5;2 1 0 3;4 2 2 1;-3 1 3 2];
[nrows ncol] = size(A);
new=nrows;
b = eye(nrows,ncol);
aug =[A b];
%aug=A;
for rew =1:(nrows)
for r= (rew+1):nrows
mult = aug(r,rew)/aug(rew,rew);
aug(r,:) = aug(r,:)-mult*aug(rew,:);
end
end
aug1=aug;
while new>0
rew=new;
while rew>0
r=rew-1;
%for r=(rew-1):1
mult = aug1(r,rew)/aug1(rew,rew);
aug1(r,:) = aug1(r,:)-mult*aug1(rew,:);
rew=rew-1;
end
new=new-1;
end
aug1