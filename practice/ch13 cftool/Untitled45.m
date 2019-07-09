x =[-1.2 -0.5 0.3 0.9 1.8 2.6 3.0 3.5];
y =[-15.6 -8.5 2.2 4.5 6.6 8.2 8.9 10.0];
for i=1:6
    fit=polyfit(x,y,i);
    xfit=x(1):0.01:x(end);
    yfit=polyval(fit,xfit);
    subplot(2,3,i);
    plot(x,y,'ro',xfit,yfit)
end