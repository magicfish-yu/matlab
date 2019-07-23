function [ map,state ] = manualLazi(map,side)
state=1;
p=ginput(1);
x=floor(p(1)+0.5);y=floor(p(2)+0.5);
map.array(x,y)=side;
end