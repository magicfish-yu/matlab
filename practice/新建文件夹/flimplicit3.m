f=@(x,y,z) z-(x.^2+y.^2).^0.5;
interval=[-5 5 -5 5 -5 5];
fimplicit3(f,interval,'EdgeColor','none','FaceAlpha',0.5)
hold
f=@(x,y) x.^2+y.^2-2*x;
fimplicit(f,[-10 10 -10 10])