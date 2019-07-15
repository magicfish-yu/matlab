ax = gca;
colormap(lines(128));
peaks(4096);
axis('off',[-3,3,-3,3,-4,6])
ax.Position = [0,0,1,1];
ax.Children.Clipping = 'off';