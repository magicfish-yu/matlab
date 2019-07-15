%作者:1604089002
%------------    建立.m文件，并命名为main.m   -----
%------------    main.m    开始    ----------------



% 交互式自控分析图形界面，未操作按钮、滚动条、RLC系统时界面不会变化
% ；但操作后会变化。注意，不要过于频繁的操作（更新四个自控图需要时间）
% 作者：石坚1604089002
% 日期：2016-12-17


clear;                            %清空工作空间
clc;                              %清空命令窗口

% 初始化图像窗口

%定义全局变量

global  HandleAxes2      %第二个实体对象的坐标轴句柄
global  CircuitType      %第二个实体对象的当前类型
global  HandleAxes3      %第三个实体对象的坐标轴句柄
global  HandleAxes4      %第四个实体对象的坐标轴句柄
global  HandleAxes5      %第五个实体对象的坐标轴句柄
CircuitType=1;

global  whell1           %第一个参数滚动条圆点的句柄
global  HandleWhell1     %第一个参数滚动条圆点的坐标轴句柄
global  whell2           %第二个参数滚动条圆点的句柄
global  whell3           %第三个参数滚动条圆点的句柄

global  LX               %第一个参数滚动条直线的x轴坐标(x1,x2)
global  WhellY1          %第一个参数滚动条圆点的y坐标
global  WhellY2          %第二个参数滚动条圆点的y坐标
global  WhellY3          %第三个参数滚动条圆点的y坐标

global  RValue           %电阻的阻值
global  LValue           %电阻的阻值
global  CValue           %电阻的阻值
global  den              %传递函数的分子
global  num              %传递函数的分母
global  G                %传递函数

global  word1            %显示电阻值
global  word2            %显示电感值
global  word3            %显示电容值

RValue=1.5;              %初始电阻数值
LValue=2;                %初始电感数值
CValue=2;                %初始电容数值

num=1.0/(LValue*CValue); %传递函数的分子
den=[1,1.0/(RValue*CValue),1.0/(LValue*CValue)];%传递函数的分母

G=tf(num,den);           %传递函数表达式


%使用对象句柄创建界面
h_f=figure('Position',[200 100 1000 600]); %图形窗口的左下点x坐标、y坐标，图形窗口的长、宽
set(h_f,'Name','交互式自控分析图形界面',...
    'menubar','none','NumberTitle','off')
%名字为'交互式图形界面'，背景为白色，菜单条无，标题序号无

%创建菜单 
hFile=uimenu(h_f,'label','&File');               %创建File菜单(标签为'File')
hAbout=uimenu(h_f,'label','&关于作者');               %创建Help菜单(标签为'Help')

uimenu(hFile,'label','&Exit','separator','on','call',...
    'clear;clc;close all;');                    %建Exit子菜单
    %当Exit被点击后，调用close函数关闭2个窗口('图形窗口示例'和)
uimenu(hAbout,'label','&about','call',...
    ['hAboutFigure=figure(''Position'',[450,250,450,350],''Name'',''about this window'',''Menubar'',''none'',''NumberTitle'',''off'');',...
    'axis([0,300,0,200]);','hold on;','axis (''off'');',...
    'text(10,140,''电气工程1401班'',''fontsize'',32,''color'',''blue'');',...
    'text(0,90,''石坚 1604089002'',''fontsize'',32,''color'',''blue'');']); %建about子菜单
    %当about被点击后，调用figure、text等函数创建一个新窗口，并在其上显示'石坚 1604089002'


subplot(2,3,1);           %图形窗口分割为2行3列个子窗口，选中第1个
bode(G);grid;             %画波特图，加网格

subplot(2,3,2);           %图形窗口分割为2行3列个子窗口，选中第2个
pzmap(num,den);           %画零极点
rlocus(num,den);          %画根轨迹

subplot(2,3,4);           %图形窗口分割为2行3列个子窗口，选中第4个
step(G);grid;             %画阶跃响应

subplot(2,3,5);           %图形窗口分割为2行3列个子窗口，选中第5个
nyquist(G);               %画奈奎施特曲线


