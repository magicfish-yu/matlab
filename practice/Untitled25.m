t=0:0.01:10;
f=sin(pi.*t.^2/4);
hold
plot(t,f);
x=linspace(0,10,50);
y=sin(pi.*x.^2/4);
stem(x,y);