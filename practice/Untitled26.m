x=0:pi/10:pi; y=sin(x);
e=std(y)*ones(size(x));
errorbar(x,y,e)