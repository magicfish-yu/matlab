x=-3.5:0.09:3.5; y=-3.5:0.09:3.5;
[X Y]=meshgrid(x,y);
Z=X.*exp(-X.^2-Y.^2);
% subplot(2,2,1); mesh(X,Y,Z);    axis square;colorbar
% subplot(2,2,2); surf(X,Y,Z);    axis square;colorbar
% subplot(2,2,3); contour(X,Y,Z); axis square;colorbar
% subplot(2,2,4); 
[C,h]=contourf(Z,[-.45:.05:.45]);  axis square;
clabel(C,h);
colorbar
colormap(jet)