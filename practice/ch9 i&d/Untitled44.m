a=[5 0 -2 0 1];
polyint(a,3);
x=-2:0.01:1;
f=polyval(polyint(a,3),x);
plot(x,f)