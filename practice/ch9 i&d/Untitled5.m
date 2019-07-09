x=-2:0.001:2;
y=x.^3;
fd=diff(y)./diff(x);
fdd=diff(fd)./diff(x(1:end-1));
fddd=diff(fdd)./diff(x(1:end-2));
hold on  
plot(x(1:end-1),fd,'r',x(1:end-2),fdd,'b',x(1:end-3),fddd,'k')