
figure;
worldmap([15 55],[70 140])%γ�Ⱦ��ȷ�Χ��ʾ
%��ʾʸ������
sh1 = shaperead('bou2_4p', 'UseGeoCoords', true);
geoshow(sh1, 'FaceColor', [0.5 1.0 0.5]);

setm(gca,'MLineLocation',5)%���þ��ȼ��Ϊ5
setm(gca,'PLineLocation',10)%���þ��ȼ��Ϊ10
setm(gca,'MLabelLocation',5)%���þ��ȱ�ǩΪÿ��5��
setm(gca,'PLabelLocation',10)%����γ�ȱ�ǩΪÿ��10��
title('�й���ͼ','FontSize',14,'FontWeight','Bold');
