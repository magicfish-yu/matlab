clc;
clear;
close all;
%% load obs
obs = load('obsdataastar.txt');
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
%grid on;
axis image;
%% ������ͼ
nrows = 25;
ncols = 25;
start_node = sub2ind(size(map), 1, 25); 
dest_node = sub2ind(size(map), 25, 1); 
% ���������ʼ��
distanceFromStart = Inf(nrows,ncols); 
distanceFromStart(start_node) = 0; 
%������������
[X, Y] = meshgrid (1:ncols, 1:nrows);
H = abs(Y - 4) + abs(X - 8);
f = Inf(nrows,ncols); 
f(start_node) = H(start_node);
% ����ÿ������Ԫ��������鱣���丸�ڵ�������� 
parent = zeros(nrows,ncols); 
% ��ѭ��
t0=clock;
while true 
 % ������״ͼ
 map(start_node) = 5; 
 map(dest_node) = 6; 
 image(1.5, 1.5, map); 
 %grid on; 
 axis image; 
 drawnow; 
  [~, current] = min(f(:)); %���ص�ǰfn��Сֵ��������
  [min_dist, ~] = min(distanceFromStart(:)); %���ص�ǰ�����������Сֵ��
  if ((current == dest_node) || isinf(min_dist)) %������Ŀ������ȫ�������꣬����ѭ����
       break; 
  end; 

 map(current) = 3; %����ǰ��ɫ��Ϊ��ɫ��
f(current) = Inf;  %��ǰ�����ھ�������������Ϊ�����ʾ��������
 [i, j] = ind2sub(size(distanceFromStart), current); %���ص�ǰλ�õ�����
neighbor = [i-1,j;... 
            i+1,j;... 
            i,j+1;... 
            i,j-1] %ȷ����ǰλ�õ�������������
outRangetest = (neighbor(:,1)<1) + (neighbor(:,1)>nrows) +...
                   (neighbor(:,2)<1) + (neighbor(:,2)>ncols ) %�ж���һ�������������Ƿ񳬳����ơ�
locate = find(outRangetest>0); %���س��޵��������
neighbor(locate,:)=[] %����һ������������ȥ�����޵㡣
neighborIndex = sub2ind(size(map),neighbor(:,1),neighbor(:,2)) %�����´���������������š�
for i=1:length(neighborIndex) 
if (map(neighborIndex(i))~=2) && (map(neighborIndex(i))~=3 && map(neighborIndex(i))~= 5) 
    map(neighborIndex(i)) = 4; %����´������ĵ㲻���ϰ���������㣬û���������ͱ�Ϊ��ɫ��
  if distanceFromStart(neighborIndex(i))> min_dist + 1      distanceFromStart(neighborIndex(i)) = min_dist+1; 
        parent(neighborIndex(i)) = current; %����ھ����������
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