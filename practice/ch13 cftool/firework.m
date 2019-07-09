function firework
% �̻��̻������
% CopyRight��xiezhh(л�л�)
% 2011.6.25

OldHandle = findobj( 'Type', 'figure', 'Tag', 'FireWork' ) ;
if ishandle(OldHandle)
close(OldHandle) ;
end
% ͼ�δ��ڳ�ʼ��
fig = figure('units','normalized','position',[0.1 0.1 0.8 0.8],...
'menubar','none','name','dssd',...
'numbertitle','off','color',[0 0 0],'tag','FireWork');
% �̻�ը��ǰ�ĳ�ʼλ��
h0 = line(0,0,0,'marker','.',...
 'markersize',18,...
 'MarkerEdgeColor',[1 1 1],...
'MarkerFaceColor',[1 1 1],...
'EraseMode' , 'xor',...
 'color',[0 0 0]);
% ��������ϵ��ʾ����
axis equal
axis([-50 50 -50 50 0 100])
axis off
view(-42,22)

% ���ò���
rate = 1:-0.01:0;% ��ɫ˥����
v0 = 45;% �̻�ͷ��ʼ�ٶ�
g = -9.8;% �������ٶ�
usedtime = -v0/g;% �̻�ͷ��ըǰ������ʱ��
zs = v0*usedtime+0.5*g*usedtime^2;%�̻�ͷ��ըǰ�ﵽ����߸߶�

theta = rand(250,1)*2*pi;% �������ٶȵķ�λ��
phi =rand(250,1)*2*pi-pi;% �������ٶȵ�����
age = 20;% ����������
% ������ɫ����
colormat = [1.0 0.5 0.5
  1.0 0.75 0.5
  1.0 1.0 0.5
  0.75 1.0 0.5
  0.5 1.0 0.5
  0.5 1.0 0.75
  0.5 1.0 1.0
  0.5 0.75 1.0
  0.5 0.5 1.0
  0.75 0.5 1.0
  1.0 0.5 1.0
  1.0 0.5 0.75];
% ������������Ӷ�Ӧ����ɫ���
colorid = randsample(12,250,true);
% ���Ӷ�Ӧ����ɫ����
colormat = colormat(colorid,:);
% ������ɫ�뱳��ɫ��ҹɫ���ľ���
colordist = sqrt(sum(colormat.^2,2));
v1 = 20; % ���ӵĳ�ʼ�ٶ�
k = 1; % ��ɫ˥���ʳ�ʼ���

timerA = timer('TimerFcn',@TimerFcnA,...
  'executionmode','fixedspacing','Period',0.001);
start(timerA);
h = getappdata(gcf,'HandleParticle');
timerB = timer('TimerFcn',{@TimerFcnB},...
  'executionmode','fixedspacing','period',0.001);

%--------------------------------------------------------------------------
% ��ʱ���ص��������̻�ͷ��
%--------------------------------------------------------------------------
function TimerFcnA(timerA,event)
ta = get(timerA,'TasksExecuted')*0.1;
if ta <= usedtime
  z = v0*ta+0.5*g*ta^2;
  set(h0,'zdata',z,...
 'MarkerEdgeColor',[1 1 1],...
 'MarkerFaceColor',[1 1 1])
  drawnow
  %pause(0.01)
else
  delete(h0)
  stop(timerA);
  x0 = zeros(2,250);
  y0 = zeros(2,250);
  z0 = zs*ones(2,250);
  h = line(x0,y0,z0,'marker','h',...
 'markersize',12,...
 'MarkerEdgeColor',[1 1 1],...
 'MarkerFaceColor',[1 1 1],...
 'EraseMode' , 'xor',...
 'color',[0 0 0]);
  setappdata(gcf,'HandleParticle',h);
  start(timerB);
end

end
%--------------------------------------------------------------------------
% ��ʱ���ص����������ӣ�
%--------------------------------------------------------------------------
function TimerFcnB(timerB,event)
tb = get(timerB,'TasksExecuted')*0.15;
if age>0 && any(colordist>=0.05)
  colormat = colormat*rate(k);
  colordist = sqrt(sum(colormat.^2,2));
  for i = 1:250
 xi = v1*cos(phi(i))*cos(theta(i))*tb;
 yi = v1*cos(phi(i))*sin(theta(i))*tb;
 zi = zs+v1*sin(phi(i))*tb+0.5*g*tb^2;
 set(h(i),'XData',xi,'YData',yi,'ZData',zi,...
 'MarkerEdgeColor',colormat(i,:),...
 'MarkerFaceColor',colormat(i,:))
  end
  drawnow
  age = age-0.1;
  k = k+1;
else
  stop(timerB);
  delete(h)
end

end
%-------------------
end