subplot(2,3,3);
axis([0,300,0,200]); % 建立坐标系，axis([XMIN XMAX YMIN YMAX])
hold on
HandleAxes2=get(gcf,'CurrentAxes');                 %图形的当前坐标轴的句柄
%img1=imread('RLCCircuitParllel.PNG');               %读取图像文件
%imshow(img1);                                       %显示图片
%h2=axes('Position',[0,0,1,1]);
title('RLC并联系统');
text(2,185,'Vin','fontsize',12);                  %标出"Vin"
text(255,185,'Vout','fontsize',12);               %标出"Vout"

text(5,170,'o','fontsize',12);                   %画出端点o1
text(5,71,'o','fontsize',12);                    %画出端点o2
text(285,170,'o','fontsize',12);                 %画出端点o3
text(285,71,'o','fontsize',12);                  %画出端点o4

line([14,60],[168,168],'color','k','linewidth',2);%上第一根横线
line(60,168,'Marker','o','markersize',15,'MarkerFaceColor',[0.8,0.8,0.8],'MarkerEdgeColor','k','linewidth',2); %画电感
line(84,168,'Marker','o','markersize',15,'MarkerFaceColor',[0.8,0.8,0.8],'MarkerEdgeColor','k','linewidth',2); %画电感
line(108,168,'Marker','o','markersize',15,'MarkerFaceColor',[0.8,0.8,0.8],'MarkerEdgeColor','k','linewidth',2);%画电感
line([46,124],[162,162],'color',[0.8,0.8,0.8],'linewidth',8); %遮盖住一半圆，视觉上则为电感
line([120,285],[168,168],'color','k','linewidth',2);%上第二根横线
line([14,285],[70,70],'color','k','linewidth',2);   %下横线

line([200,200],[168,140],'color','k','linewidth',2);   %中第一根竖线
line([200,200],[100,70],'color','k','linewidth',2);   %中第二根竖线
line([160,240],[140,140],'color','k','linewidth',2);   %中第一根横线
line([160,240],[100,100],'color','k','linewidth',2);   %中第二根横线

%画电阻
line([150,150],[135,105],'color','k','linewidth',2);   %电阻第一根竖线
line([170,170],[135,105],'color','k','linewidth',2);   %电阻第二根竖线
line([150,170],[135,135],'color','k','linewidth',2);   %电阻第一根横线
line([150,170],[105,105],'color','k','linewidth',2);   %电阻第二根横线
line([160,160],[140,135],'color','k','linewidth',2);   %电阻第三根竖线
line([160,160],[105,100],'color','k','linewidth',2);   %电阻第四根竖线

%画电容
line([240,240],[140,130],'color','k','linewidth',2);   %电容第一根竖线
line([240,240],[110,100],'color','k','linewidth',2);   %电容第二根竖线
line([225,255],[130,130],'color','k','linewidth',2);   %电容第一根横线
line([225,255],[110,110],'color','k','linewidth',2);   %电容第二根横线

%标记R、L、C
text(80,150,'L','backgroundcolor','y','fontsize',12);  %标记R
text(120,120,'R','backgroundcolor','y','fontsize',12);  %标记R
text(260,120,'C','backgroundcolor','y','fontsize',12);  %标记R

%写传递函数
text(150,55,'1/LC','fontsize',12);
text(50,40,'G(s)= --------------------------','fontsize',12);
text(110,20,'S*S+S/RC+1/LC','fontsize',12);
hold on                                           %保持图形在固定的位置显示
axis ('off');


subplot(2,3,6);
axis([0,300,0,200]); % 建立坐标系，axis([XMIN XMAX YMIN YMAX])
hold on 
text(2,185,'R','backgroundcolor','y','fontsize',10);
text(2,125,'L','backgroundcolor','y','fontsize',10);
text(2,68,'C','backgroundcolor','y','fontsize',10);

text(40,205,'按钮','backgroundcolor','y','fontsize',10);
text(40,145,'按钮','backgroundcolor','y','fontsize',10);
text(40,88,'按钮','backgroundcolor','y','fontsize',10);

text(210,205,'数值','backgroundcolor','y','fontsize',10);
text(210,145,'数值','backgroundcolor','y','fontsize',10);
text(210,88,'数值','backgroundcolor','y','fontsize',10);

word1=text(110,205,'1.5','backgroundcolor','g','fontsize',12);  %显示电阻值
word2=text(110,145,'2','backgroundcolor','g','fontsize',12);    %显示电感值
word3=text(110,88,'2','backgroundcolor','g','fontsize',12);     %显示电容值

