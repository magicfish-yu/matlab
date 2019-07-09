x0=pi/2;    x1=x0+0.000000001;
y0=sin(x0); y1=sin(x1);
y=[y0 y1]; x=[x0 x1];
fd=diff(y)./diff(x)