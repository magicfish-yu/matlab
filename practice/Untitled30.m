[x,y]=meshgrid(-3:.001:3,-3:.001:3);
z=x.^2+x.*y+y.^2;
surf(x,y,z);
box on;
set(gca,'FontSize',16); zlabel('z');
xlim([-4 4]);   xlabel('x');    ylim([-4 4]);   ylabel('y');
imagesc(z); axis square
colorbar
% colormap(hot)
% colormap(cool)
% colormap(gray)
% colormap(lines)
colormap(prism)
hold
[x,y]=meshgrid(-4:.001:4,-4:.001:4);
z=x.^2+x.*y+y.^2;
surf(x,y,z);
box on;
set(gca,'FontSize',16); zlabel('z');
xlim([-4 4]);   xlabel('x');    ylim([-4 4]);   ylabel('y');
imagesc(z); axis square
colorbar
% colormap(hot)
% colormap(cool)
% colormap(gray)
% colormap(lines)
colormap(prism)
