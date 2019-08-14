clc
clear

f1=@(x,y,z) x.^0.5+y.^0.5+z.^0.5-8;
f2=@(x,z) z-1+x.^2;
interval=[-50 50 -50 50 -50 50];
fimplicit3(f1,interval)
axis equal
hold
% fimplicit3(f1)

