clc;
clear;
close all;
%% load obs
obs = load('obsdataastar.txt');
numofobs = length(obs(:,1));
%% set up color map for display 
cmap = [1 1 1; ...% 1 - white - 空地
        0 0 0; ...% 2 - black - 障碍 
        1 0 0; ...% 3 - red - 已搜索过的地方
        0 0 1; ...% 4 - blue - 下次搜索备选中心 
        0 1 0; ...% 5 - green - 起始点
        1 1 0];...% 6 - yellow -  到目标点的路径
colormap(cmap); 
map = zeros(25); 
% 设置障碍
for j=1:numofobs
    xobs(j) = obs(j,1);
    yobs(j) = obs(j,2);
    map(xobs(j),yobs(j)) = 2;
end
map(1,25) = 5; % 起始点
map(25,1) = 6; % 目标点
image(1.5,1.5,map);
%grid on;
axis image;
%% 建立地图
nrows = 25;
ncols = 25;
start_node = sub2ind(size(map), 1, 25); 
dest_node = sub2ind(size(map), 25, 1); 
% 距离数组初始化
distanceFromStart = Inf(nrows,ncols); 
distanceFromStart(start_node) = 0; 
%定义启发函数
[X, Y] = meshgrid (1:ncols, 1:nrows);
H = abs(Y - 4) + abs(X - 8);
f = Inf(nrows,ncols); 
f(start_node) = H(start_node);
% 对于每个网格单元，这个数组保存其父节点的索引。 
parent = zeros(nrows,ncols); 
% 主循环
t0=clock;
while true 
 % 画出现状图
 map(start_node) = 5; 
 map(dest_node) = 6; 
 image(1.5, 1.5, map); 
 %grid on; 
 axis image; 
 drawnow; 
  [~, current] = min(f(:)); %返回当前fn最小值的索引。
  [min_dist, ~] = min(distanceFromStart(:)); %返回当前距离数组的最小值。
  if ((current == dest_node) || isinf(min_dist)) %搜索到目标点或者全部搜索完，结束循环。
       break; 
  end; 

 map(current) = 3; %将当前颜色标为红色。
f(current) = Inf;  %当前区域在距离数组中设置为无穷，表示已搜索。
 [i, j] = ind2sub(size(distanceFromStart), current); %返回当前位置的坐标
neighbor = [i-1,j;... 
            i+1,j;... 
            i,j+1;... 
            i,j-1] %确定当前位置的上下左右区域。
outRangetest = (neighbor(:,1)<1) + (neighbor(:,1)>nrows) +...
                   (neighbor(:,2)<1) + (neighbor(:,2)>ncols ) %判断下一次搜索的区域是否超出限制。
locate = find(outRangetest>0); %返回超限点的行数。
neighbor(locate,:)=[] %在下一次搜索区域里去掉超限点。
neighborIndex = sub2ind(size(map),neighbor(:,1),neighbor(:,2)) %返回下次搜索区域的索引号。
for i=1:length(neighborIndex) 
if (map(neighborIndex(i))~=2) && (map(neighborIndex(i))~=3 && map(neighborIndex(i))~= 5) 
    map(neighborIndex(i)) = 4; %如果下次搜索的点不是障碍，不是起点，没有搜索过就标为蓝色。
  if distanceFromStart(neighborIndex(i))> min_dist + 1      distanceFromStart(neighborIndex(i)) = min_dist+1; 
        parent(neighborIndex(i)) = current; %如果在距离数组里，。
        f(neighborIndex(i))=H(neighborIndex(i));
  end 
 end 
end 
end
TimeCost=etime(clock,t0)
%%
if (isinf(distanceFromStart(dest_node))) 
    route = [];
else 
    %提取路线坐标
   route = [dest_node]; 
      while (parent(route(1)) ~= 0) 
              route = [parent(route(1)), route]; 
       end 
  % 动态显示出路线     
        for k = 2:length(route) - 1 
          map(route(k)) = 7; 
                pause(0.1); 
                image(1.5, 1.5, map); 
              grid on; 
              axis image; 
              end 
end
axis off; 