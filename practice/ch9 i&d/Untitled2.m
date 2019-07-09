x=0:0.0001:2*pi;
y=sin(x);
yd=diff(y)./diff(x);
plot(x,y,'r',x(1:end-1),yd,'b')