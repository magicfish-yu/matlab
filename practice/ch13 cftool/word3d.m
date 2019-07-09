function [X,Y,Z] = word3d(str,scale)
%? ?绘制3D文字
%? ?word3d(str,scale) 绘制3D文字，输入参数str为字符串变量，用来指定文字内容。
%? ?? ?? ?? ?? ?? ?? ?scale为标量，用来指定字体高度。
%? ?[X,Y,Z] = word3d(str,scale) 返回3D文字对应的3维网格坐标数据X,Y和Z。
%
%? ?CopyRight:xiezhh（谢中华）
%? ?2011.8.2
%? ?Example：
%? ? word3d('我爱你，和平！',10);

% 判断输入参数个数和类型是否符合要求
if nargin == 0
 str = 'MATLAB技术论坛(谢中华)';
 scale = 1;
elseif nargin == 1
 scale = 1;
 if ~ischar(str)
 error('输入参数错误：第一个输入参数应为字符串。');
 end
elseif nargin == 2
 if ~ischar(str) || ~isscalar(scale)
 error('输入参数错误：第一个输入参数应为字符串，第二个输入参数应为标量。');
 end
end

% 创建隐藏的图形窗口，写入文字并保存为图片
new_fig = figure('visible','off');
word_handle = text(0.01,0.5,str,...
 'fontsize',20,...
 'fontweight','bold',...
 'fontunits','normalized');
axis off
set(gcf,'PaperPosition',[0 0 8 8],'PaperUnits','normalized')
saveas(gca,[pwd '\word.png']);
delete(new_fig);

% 读取带有文字的图片，把文字部分切割出来
I = imread([pwd '\word.png']);
BW = ~im2bw(I,0.6);
[x,y] = find(BW);
if isempty(x)
 warning('您可能没有输入文字吧。');
 return;
end
BW = BW(min(x):max(x),min(y):max(y));
BW = flipud(BW);
[m,n] = size(BW);
BW0 = zeros(m+2,n+2);
BW0(2:m+1,2:n+1) = BW;
[m,n] = size(BW0);

% 绘图或返回网格数据
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