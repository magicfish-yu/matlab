
figure;
worldmap([15 55],[70 140])%纬度经度范围显示
%显示矢量数据
sh1 = shaperead('bou2_4p', 'UseGeoCoords', true);
geoshow(sh1, 'FaceColor', [0.5 1.0 0.5]);

setm(gca,'MLineLocation',5)%设置经度间隔为5
setm(gca,'PLineLocation',10)%设置经度间隔为10
setm(gca,'MLabelLocation',5)%设置经度标签为每隔5度
setm(gca,'PLabelLocation',10)%设置纬度标签为每隔10度
title('中国地图','FontSize',14,'FontWeight','Bold');
