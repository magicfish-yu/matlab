color=colormap(flag); hold on;
for i=1:6
    x=0:10^(-i):2*pi;
    y=exp(-x).*sin(x.^2/2);
    yd=diff(y)./diff(x);
    plot(x(1:end-1),yd,'Color',color(i,:));
end
hold off