L1=line([150,300],[185,185],'color','w','linewidth',8);             %电阻线
whell1=line(195,186,'color','b','Marker','.','markersize',26);   %画圆点
HandleWhell1=get(gcf,'CurrentAxes');                 %图形的当前坐标轴的句柄
line([150,300],[125,125],'color','w','linewidth',8);             %电感线
whell2=line(200,126,'color','b','Marker','.','markersize',26);   %画圆点
line([150,300],[65,65],'color','w','linewidth',8);               %电容线
whell3=line(200,66,'color','b','Marker','.','markersize',26);    %画圆点

LX=get(L1,'xdata');
WhellY1=get(whell1,'ydata');
WhellY2=get(whell2,'ydata');
WhellY3=get(whell3,'ydata');

hold on                                    %保持字符串在固定的位置显示
axis('off');

%画电阻按钮
axes('Position',[0.71,0.4,0.05,0.05]);
HandleAxes3=get(gcf,'CurrentAxes');         %图形的当前坐标轴的句柄
axis([0,300,0,200]); % 建立坐标系，axis([XMIN XMAX YMIN YMAX])
hold on 
%  创建  一个坐标轴
%起点的左边下角为整个主窗口的0.71处,下边为0.4处
%宽占0.05,高占0.05。一个小框就出来了
fill([0,300,300,0],[0,0,200,200],[0.7,0.7,0.7]);%背景填充，灰色
line([0,50],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %斜线1
line([0,50],[200,150],'color',[0.4,0.4,0.4],'linewidth',2); %斜线2
line([300,250],[200,150],'color',[0.5,0.5,0.5],'linewidth',2); %斜线3
line([300,250],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %斜线4
line([50,250],[100,100],'color',[0.5,0.5,0.5],'linewidth',15); %矩形
axis('off');

%画电感按钮
axes('Position',[0.71,0.3,0.05,0.05]);
HandleAxes4=get(gcf,'CurrentAxes');         %图形的当前坐标轴的句柄
axis([0,300,0,200]); % 建立坐标系，axis([XMIN XMAX YMIN YMAX])
hold on 
%  创建  一个坐标轴
%起点的左边下角为整个主窗口的0.71处,下边为0.4处
%宽占0.05,高占0.05。一个小框就出来了
fill([0,300,300,0],[0,0,200,200],[0.7,0.7,0.7]);%背景填充，灰色
line([0,50],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %斜线1
line([0,50],[200,150],'color',[0.4,0.4,0.4],'linewidth',2); %斜线2
line([300,250],[200,150],'color',[0.5,0.5,0.5],'linewidth',2); %斜线3
line([300,250],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %斜线4
line([50,250],[100,100],'color',[0.5,0.5,0.5],'linewidth',15); %矩形
axis('off');

%画电容按钮
axes('Position',[0.71,0.2,0.05,0.05]);
%  创建  一个坐标轴
%起点的左边下角为整个主窗口的0.71处,下边为0.2处
%宽占0.05,高占0.05。一个小框就出来了
HandleAxes5=get(gcf,'CurrentAxes');         %图形的当前坐标轴的句柄
axis([0,300,0,200]); % 建立坐标系，axis([XMIN XMAX YMIN YMAX])
hold on 
%  创建  一个坐标轴
%起点的左边下角为整个主窗口的0.71处,下边为0.4处
%宽占0.05,高占0.05。一个小框就出来了
fill([0,300,300,0],[0,0,200,200],[0.7,0.7,0.7]);%背景填充，灰色
line([0,50],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %斜线1
line([0,50],[200,150],'color',[0.4,0.4,0.4],'linewidth',2); %斜线2
line([300,250],[200,150],'color',[0.5,0.5,0.5],'linewidth',2); %斜线3
line([300,250],[0,50],'color',[0.5,0.5,0.5],'linewidth',2); %斜线4
line([50,250],[100,100],'color',[0.5,0.5,0.5],'linewidth',15); %矩形
axis('off');



set(gcf,'windowButtonDownFcn','MouseClickFcn');
%如果点击了界面则调用MouseClickFcn（）函数，类似于开中断


%------------    main.m        --------------------
%------------     main.m    结束   ----------------

%------------    建立.m文件，并命名为MouseClickFcn.m  --
%------------    MouseClickFcn.m    开始    ------------



end
end


%------------      Refresh.m-------------------
%------------     Refresh.m    结束------------