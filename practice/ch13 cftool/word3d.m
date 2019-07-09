function [X,Y,Z] = word3d(str,scale)
%? ?����3D����
%? ?word3d(str,scale) ����3D���֣��������strΪ�ַ�������������ָ���������ݡ�
%? ?? ?? ?? ?? ?? ?? ?scaleΪ����������ָ������߶ȡ�
%? ?[X,Y,Z] = word3d(str,scale) ����3D���ֶ�Ӧ��3ά������������X,Y��Z��
%
%? ?CopyRight:xiezhh��л�л���
%? ?2011.8.2
%? ?Example��
%? ? word3d('�Ұ��㣬��ƽ��',10);

% �ж�������������������Ƿ����Ҫ��
if nargin == 0
 str = 'MATLAB������̳(л�л�)';
 scale = 1;
elseif nargin == 1
 scale = 1;
 if ~ischar(str)
 error('����������󣺵�һ���������ӦΪ�ַ�����');
 end
elseif nargin == 2
 if ~ischar(str) || ~isscalar(scale)
 error('����������󣺵�һ���������ӦΪ�ַ������ڶ����������ӦΪ������');
 end
end

% �������ص�ͼ�δ��ڣ�д�����ֲ�����ΪͼƬ
new_fig = figure('visible','off');
word_handle = text(0.01,0.5,str,...
 'fontsize',20,...
 'fontweight','bold',...
 'fontunits','normalized');
axis off
set(gcf,'PaperPosition',[0 0 8 8],'PaperUnits','normalized')
saveas(gca,[pwd '\word.png']);
delete(new_fig);

% ��ȡ�������ֵ�ͼƬ�������ֲ����и����
I = imread([pwd '\word.png']);
BW = ~im2bw(I,0.6);
[x,y] = find(BW);
if isempty(x)
 warning('������û���������ְɡ�');
 return;
end
BW = BW(min(x):max(x),min(y):max(y));
BW = flipud(BW);
[m,n] = size(BW);
BW0 = zeros(m+2,n+2);
BW0(2:m+1,2:n+1) = BW;
[m,n] = size(BW0);

% ��ͼ�򷵻���������
if nargout > 0
 [X,Y] = meshgrid(1:n,1:m);
 Z = scale*BW0;
else
 surf(1:n,1:m,scale*BW0);
 colormap(hot);
 shading interp;
 axis equal;
 axis off;
end