f=@(x,y,z) z-x.*y;
fimplicit3(f,'EdgeColor','none','FaceAlpha',0.9)
axis equal
hold
f=@(x,y) x+y-1;
fimplicit(f,'LineWidth',2)
% f=@(x) x-1;
% fimplicit(f,'LineWidth',2)
f=@(z) z;
fimplicit3(f)