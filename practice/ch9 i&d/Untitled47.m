x0=0:0.00001:2*pi;

y0=sin(x0);
fd=diff(y0)./diff(x0);
plot(x0(1:end-1),fd)