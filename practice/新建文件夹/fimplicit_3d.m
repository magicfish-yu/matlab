x=-10:0.5:10;
y=-10:0.5:10;
[xx yy]=meshgrid(x,y);
z=xx.^2+yy.^2;
surf(xx,yy,z);
shading interp;
hold
f=@(x,y) x.^2+y.^2-2*x;
fimplicit(f,[-10 10 -10 10])
% set(gca,'ZTick',[0 10]);
% set(gca,'ZTickLabel',0:1:10);
% axis([-10,10,-10,10,0,20])
axis equal
