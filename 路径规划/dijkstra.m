clc;
clear;
close all;
%% load obs
obs = load('obsdata.txt');
numofobs = length(obs(:,1));
%% set up color map for display 
cmap = [1 1 1; ...% 1 - white - �յ�
        0 0 0; ...% 2 - black - �ϰ� 
        1 0 0; ...% 3 - red - ���������ĵط�
        0 0 1; ...% 4 - blue - �´�������ѡ���� 
        0 1 0; ...% 5 - green - ��ʼ��
        1 1 0];...% 6 - yellow -  ��Ŀ����·�� 
colormap(cmap); 
map = zeros(25); 
% �����ϰ�
for j=1:numofobs
    xobs(j) = obs(j,1);
    yobs(j) = obs(j,2);
    map(xobs(j),yobs(j)) = 2;
end
map(1,25) = 5; % ��ʼ��
map(25,1) = 6; % Ŀ���
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
    %��ȡ·������
   route = [dest_node]; 
      while (parent(route(1)) ~= 0) 
              route = [parent(route(1)), route]; 
       end 
  % ��̬��ʾ��·��     
        for k = 2:length(route) - 1 
          map(route(k)) = 7; 
                pause(0.1); 
                image(1.5, 1.5, map); 
              grid on; 
              axis image; 
              end 
end
axis off;  