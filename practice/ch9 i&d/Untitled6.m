h=0.001;
x=0:h:2;
midpoint=(x(1:end-1)+x(2:end))./2;
y=4.*midpoint.^3;
s=sum(h.*y)