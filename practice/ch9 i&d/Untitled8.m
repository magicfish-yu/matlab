h=0.002;    x=0:h:2;    
y=4.*x.^3;
s=sum(y(1:end-2)+4.*y(2:end-1)+y(3:end));
s1=h/3.*s