a=[20 -7 5 10]; b=[4 12 -3];
x=-2:0.01:1; xd=-2:0.01:0.99;
f=conv(a,b);

d=polyder(f);
fd=polyval(d,x);
plot(x,f,'LineWidth',2);
hold
plot(x,fd)