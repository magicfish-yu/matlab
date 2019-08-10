clc;
clear;
close all;
%% load obs
obs = load('obsdata.txt');
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
grid on;
axis image;
%% 
nrows = 25; 
ncols = 25; 
start_node = sub2ind(size(map), 1, 25); 
dest_node = sub2ind(size(map), 25, 1); 
% Initialize distance array 
distanceFromStart = Inf(nrows,ncols); 
distanceFromStart(start_node) = 0; 
% For each grid cell this array holds the index of its parent 
parent = zeros(nrows,ncols); 
t0=clock;
% Main Loop 
while true 
 % Draw current map 
 map(start_node) = 5; 
 map(dest_node) = 6; 
 image(1.5, 1.5, map); 
 grid on; 
 axis image; 
 drawnow; 
  % Find the node with the minimum distance 
 [min_dist, current] = min(distanceFromStart(:)); 
  if ((current == dest_node) || isinf(min_dist)) 
       break; 
  end; 

 map(current) = 3; 
 distanceFromStart(current) = Inf; 
 [i, j] = ind2sub(size(distanceFromStart), current);
 neighbor = [i-1,j;... 
            i+1,j;... 
            i,j+1;... 
            i,j-1] 
outRangetest = (neighbor(:,1)<1) + (neighbor(:,1)>nrows) +...
                   (neighbor(:,2)<1) + (neighbor(:,2)>ncols ) 
locate = find(outRangetest>0); 
neighbor(locate,:)=[] 
neighborIndex = sub2ind(size(map),neighbor(:,1),neighbor(:,2)) 
for i=1:length(neighborIndex) 
if (map(neighborIndex(i))~=2) && (map(neighborIndex(i))~=3 && map(neighborIndex(i))~= 5) 
    map(neighborIndex(i)) = 4; 
  if distanceFromStart(neighborIndex(i))> min_dist + 1      distanceFromStart(neighborIndex(i)) = min_dist+1; 
        parent(neighborIndex(i)) = current; 
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