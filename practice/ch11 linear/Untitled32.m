f1=@(x,y,z)x+y+z
fimplicit3(f1,'FaceColor','r')
% colormap(lines)
hold
f2=@(x,y,z)x-y+z
fimplicit3(f2,'FaceColor','b')
f3=@(x,y,z)x+3*z
fimplicit3(f3,'FaceColor','k')