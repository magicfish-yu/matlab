function createfigure(xdata1, zdata1, cdata1)
%CREATEFIGURE(xdata1, zdata1, cdata1)
%  XDATA1:  surface xdata
%  ZDATA1:  surface zdata
%  CDATA1:  surface cdata

%  由 MATLAB 于 25-Jul-2019 07:46:25 自动生成

% 创建 figure
figure1 = figure('Color',[0 0 0]);
colormap(hot);

% 创建 axes
axes1 = axes('Parent',figure1);
axis off
hold(axes1,'on');

% 创建 surf
surf(xdata1,xdata1,zdata1,cdata1,'Parent',axes1);

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(axes1,[-1 1]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes1,[-1 1]);
% 取消以下行的注释以保留坐标区的 Z 范围
% zlim(axes1,[-1 1]);
view(axes1,[232.5 30]);
grid(axes1,'on');
% 设置其余坐标区属性
set(axes1,'CLim',[-40.35 26.9]);
% uicontrol 当前不支持代码生成，请输入正确输入语法对应的 'doc uicontrol'
% 可以使用 GUIDE 来为 uicontrol 生成代码。有关详细信息，请输入 'doc guide'
% uicontrol(...);

% uicontrol 当前不支持代码生成，请输入正确输入语法对应的 'doc uicontrol'
% 可以使用 GUIDE 来为 uicontrol 生成代码。有关详细信息，请输入 'doc guide'
% uicontrol(...);

% uicontrol 当前不支持代码生成，请输入正确输入语法对应的 'doc uicontrol'
% 可以使用 GUIDE 来为 uicontrol 生成代码。有关详细信息，请输入 'doc guide'
% uicontrol(...);

